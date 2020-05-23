//
//  User.swift
//  Uber
//
//  Created by Ammar Elshamy on 5/20/20.
//  Copyright © 2020 Ammar Elshamy. All rights reserved.
//

import Foundation
import CoreLocation

enum AccountType: Int {
    case rider
    case driver
}

struct User {
    
    let uid: String
    let fullName: String
    let email: String
    let accountType: AccountType
    var location: CLLocation?
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.fullName = dictionary["fullName"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.accountType = AccountType(rawValue: dictionary["accountType"] as! Int)!
    }
}
