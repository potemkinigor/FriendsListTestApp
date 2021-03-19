//
//  MostViewedPresenter.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import Foundation

protocol MostViewedOutputProtocol {
    func showFriends (friends: [[Friend]], sectionsName: [String])
    func updateFavorites (favoriteFriends: [Friend])
}

protocol MostViewedInputProtocol {
    func getFullListOfFriends ()
    func getFavoriteFriends ()
}

class MostViewedInputProtocolImplementation: MostViewedInputProtocol {
    
    var view: MostViewedOutputProtocol!
    var listOfFriends: Friends!
    
    required init (view: MostViewedOutputProtocol, friends: Friends) {
        self.view = view
        self.listOfFriends = friends
    }
    
    func getFullListOfFriends() {
        let result = Friends.shared.getFullListOfFriends()
        
        let friendsToShow = result.0
        let sectionsName = result.1
        
        view.showFriends(friends: friendsToShow, sectionsName: sectionsName)
    }
    
    func getFavoriteFriends() {
        let result = Friends.shared.getFavoriteFriends()
        
        view.updateFavorites(favoriteFriends: result)
        
    }
    
}


