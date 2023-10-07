//
//  LaunchScreenViewModel.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import Stinsen

final class LaunchScreenViewModel: ObservableObject {
    
    @Published private(set) var logoTitle = "Naiyl Baikuchukov"
    
    @Published var isLoading = true
    
    // This is mock loading
    private var counter = 2 {
        didSet {
            if counter == 0 { stopCounter() }
        }
    }
    private var timer = Timer()
        
    init() {
        startCounter()
    }
    
    func startCounter() {
        self.timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true
        ) { _ in
            self.counter -= 1
        }
    }
    
    func stopCounter() {
        isLoading = false
        timer.invalidate()
    }
    
}

