//
//  Box.swift
//  ShopManagment
//
//  Created by Mac on 02/10/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation


class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    var value: T {
        // property observer
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
