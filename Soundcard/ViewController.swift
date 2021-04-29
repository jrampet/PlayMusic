//
//  ViewController.swift
//  Soundcard
//
//  Created by Rathish Marthandan T on 29/04/21.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: UIButton) {
        let pressedButton = sender.tag
        
        switch pressedButton{
        
        case 0: play("a")
        case 1: play("b")
        case 2: play("c")
        case 3: play("d")
        default:break
        }
        
    }
    func play(_ fileName:String){
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "wav") else{
            return
        }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch{
            print("No file found")
        }
    }
    
}

