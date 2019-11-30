//: A UIKit based Playground for presenting user interface
  
/*import UIKit
import PlaygroundSupport

class view : UIViewController{
    
    var counter = 0
    var label : UILabel!
    var btn : UIButton!
    var startBtn : UIButton!
    
    override func loadView() {
        setupView()
    }
    func setupView(){
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        //label
        label = UILabel()
        
        
        btn = UIButton(type: .system)
        btn.setTitle("Pertambahan", for: .normal)//(set) untuk menyeting button
        btn.addTarget(self, action: #selector(updateView), for: .touchUpInside)
        //action metodenya(#) selector (for) untuk model kliknya
        
        
        
        
        //starButton
        startBtn = UIButton(type: .system)
        startBtn.setImage(UIImage(named: "Star"), for: .normal)
        startBtn.addTarget(self, action: #selector(toggleStarted), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(btn)
        view.addSubview(startBtn)
      
        self.view = view
        
    
    }
    //untuk kelas action
    @objc func updateView(){
        counter += 1
        label.text = "Counter: \(counter)"
    }
    
    @objc func toggleStarted(){
        self.starred = !self.starred

    }
        
    var starred = false {
        didSet{
            startBtn.tintColor = starred ? .orange : .green
        }
    }
    
}
PlaygroundPage.current.liveView = UIViewController()*/



import UIKit
import PlaygroundSupport

class View2: UIViewController{
    
    var counter = 0
    var label : UILabel!
    var btn : UIButton!
    var startBtn : UIButton!
    
    override func loadView() {
        setupView()
    }
    
    func setupView(){
        let view = UIView()
        view.backgroundColor = .white
        
        let image = UIImage(named: "apple.jpg")//syntax buat penampung
        let imageView = UIImageView(image: image)//syntax buat nampilin
        let textView = UITextView()
        textView.text = "Hello"
        
        self.view = view
        label = UILabel()
        
        btn = UIButton(type: .system)
        btn.setTitle("Pertambahan", for: .normal)
        btn.addTarget(self, action: #selector(updateView), for: .touchUpInside)
        
        startBtn = UIButton(type: .system)
        startBtn.setImage(UIImage(systemName: "star"), for: .normal)
        startBtn.addTarget(self, action: #selector(toggleStarred), for: .touchUpInside)
        //action metodenya(#selector) dan (for) untuk model kliknya
        
        
        //slidebar
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 10
        
        //textfield
        
        
        
        view.addSubview(label)
        view.addSubview(btn)
        view.addSubview(startBtn)
        view.addSubview(slider)
        
        // Layout
        
        label.translatesAutoresizingMaskIntoConstraints = false
        btn.translatesAutoresizingMaskIntoConstraints = false
        startBtn.translatesAutoresizingMaskIntoConstraints = false
        slider.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            btn.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            btn.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor),
            
            startBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            startBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            slider.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        self.view = view
        self.starred = false
        updateView()
    }
    
    //class action
    @objc func updateView(){
        counter += 1
        label.text = "Counter: \(counter)"
    }
    @objc func toggleStarred(){
        self.starred = !self.starred
    }
    var starred = false {
        didSet{
            startBtn.tintColor = starred ? .orange : .gray
        }
    }
}
PlaygroundPage.current.liveView = View2()
