//
//  SearchAssembley.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import Foundation
import UIKit

class SearchAssebley: NSObject {
    
    @IBOutlet var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        guard let view = viewController as? SearchViewController else { return }
        let friends = Friends.shared
        let presenter = SearchViewInputProtocolImplementation(view: view, friends: friends)
        
        view.presenterProtocol = presenter
        
    }
    
}
