//
//  DeleveryInfo.swift
//  DeleveryApplication
//
//  Created by LEO YANG on 2021/09/28.
//

import UIKit

struct DeleveryInfo {    
    let name: String
    
    var image: UIImage? {
        return UIImage(named: "\(name).png")
    }
    
    init(name: String) {
        self.name = name
    }
}
