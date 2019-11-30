//: A UIKit based Playground for presenting user interface
/*
 import UIKit
 import PlaygroundSupport
 
 class MyViewController : UIViewController {
 override func loadView() {
 let view = UIView()
 view.backgroundColor = .white
 
 let label = UILabel()
 label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
 label.text = "Hello World!"
 label.textColor = .black
 
 view.addSubview(label)
 self.view = view
 }
 }
 // Present the view controller in the Live View window
 PlaygroundPage.current.liveView = MyViewController()*/


import UIKit
import PlaygroundSupport

class UIKitVC : UIViewController{// by referensi
    //ViewController //view controller adalah class yang berisikan view dan controller
    override func loadView() {
        //func yang akan digunakan duluan.
        //UI
        let view = UIView()
        view.backgroundColor = .white
        
        //menambah sub view
        let innerView = UIView()
        innerView.backgroundColor = .cyan
        view.addSubview(innerView)
        
        let shadowView = UIView()
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.black.cgColor
        
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOpacity = 0.8//bayangan
        shadowView.layer.shadowOffset = CGSize(width: 1, height: 1)//untuk besar
        shadowView.layer.cornerRadius = 10//untuk menjadi tumpul sudutnya
        shadowView.backgroundColor = .red//untuk background
        view.addSubview(shadowView)
        
        let label = UILabel()
        label.text = "Hello World"
        view.addSubview(label)
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        
        let uiSwitch = UISwitch()
        uiSwitch.isOn = true
                view.addSubview(uiSwitch)
        
        
        //button
        
                
                // Layout
                shadowView.translatesAutoresizingMaskIntoConstraints = false
                innerView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    innerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
                    innerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    innerView.widthAnchor.constraint(equalToConstant: 80),
                    innerView.heightAnchor.constraint(equalToConstant: 80),
                    
                    shadowView.topAnchor.constraint(equalTo: innerView.bottomAnchor, constant: 20),
                    shadowView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor),
                    shadowView.widthAnchor.constraint(equalToConstant: 80),
                    shadowView.heightAnchor.constraint(equalToConstant: 80)
                ])
                label.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                    label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),])
                uiSwitch.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    uiSwitch.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
                    uiSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
                ])
                
                self.view = view
            }
        }
        PlaygroundPage.current.liveView = UIKitVC()
