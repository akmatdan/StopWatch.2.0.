//
//  ViewData.swift
//  StopWatch.2.0.
//
//  Created by Daniil Akmatov on 14/11/22.
//

import UIKit

enum ViewData {
    case initial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let discription: String?
        let phone: String?
    }
}

enum StopWatchData {
    struct Data {
        var timer: Timer = Timer()
        var count: Int = 0
        var timerCounting: Bool = false
        
        var hours: Int = 0
        var minutes: Int = 0
        var seconds: Int = 0
        var stopWatch: Bool = true
        var isActiveStop: Bool = false
        var isActivePlay: Bool = false
        var isActiveReset: Bool = false
    }
}
