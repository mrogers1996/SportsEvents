//
//  Sports.swift
//  SportsEvents
//
//  Created by Mandy Rogers on 4/5/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

enum Sport: String {
    case basketball
    case baseball
    case football
    case hockey
    case soccer
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
