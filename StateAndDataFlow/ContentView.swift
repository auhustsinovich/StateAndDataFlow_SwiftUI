//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 20.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(StorageManager.shared.savedName)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 90)
            
            Spacer()
            
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            
            Spacer()
            Spacer()
            
            ButtonView(title: "LogOut", color: .blue, action: logOuted)
                .padding()
            
        }
    }
    private func logOuted() {
        StorageManager.shared.savedBool.toggle()
        StorageManager.shared.clearUser(userManager: user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

