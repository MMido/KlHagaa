//
//  user.swift
//  KlHagaa
//
//  Created by mhr on 12/7/18.
//  Copyright © 2018 mido salem. All rights reserved.
//

import Foundation


class User {
    
    var id:String
    var name:String
    var email:String
    var password:String
    var phone:String
    var address:String
    var image:String
    var device_id:String
    var user_hash:String
    var countryname:String
    
    init(id:String,name:String,email:String,password:String,phone:String,address:String,image:String,device_id:String,user_hash:String,countryname:String) {
        
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.phone = phone
        self.address = address
        self.image = image
        self.device_id = device_id
        self.user_hash = user_hash
        self.countryname = countryname
        
   }
    
}

