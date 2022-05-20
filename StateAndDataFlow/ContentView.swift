//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 20.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 90)
            Spacer()
            StartButtonView(timer: timer)
            Spacer()
            Spacer()
            LogOutButtonView()
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct StartButtonView: View {
    
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4)
        }
    }
}

struct LogOutButtonView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button(action: logOuted) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke(.black,lineWidth: 4)
        }
    }
    
    private func logOuted() {
        user.isRegistered.toggle()
    }
}
