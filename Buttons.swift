//
//  Buttons.swift
//  Quiz
//
//  Created by Zeeshan Ashraf on 26/11/2018.
//  Copyright © 2018 Zeeshan Ashraf. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class Button: UIButton {
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 10 {
        didSet {
            layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var cornerRadiusByHeight: Bool = false {
        didSet {
            layer.cornerRadius = self.frame.size.height/2
        }
    }
    
    @IBInspectable var roundButton: Bool = false {
        didSet {
            layer.cornerRadius = self.frame.size.width / 2
            self.clipsToBounds = true
            self.layer.masksToBounds = true
        }
    }
    
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        
        didSet {
            
            layer.shadowColor = shadowColor.cgColor
            layer.masksToBounds = false
        }
    }
    
    
    @IBInspectable var shadowOpacity: CGFloat = 5.0 {
        
        didSet {
            
            layer.shadowOpacity = Float(shadowOpacity.hashValue)
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 10.0 {
        
        didSet {
            
            layer.shadowOpacity = Float(shadowRadius.hashValue)
            layer.masksToBounds = false
        }
        
    }
    
    @IBInspectable var backGroundColor: UIColor = UIColor.clear{
        didSet {
            
            layer.backgroundColor = backGroundColor.cgColor
        }
    }
    
    @IBInspectable var shadowOffsetwidth:Int = 0{
        didSet{
            layer.shadowOffset.width = CGFloat(shadowOffsetwidth)
        }
    }
    
    @IBInspectable var shadowoffsetheight:Int = 3{
        didSet{
            layer.shadowOffset.height = CGFloat(shadowoffsetheight)
        }
    }
}
