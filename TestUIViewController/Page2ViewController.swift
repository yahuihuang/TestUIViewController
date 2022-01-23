//
//  Page2ViewController.swift
//  TestUIViewController
//
//  Created by grace on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    var counter = 0.0
    var offset = 5.0
    var myTimer: Timer!
    
    @IBOutlet weak var mySegment: UISegmentedControl!
    override func loadView() {
        super.loadView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Page2ViewController viewDidLoad()")
        
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        view1.center = self.view.center
        // 圓角
        view1.layer.cornerRadius = 20
        view1.clipsToBounds = true
        self.view.addSubview(view1)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { Timer in
            self.setCounter(sender: view1)
        })
    }
    
    func setCounter(sender: UIView) {
        let angle = counter * Double.pi / 180.0
        sender.transform = CGAffineTransform(rotationAngle: angle)
        if mySegment.selectedSegmentIndex == 0 {
            counter += offset
        } else  {
            counter -= offset
        }
        
//        print("Now counter is \(counter)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("in viewWillDisappear()")
        myTimer.invalidate()
        myTimer = nil
    }
    
    @IBAction func changSlider(_ sender: UISlider) {
        print("sender's value \(sender.value)")
        offset = Double(sender.value)
    }
}
