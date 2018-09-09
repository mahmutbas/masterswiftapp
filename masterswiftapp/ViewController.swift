//
//  ViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 20/02/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func allButtonsAction(_ sender: UIButton)
    {
        var selectedSoundName: String = sounds[sender.tag - 1]

        playSound(selectedSoundName)
    }

    func playSound(_ source: String)
    {
        let soundURL = Bundle.main.url(forResource: source, withExtension: "wav")

        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!);
        } catch
        {
            print(error)
        }

        audioPlayer.play();
    }

}

