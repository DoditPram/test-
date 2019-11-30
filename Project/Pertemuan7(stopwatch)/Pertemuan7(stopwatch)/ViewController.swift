//
//  ViewController.swift
//  Pertemuan7(stopwatch)
//
//  Created by Muhamad Dodit on 28/11/19.
//  Copyright © 2019 Muhamad Dodit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var stopBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    
    
    var counter = 0.0
    var timer = Timer()
    var isTimerRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    func setupView(){
        resetBtn.isEnabled = false
        stopBtn.isEnabled = false
        startBtn.isEnabled = true
        
        
        timerLabel.layer.cornerRadius = 5.0
        timerLabel.layer.masksToBounds = true
        
        resetBtn.layer.cornerRadius = 4.0
        resetBtn.layer.masksToBounds = true
        resetBtn.alpha = 0.5
        resetBtn.tintColor = .white
        
        startBtn.layer.cornerRadius = startBtn.bounds.width / 2.0
        startBtn.layer.masksToBounds = true
       
        stopBtn.layer.cornerRadius = stopBtn.bounds.width / 2.0
        stopBtn.layer.masksToBounds = true
        stopBtn.alpha = 0.5
        
    }
    @IBAction func restartDidTap(_ sender: Any) {
        
        
        isTimerRunning = false
        timer.invalidate()
        counter = 0.0
        timerLabel.text = "00:00:00.0"
        
        resetBtn.isEnabled = false
        stopBtn.isEnabled = true
        startBtn.isEnabled = true
        
        resetBtn.alpha = 0.5
        startBtn.alpha =  1.0
        stopBtn.alpha = 1.0
        
    }
    
    @IBAction func stopDidTap(_ sender: Any){
        
        
        isTimerRunning = false
        timer.invalidate()
        
        resetBtn.isEnabled = true
        stopBtn.isEnabled = false
        startBtn.isEnabled = true
        
        resetBtn.alpha = 1.0
        startBtn.alpha =  1.0
        stopBtn.alpha = 0.5
        
    }
    
    
    @IBAction func startDidTap(_ sender: Any) {
        
        if isTimerRunning == false{
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
            isTimerRunning = true
            
            resetBtn.isEnabled = true
            stopBtn.isEnabled = true
            startBtn.isEnabled = false
            
            resetBtn.alpha = 1.0
            startBtn.alpha =  0.5
            stopBtn.alpha = 1.0
        }
    }
    @objc func runTimer(){
        counter += 0.1
        //hh:mm:SS:..
        let flooredCounter = Int(floor(counter))
        let hour = flooredCounter/3600
        let menit = (flooredCounter % 3600)/60
        var menitString = "\(menit)"
        if menit < 10{
            menitString = "0\(menit)"
        }
        let detik = (flooredCounter % 3600) % 60
        var detikSting = "\(detik)"
        if detik < 10{
            detikSting = "0\(detik)"
        }
        
        let miliDetik = String(format : "%.1f", counter).components(separatedBy: ".").last!
        
        timerLabel.text = "\(hour):\(menitString):\(detikSting).\(miliDetik)"
    }
    
}

