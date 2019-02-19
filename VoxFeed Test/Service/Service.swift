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
    
    func fetchCourses(completion: @escaping ([MessageDataModel]?) -> Void) {
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
            
            guard let value = response.result.value as? [[String: Any]] else {
                    print("Malformed data received from fetchCourses service")
                    completion(nil)
                    return
                }
            var messages = [MessageDataModel]()
            for item in value {
                let message = MessageDataModel(messageItem: item)
                messages.append(message)
            }
            print("Messages: \(String(describing: messages))")
            completion(messages)
        }
    }
}
