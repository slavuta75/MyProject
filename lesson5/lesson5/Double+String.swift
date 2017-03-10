//
//  Double+String.swift
//  lesson5
//
//  Created by Slava Utyuzh on 08.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

//class Double_String: NSObject {
    extension Double{
        func toString() -> String{
            return String(format:"%.2f", self)
        }
    }

//}
