//
//  MainViewModel.swift
//  StopWatch.2.0.
//
//  Created by Daniil Akmatov on 14/11/22.
//

import UIKit

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData)->())? { get set }
    func startFetch()
    func error()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    public var stopWatchData: ((StopWatchData) -> ())?
    
    init() {
        updateViewData?(.initial)
        stopWatchData
    }
    
    public func startFetch() {
        updateViewData?(.success(ViewData.Data(icon: "checkmark.square.fill", title: "Success", discription: "Good", phone: nil)))
    }
    
    public func error() {
        updateViewData?(.failure(ViewData.Data(icon: "xmark.square.fill", title: "Failure", discription: "Bad", phone: nil)))
    }

    public func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    public func makeTimeString(hours: Int, minutes: Int, seconds: Int) -> String {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
}
