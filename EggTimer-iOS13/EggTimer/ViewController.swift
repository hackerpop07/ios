//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var showUIProgressView: UIProgressView!
    @IBOutlet weak var titleUILabel: UILabel!
    
    var player: AVAudioPlayer!
    let eggTime = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 1
    
    @IBAction func clickUIButton(_ sender: UIButton) {
        // các cài đặt mặc định
        timer.invalidate()
        showUIProgressView.progress = 0

        // lấy dữ liệu
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        
        titleUILabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed <= totalTime {
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            showUIProgressView.progress = percentageProgress
            secondsPassed += 1
            print(secondsPassed)
        } else {
            timer.invalidate()
            totalTime = 0
            secondsPassed = 1
            titleUILabel.text = "Done!"
            play()
        }
    }
    
    func play(){
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")else{return}
        let soundURl = URL(fileURLWithPath: path)
        player = try? AVAudioPlayer(contentsOf: soundURl)
//        player.prepareToPlay()
        player.play()
        //player.pause()
        //player.stop()
    }
}
