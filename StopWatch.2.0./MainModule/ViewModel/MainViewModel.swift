//
//  MainViewModel.swift
//  StopWatch.2.0.
//
//  Created by Daniil Akmatov on 14/11/22.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData)->())? { get set }
    func startFetch()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    public func startFetch() {
        
    }
}
