//
//  SearchViewController.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFriendsTableView: UITableView!
    @IBOutlet weak var searchSearchbar: UISearchBar!
    
    var presenterProtocol: SearchViewInputProtocol!
    
    var friendsToShow: [[Friend]] = [[]]
    var sectionsName: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.searchFriendsTableView.delegate = self
        self.searchFriendsTableView.dataSource = self
        
        self.searchSearchbar.delegate = self
    
        self.searchFriendsTableView.register(UINib(nibName: "FriendsSearchTableViewCell", bundle: nil), forCellReuseIdentifier: "searchFriendsCellReusabaleIdentifier")
        self.searchFriendsTableView.register(UINib(nibName: "SearchUITableViewHeaderFooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "searchFriendsHeaderReusabaleIdentifier")
        
        self.presenterProtocol.getFullListOfFriends()
    }
    
}

//MARK: - Presenter protocol

extension SearchViewController: SearchViewOutputProtocol {
    func showFriends(friends: [[Friend]], sectionsName: [String]) {
        self.friendsToShow = friends
        self.sectionsName = sectionsName
    }

}

//MARK: - Table view data source and delegate

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return friendsToShow.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsToShow[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchFriendsCellReusabaleIdentifier", for: indexPath) as! FriendsSearchTableViewCell
        
        cell.friendAvatarImageView.image = self.friendsToShow[indexPath.section][indexPath.row].avatar
        
        cell.friendSurnameNameFathersnameLabel.text = self.friendsToShow[indexPath.section][indexPath.row].surname + " " + self.friendsToShow[indexPath.section][indexPath.row].name + "" + self.friendsToShow[indexPath.section][indexPath.row].fathersName
        
        cell.friendPhoneNumberLabel.text = self.friendsToShow[indexPath.section][indexPath.row].phoneNumber
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "searchFriendsHeaderReusabaleIdentifier") as! SearchUITableViewHeaderFooterView
        
        let surnameChar = friendsToShow[section][0].surname.first
        
        view.searchHeaderNameLabel.text = String(surnameChar!)
        
        view.layer.backgroundColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        
        return view
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

//MARK: - Seacrh bar delegate

extension SearchViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        seacrhFriends(searchBar)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        seacrhFriends(searchBar)
    }
    
    private func seacrhFriends (_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else { return }
        
        if searchText != "" {
            presenterProtocol.getFilteredListOfFriends(searchText: searchText)
        } else {
            presenterProtocol.getFullListOfFriends()
        }
        
        self.searchFriendsTableView.reloadData()
    }
    
    internal func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        presenterProtocol.getFullListOfFriends()
        searchBar.showsCancelButton = false
        searchBar.text = ""
        searchBar.resignFirstResponder()
        self.searchFriendsTableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = true
    }
}



