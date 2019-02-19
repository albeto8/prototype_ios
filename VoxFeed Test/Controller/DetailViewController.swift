//
//  DetailViewController.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var messageViewModel: MessageViewModel?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.alpha = 0.0
        
        let imageCompletionClosure = { ( imageData: NSData ) -> Void in
            
            DispatchQueue.main.async {
                
                // Animate the appearance of the image.
                UIView.animate(withDuration: 1.0, animations: {
                    self.imageView.alpha = 1.0
                    self.imageView?.image = UIImage(data: imageData as Data)
                    self.view.setNeedsDisplay()
                })
                // image has finished downloading
                //self.activitySpinner.stopAnimating()
                
            } // end DispatchQueue.main.async
            
        } // end let imageCompletionClosure...
        
        // image is about to start downloading in background.
        //activitySpinner.startAnimating()
        
        // Update the UI with info from the Message object
        titleLabel.text = messageViewModel?.id
        
        // Start image downloading in background.
        messageViewModel?.download(completionHanlder: imageCompletionClosure)
    }

}
