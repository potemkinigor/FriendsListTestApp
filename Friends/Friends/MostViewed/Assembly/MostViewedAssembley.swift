//
//  MostViewedAssembley.swift
//  Friends
//
//  Created by User on 19.03.2021.
//

import Foundation
import UIKit

class MostViewedAssebley: NSObject {
    
    @IBOutlet var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        guard let view = viewController as? MostViewedViewController else { return }
        let friends = Friends.shared
        
        let presenter = MostViewedInputProtocolImplementation(view: view, friends: friends)
        
        view.presenterProtocol = presenter
        
    }
    
}
