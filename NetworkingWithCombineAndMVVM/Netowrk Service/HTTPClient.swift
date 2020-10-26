//
//  HTTPClient.swift
//  NetworkingWithCombineAndMVVM
//
//  Created by Umer Khan on 29/09/2020.
//

import Combine
import Foundation

class HTTPClient {
    
    func callApi() -> AnyPublisher<User, Error> {
        
        return URLSession.shared.dataTaskPublisher(for: URL(string: Constants.urlString)!)
            .map { $0.data }
            .decode(type: User.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
