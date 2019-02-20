//
//  Service.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation
import Alamofire

let urlString = "https://api.voxfeed.com/public/promoted_messages"

class Service: NSObject {
    static let shared = Service()
    
    func fetchCourses(completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        AF.request(url, method: .get).validate().responseJSON { response in
                guard response.result.isSuccess else {
                    print("Error while fetching \(String(describing: response.result.error))")
                        completion(nil)
                    return
                }
            
            guard let data = response.data else {
                print("Malformed data received from fetchCourses service")
                completion(nil)
                return
            }
            completion(data)
        }
    }
}
