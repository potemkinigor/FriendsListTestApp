//
//  MostViewedCheckboxView.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class MostViewedCheckboxView: UIControl {
    
    var isChecked: Bool!
    
    var friend: Friend!
    
    var heartBezierPath = UIBezierPath()
    var shapeLayer = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.setStrokeColor(UIColor.blue.cgColor)
        
        let sideOne = rect.width * 0.4
        let sideTwo = rect.height * 0.3
        let arcRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2

        heartBezierPath.addArc(withCenter: CGPoint(x: rect.width * 0.3, y: rect.height * 0.35), radius: arcRadius, startAngle: 135.degreesToRadians, endAngle: 315.degreesToRadians, clockwise: true)
        heartBezierPath.addLine(to: CGPoint(x: rect.width/2, y: rect.height * 0.2))
        heartBezierPath.addArc(withCenter: CGPoint(x: rect.width * 0.7, y: rect.height * 0.35), radius: arcRadius, startAngle: 225.degreesToRadians, endAngle: 45.degreesToRadians, clockwise: true)
        heartBezierPath.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.95))
        
        heartBezierPath.close()
        heartBezierPath.stroke()
        
        shapeLayer.path = heartBezierPath.cgPath
        
        self.layer.mask = shapeLayer
        self.layer.masksToBounds = true
        
        if self.isChecked {
            UIColor.blue.set()
        } else {
            UIColor.white.set()
        }
        
        heartBezierPath.fill()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isChecked {
    
            let data = Friends.shared.listOfFriends
            
            data.forEach { dataFriend in
                if dataFriend.phoneNumber == self.friend.phoneNumber {
                    dataFriend.isFavorite = false
                }
            }
            
            self.isChecked = false
            setNeedsDisplay()
            
            let sharedInfo: [String : Friend] = ["delete" : friend]
            
            NotificationCenter.default.post(name: Notification.Name("LikePushed"), object: nil, userInfo: sharedInfo)
            
        } else {
            
            let data = Friends.shared.listOfFriends
            
            data.forEach { dataFriend in
                if dataFriend.phoneNumber == self.friend.phoneNumber {
                    dataFriend.isFavorite = true
                }
            }
            
            self.isChecked = true
            setNeedsDisplay()
            
            let sharedInfo: [String : Friend] = ["add" : friend]
            
            NotificationCenter.default.post(name: Notification.Name("LikePushed"), object: nil, userInfo: sharedInfo)
        }
    }
    
    
    
}
