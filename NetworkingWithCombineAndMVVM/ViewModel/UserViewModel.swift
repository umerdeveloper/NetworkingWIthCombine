//
//  UserViewModel.swift
//  NetworkingWithCombineAndMVVM
//
//  Created by Umer Khan on 29/09/2020.
//

import Combine

class UserViewModel: ObservableObject {
        
    @Published var user: User?
    
    private let httpClient = HTTPClient()
    
    var anyCancellable: AnyCancellable?
    
    func callApi() {
        
        anyCancellable = httpClient.callApi()
            .sink(receiveCompletion: { _ in
                
            }, receiveValue: { value in
                self.user = value
                print(value)
            })
    }
}
