//
//  Networking.swift
//  RW-Frameworks
//
//  Created by Yinan Qiu on 6/27/20.
//

import Foundation

extension RW_Frameworks {
    public class Networking {
        public class Manager {
            public init() {}
            
            private let session = URLSession.shared
            
            public func loadData(from url: URL, completionHandler: @escaping (NetworkResult<Data>) -> Void) {
                let task = session.dataTask(with: url) { data, response, error in
                    let result = data.map(NetworkResult<Data>.success) ?? .failure(error)
                    completionHandler(result)
                }
                task.resume()
            }
        }
        
        public enum NetworkResult<Value> {
            case success(Value)
            case failure(Error?)
        }
    }
}
