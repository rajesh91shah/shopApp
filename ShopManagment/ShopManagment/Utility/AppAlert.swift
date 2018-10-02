//
//  AppAlert.swift
//  ShopManagment
//
//  Created by Mac on 30/09/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation
import UIKit

class AppAlert {
    

    class func showAlert(title: String, message: String, in vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}
