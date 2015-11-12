//
//  ViewController.swift
//  Tapper
//
//  Created by Taro on 11/12/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    // IBOutlet Variables declaration Scene 1
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    // IBOutlet Variables declaration Scene2
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func tapGameStart(sender: UIButton!) {
        if input.text != nil && input.text != "" && Int(input.text!)! < 100 {
            
            logoImg.hidden = true
            input.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            resultLabel.hidden = false
            
            // Convert String to Int and set value to maxTaps
            maxTaps = Int(input.text!)!
            currentTaps = 0
            
            updateTaps()
        }
    }
    
    @IBAction func tapIncrement(sender: UIButton!) {
        currentTaps++
        updateTaps()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func updateTaps() {
        resultLabel.text = "\(currentTaps) TAPS"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        logoImg.hidden = false
        input.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        resultLabel.hidden = true
        
        maxTaps = 0
        input.text = ""
    }
    
}

