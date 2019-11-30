//
//  ViewController.swift
//  pertemuan8(calculatorBMI)
//
//  Created by Muhamad Dodit on 29/11/19.
//  Copyright © 2019 Muhamad Dodit. All rights reserved.
//

import UIKit

var inc = Double()
var weight = Double()
var result : Double = weight / (inc * inc)



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        Lebel()
        AnswerButton()
        
    }
    func Lebel(){
        let lblHeight = UILabel()
        lblHeight.center = .init(x: 0, y: 0)
        lblHeight.text = "Your Height   :"
        lblHeight.font = .boldSystemFont(ofSize: 15)
        lblHeight.frame = .init(x: 0, y: 150, width: 120, height: 100)
        self.view.addSubview(lblHeight)
        
        
        let lblWeight = UILabel()
        lblWeight.center = .init(x: 0, y: 0)
        lblWeight.text = "Your Weight   :"
        lblWeight.font = .boldSystemFont(ofSize: 15)
        lblWeight.frame = .init(x: 0, y: 250, width: 120, height: 100)
        self.view.addSubview(lblWeight)
        
        
        
        
        TextField()
    }
    func TextField(){
        let txtFeet = UITextField(frame: CGRect.init(x: 150, y: 185, width: 100, height: 40))
        txtFeet.borderStyle = .bezel
        txtFeet.tintColor = .darkGray
        txtFeet.placeholder = "Feet"
        txtFeet.font = UIFont.systemFont(ofSize: 15)
        txtFeet.autocorrectionType = UITextAutocorrectionType.no
        txtFeet.keyboardType = UIKeyboardType.default
        txtFeet.returnKeyType = UIReturnKeyType.done
        txtFeet.clearButtonMode = UITextField.ViewMode.whileEditing
        txtFeet.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        self.view.addSubview(txtFeet)
        
        let txtInches = UITextField(frame: CGRect.init(x: 300, y: 185, width: 100, height: 40))
        txtInches.borderStyle = .bezel
        txtInches.tintColor = .darkGray
        txtInches.placeholder = "Inches"
        txtInches.font = UIFont.systemFont(ofSize: 15)
        txtInches.autocorrectionType = UITextAutocorrectionType.no
        txtInches.keyboardType = UIKeyboardType.default
        txtInches.returnKeyType = UIReturnKeyType.done
        txtInches.clearButtonMode = UITextField.ViewMode.whileEditing
        txtInches.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        self.view.addSubview(txtInches)
        
        let txtWeight = UITextField(frame: CGRect.init(x: 150, y: 280, width: 100, height: 40))
        txtWeight.borderStyle = .bezel
        txtWeight.tintColor = .darkGray
        txtWeight.placeholder = "Weight"
        
        txtWeight.font = UIFont.systemFont(ofSize: 15)
        txtWeight.autocorrectionType = UITextAutocorrectionType.no
        txtWeight.keyboardType = UIKeyboardType.default
        txtWeight.returnKeyType = UIReturnKeyType.done
        txtWeight.clearButtonMode = UITextField.ViewMode.whileEditing
        txtWeight.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        self.view.addSubview(txtWeight)
        
        
    }
    var presentAlert = UILabel(frame: .init(x: 150, y: 600, width: 400, height: 400))
    
    func TextFieldValidation(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Handle backspace/delete
        guard !string.isEmpty else {
            
            // Backspace detected, allow text change, no need to process the text any further
            return true
        }
        
        // Input Validation
        // Prevent invalid character input, if keyboard is numberpad
        if textField.keyboardType == .numberPad {
            
            // Check for invalid input characters
            if CharacterSet(charactersIn: "0123456789").isSuperset(of: CharacterSet(charactersIn: string)) {
                
                // Present alert so the user knows what went wrong
                presentAlert.text = ("This field accepts only numeric entries.")
                print(presentAlert)
                
                // Invalid characters detected, disallow text change
                return false
            }
        }
        
        // Length Processing
        // Need to convert the NSRange to a Swift-appropriate type
        if let text = textField.text,
            let range = Range(range, in: text) {
            
            let proposedText = text.replacingCharacters(in: range, with: string)
            
            let maxCharacters = 3
            
            // Check proposed text length does not exceed max character count
            guard proposedText.count <= maxCharacters else {
                
                // Present alert if pasting text
                // easy: pasted data has a length greater than 1; who copy/pastes one character?
                if string.count > 1 || string.count > 3{
                    
                    // Pasting text, present alert so the user knows what went wrong
                    presentAlert.text = ("Paste failed: Maximum character count exceeded.")
                    
                }
                
                // Character count exceeded, disallow text change
                return false
            }
            
            // Only enable the OK/submit button if they have entered all numbers for the last four
            // of their SSN (prevents early submissions/trips to authentication server, etc)
            answerButton.isEnabled = (proposedText.count == 4)
        }
        
        // Allow text change
        return true
        
    }
    var answerButton = UIButton(type: .roundedRect)
    @IBOutlet var resultButton : UIButton!
    func AnswerButton(){
        answerButton.setTitle("RESULT", for: .normal)
        answerButton.setTitleColor(UIColor.blue, for: .normal)
        answerButton.frame = .init(x: 150, y: 500, width: 100, height: 300)
        answerButton.addTarget(self, action: #selector(self.Result),  for: .touchUpInside)
        answerButton.sendAction(#selector(Result), to: self, for: nil)
        answerButton.isEnabled = true
        
        
        self.view.addSubview(answerButton)
    }
    @objc func Result(){
       let lblAlert = UILabel()
       lblAlert.center = .init(x: 0, y: 0)
       //lblAlert.text = "Inputan Must Be Number"
       lblAlert.font = .boldSystemFont(ofSize: 15)
       lblAlert.frame = .init(x: 130, y: 400, width: 200, height: 200)
       
       
       if result <= 18.5{
           lblAlert.text = "UnderWeight"
       }else if result <= 24.9{
            lblAlert.text = "Normal"
       } else if result <= 29.9{
           lblAlert.text = "OverWeight"
       }else if result >= 24.9{
       lblAlert.text = "Obesitas"
       }
       self.view.addSubview(lblAlert)
        print("Result")
    }
}

