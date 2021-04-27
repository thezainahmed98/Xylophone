//
//  ViewController.swift
//  Xylophone
//
//  Created by Zain Ahmed on 2/24/2021.
//  Copyright © Zain Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let buttonPressed = sender.currentTitle!
        playSound(button: buttonPressed)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5

        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(button: String) {
        let url = Bundle.main.url(forResource: button, withExtension: "wav")  // Location of audio file
        player = try! AVAudioPlayer(contentsOf: url!)                         // Put the audio in the player
        player.play()                                                         // Play the audio
        print(button)
        // THANKS!
        //ok?
    }
}

