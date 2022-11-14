//
//  ViewData.swift
//  StopWatch.2.0.
//
//  Created by Daniil Akmatov on 14/11/22.
//

import Foundation
import UIKit

enum ViewData {
    case initial
    case loadin(Data)
    case succes(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let discription: String?
        let phone: String?
    }
}
