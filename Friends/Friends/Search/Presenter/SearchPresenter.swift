//
//  SearchPresenter.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import Foundation

protocol SearchViewOutputProtocol {
    func showFriends (friends: [[Friend]], sectionsName: [String])
}


protocol SearchViewInputProtocol {
    func getFullListOfFriends ()
    func sortFriends(friendList: [Friend]) -> [Friend]
    func getFilteredListOfFriends (searchText: String)
}

class SearchViewInputProtocolImplementation: SearchViewInputProtocol {
    var view: SearchViewOutputProtocol!
    var listOfFriends: Friends!
    
    required init (view: SearchViewOutputProtocol, friends: Friends) {
        self.view = view
        self.listOfFriends = friends
    }
    
    func getFullListOfFriends() {
                
        let result = Friends.shared.getFullListOfFriends()
        
        let friendsToShow = result.0
        let sectionsName = result.1
        
        view.showFriends(friends: friendsToShow, sectionsName: sectionsName)
        
    }
    
    func getFilteredListOfFriends(searchText: String) {
        
        let result = Friends.shared.getFilteredListOfFriends(searchText: searchText)
        
        let friendsToShow = result.0
        let sectionsName = result.1
        
        if friendsToShow != nil && sectionsName != nil {
            view.showFriends(friends: friendsToShow!, sectionsName: sectionsName!)
        }

        
    }
    
    func sortFriends(friendList: [Friend]) -> [Friend] {
        let newArray = friendList.sorted(by: {$0.surname < $1.surname})

        return newArray
        
    }
    
}
