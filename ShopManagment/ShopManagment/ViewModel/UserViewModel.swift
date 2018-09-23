//
//  UserViewModel.swift
//  ShopManagment
//
//  Created by Mac on 23/09/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

class UserViewModel {
    fileprivate var user = User()
    
}

//MARK: Getter
extension UserViewModel {
    
    var userName: String? {
        return user.name
    }
    
    var userPassword: String? {
        return user.password
    }

}

//MARK: Setter
extension UserViewModel {
    func updatePassword(password: String) {
        user.password = password
    }
    
    func updateName(name: String) {
        user.name = name
    }

}

//MARK: logic
extension UserViewModel {
    func authenticate() -> Bool {
        if userName == usersName && userPassword == password {
            print("Login Successfully")
            return true
        }
        else if userName != usersName {
            print("wrong user name")
            return false
        }
        else {
            print("wrong password")
            return false
        }
    }
}
