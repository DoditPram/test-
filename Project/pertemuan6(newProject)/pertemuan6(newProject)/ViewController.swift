//
//  ViewController.swift
//  pertemuan6(newProject)
//
//  Created by Muhamad Dodit on 26/11/19.
//  Copyright © 2019 Muhamad Dodit. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var StartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = Extension.background
        self.view = view
        
        let button:UIButton = UIButton(frame: CGRect(x: 80, y: 244, width: 150, height: 75))
        button.backgroundColor = .white
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button)
    }
    @objc func buttonClicked() {
        print("Button Clicked")
    }
    /* func setupView(){
     let view = UIView()
     view.backgroundColor = UIColor.init(displayP3Red: 10/255, green: 100/255, blue: 123/355, alpha: 1.0)
     
     self.view = view
     }*/
}

