//
//  ViewController.swift
//  ButtonBoop
//
//  Created by Gandalf Fluffernutter on 2/3/17.
//  Copyright © 2017 Gandalf. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
    @IBOutlet weak var boopsLabel: UILabel!
    var numberOfClicks = 0;
    var player: AVAudioPlayer?
    
    func playSound() {
        let url = Bundle.main.url(forResource: "KnifeClicker", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickedButton(_ sender: Any) {
        // Runs when the button is pressed
        numberOfClicks = numberOfClicks + 1;
        boopsLabel.text = "Number of Clicks: " + String(numberOfClicks)
        playSound()
    }

}

