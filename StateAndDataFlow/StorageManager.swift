//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 21.05.22.
//

import SwiftUI


class StorageManager {
    
    static let shared = StorageManager()
    
    @AppStorage("NAME_KEY") var savedName = ""
    @AppStorage("BOOL_KEY") var savedBool = false
    
    private init() {}
    
    func save(user:User) {
        savedName = user.name
        savedBool = user.isRegistered
    }
    
    func load() {
       
    }
    
    func clear(userManager:UserManager) {
        userManager.user.name = ""
        userManager.user.isRegistered = false
        
    }
}

