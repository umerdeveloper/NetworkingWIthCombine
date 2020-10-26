//
//  ContentView.swift
//  NetworkingWithCombineAndMVVM
//
//  Created by Umer Khan on 29/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userVM = UserViewModel()
    
    var body: some View {
        
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Text("UserID: \(userVM.user?.userId ?? 1)")
                .padding()
                .font(.caption)
               
            Spacer()
            Text("Title: \(userVM.user?.title ?? "Umer Khan")")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.red)
            
            
            
        }
        .onAppear { self.userVM.callApi() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
