//
//  item.swift
//  Realm DataBase
//
//  Created by Mac on 26/11/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation
import RealmSwift

class item: Object {
    @objc dynamic var name = ""
    @objc dynamic var address = ""
    @objc dynamic var dateOfBirth = ""
    @objc dynamic var profileImg : Data? = nil 
    
}
extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            
            // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            
        }
    }
    
    
}
