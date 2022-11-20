//
//  LocalState.swift
//  Bankey
//
//  Created by Agung Perda Gumelar on 20/11/22.
//

import Foundation

public class LocalState {
    
    private enum Keys: String {
        case hasOnBoard
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnBoard.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnBoard.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
