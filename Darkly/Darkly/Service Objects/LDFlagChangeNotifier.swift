//
//  LDFlagChangeNotifier.swift
//  Darkly
//
//  Created by Mark Pokorny on 8/18/17. +JMJ
//  Copyright © 2017 LaunchDarkly. All rights reserved.
//

import Foundation

//TODO: Change this to add a flags unchanged closure that gets called when notifyObservers is called with no flags changed. Have the LDClient set the closure when it creates the change notifier, or when the closure is set by the client app. That contains the change notifier's responsibility better
//sourcery: AutoMockable
protocol FlagChangeNotifying {
    func addObserver(_ observer: FlagObserver)
    //sourcery: NoMock
    func removeObserver(_ key: LDFlagKey, owner: LDFlagChangeOwner)
    func removeObserver(_ keys: [LDFlagKey], owner: LDFlagChangeOwner)
    //sourcery: NoMock
    func removeObserver(owner: LDFlagChangeOwner)
    func notifyObservers(changedFlags: [LDFlagKey], user: LDUser, oldFlags: [LDFlagKey: Any])
}

class LDFlagChangeNotifier: FlagChangeNotifying {
    private var observers = [FlagObserver]()
    
    func addObserver(_ observer: FlagObserver) {
        
    }
    
    ///Removes any change handling closures for flag.key from owner
    func removeObserver(_ key: LDFlagKey, owner: LDFlagChangeOwner) {
        
    }
    
    ///Removes any change handling closures for flag keys from owner
    func removeObserver(_ keys: [LDFlagKey], owner: LDFlagChangeOwner) {
        
    }
    
    ///Removes all change handling closures from owner
    func removeObserver(owner: LDFlagChangeOwner) {
        
    }
    
    func notifyObservers(changedFlags: [LDFlagKey], user: LDUser, oldFlags: [LDFlagKey: Any]) {
        
    }
    
    private func removeOldObservers() {
        
    }
}
