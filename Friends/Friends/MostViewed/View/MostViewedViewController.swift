//
//  MostViewedViewController.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class MostViewedViewController: UIViewController {

    @IBOutlet weak var mostViewedFavotitesCollectionView: UICollectionView!
    @IBOutlet weak var mostViewedTableView: UITableView!
    
    var friendsToShow: [[Friend]] = [[]]
    var sectionsName: [String] = []
    var favoriteFriends: [Friend] = []
    
    var presenterProtocol: MostViewedInputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mostViewedTableView.register(UINib(nibName: "MostViewedTableViewCell", bundle: nil), forCellReuseIdentifier: "mostViewedCellReuseIdentifier")
        self.mostViewedTableView.register(UINib(nibName: "MostViewedTableViewHeaderFooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "MostViewedUITableViewHeaderFooterView")
        self.mostViewedFavotitesCollectionView.register(UINib(nibName: "MostViewedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mostViewedFriendAvatarReuseIdentifier")
        
        self.mostViewedTableView.delegate = self
        self.mostViewedTableView.dataSource = self
        
        self.mostViewedFavotitesCollectionView.delegate = self
        self.mostViewedFavotitesCollectionView.dataSource = self
        
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(updateFavoritesCollection(notification: )), name: NSNotification.Name("LikePushed"), object: nil)
        
        presenterProtocol.getFullListOfFriends()
        presenterProtocol.getFavoriteFriends()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("LikePushed"), object: nil)
    }
    
    //MARK: - private functions

    @objc func updateFavoritesCollection (notification: Notification) {
        
        if notification.userInfo!["add"] != nil {
            favoriteFriends.insert(notification.userInfo!["add"] as! Friend, at: 0)
        } else {
            
            let friend = notification.userInfo!["delete"] as! Friend
            
            for index in 0..<favoriteFriends.count - 1 {
                if favoriteFriends[index].phoneNumber == friend.phoneNumber {
                    favoriteFriends.remove(at: index)
                }
            }
        }
        
        
        
        self.mostViewedFavotitesCollectionView.reloadData()
        
    }
    
}

//MARK: - Table view delegate and data source

extension MostViewedViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return friendsToShow.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsToShow[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mostViewedCellReuseIdentifier", for: indexPath) as! MostViewedTableViewCell
        
        cell.friendAvatarImageView.image = self.friendsToShow[indexPath.section][indexPath.row].avatar
        
        cell.nameSurnameFathersNameLabel.text = self.friendsToShow[indexPath.section][indexPath.row].surname + " " + self.friendsToShow[indexPath.section][indexPath.row].name + "" + self.friendsToShow[indexPath.section][indexPath.row].fathersName
        
        cell.phoneNumberLabel.text = self.friendsToShow[indexPath.section][indexPath.row].phoneNumber
        
        cell.favoriteCheckBoxView.isChecked = false
        
        if self.friendsToShow[indexPath.section][indexPath.row].isFavorite {
            cell.favoriteCheckBoxView.isChecked = self.friendsToShow[indexPath.section][indexPath.row].isFavorite
        }
        
        cell.favoriteCheckBoxView.friend = self.friendsToShow[indexPath.section][indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "MostViewedUITableViewHeaderFooterView") as! MostViewedTableViewHeaderFooterView
        
        let firstChar = self.friendsToShow[section][0].surname.first
        
        view.surnameFirstLetterLabel.text = String(firstChar!)
        
        return view
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

//MARK: - Collection view data source and delegate

extension MostViewedViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteFriends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mostViewedFriendAvatarReuseIdentifier", for: indexPath) as! MostViewedCollectionViewCell
        
        cell.favoriteFriendAvatarImageView.image = self.favoriteFriends[indexPath.row].avatar
        cell.favoriteFriendName.text = self.favoriteFriends[indexPath.row].name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 58)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}


//MARK: - Presenter protocol

extension MostViewedViewController: MostViewedOutputProtocol {
    func showFriends(friends: [[Friend]], sectionsName: [String]) {
        self.friendsToShow = friends
        self.sectionsName = sectionsName
        
        self.mostViewedTableView.reloadData()
    }
    
    func updateFavorites(favoriteFriends: [Friend]) {
        self.favoriteFriends = favoriteFriends
        
        self.mostViewedFavotitesCollectionView.reloadData()
    }
    
    
}
