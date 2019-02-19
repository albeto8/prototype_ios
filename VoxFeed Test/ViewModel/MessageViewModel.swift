//
//  MessageViewModel.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation
import UIKit

public typealias ImageDownloadCompletionClosure = (_ imageData: NSData ) -> Void

var messageViewModel: [MessageViewModel] =
    [MessageViewModel(messageDataModel: message1),
     MessageViewModel(messageDataModel: message2)]

class MessageViewModel {
    
    private let messageDataModel: MessageDataModel
    private var imageURL: URL
    
    init(messageDataModel: MessageDataModel) {
        self.messageDataModel = messageDataModel
        self.imageURL = URL(string: messageDataModel.post.image)!
    }
    
    public var id: String {
        return "id: " + messageDataModel.id
    }
    
    public var socialNetwork: String {
        return "socialNetwork: " + messageDataModel.socialNetwork
    }
    
    public var userName: String {
        return messageDataModel.user.userName
    }
    
    public var postText: String {
        return messageDataModel.post.text
    }
    
    public var dateFormatted: String {
        return messageDataModel.date
    }
    
    func download(completionHanlder: @escaping ImageDownloadCompletionClosure)
    {
        
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        let request = URLRequest(url:imageURL)
        
        let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
            
            if let tempLocalUrl = tempLocalUrl, error == nil {
                if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                    let rawImageData = NSData(contentsOf: tempLocalUrl)
                    completionHanlder(rawImageData!)
                    print("Successfully downloaded. Status code: \(statusCode)")
                }
            } else {
                print("Error took place while downloading a file. Error description: \(String(describing: error?.localizedDescription))")
            }
        } // end let task
        
        task.resume()
        
    } // end func download
    
}
