//
//  ViewController.swift
//  shakeAndSwipe
//
//  Created by ben on 11/12/2014.
//  Copyright (c) 2014 Ben Chamla. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if event.subtype == UIEventSubtype.MotionShake{
            var files = ["bean", "belch", "giggle", "pew", "snore", "static", "uuu"]
            
            var randomNumber = Int(arc4random_uniform(UInt32(files.count)))
            
            var fileLocation = NSString(string:NSBundle.mainBundle().pathForResource((files[randomNumber]), ofType: "mp3")!)
            var error:NSError? = nil
            
            player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
            
            player.play()
        }
        
    }
    
 
        
    

}

