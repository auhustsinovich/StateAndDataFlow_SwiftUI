//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 21.05.22.
//

import SwiftUI

class StorageManager {
    
    static let shared = StorageManager()
    
    @AppStorage("nameKey") var savedName = ""
    @AppStorage("boolKey") var savedBool = false
    
    private init() {}
    
    func saveUser(user:User) {
        savedName = user.name
        savedBool = user.isRegistered
    }
    
    func clearUser(userManager:UserManager) {
        userManager.user.name = ""
        userManager.user.isRegistered = false
    }
}

