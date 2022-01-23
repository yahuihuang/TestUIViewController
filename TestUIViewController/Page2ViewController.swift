//
//  Page2ViewController.swift
//  TestUIViewController
//
//  Created by grace on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    var counter = 0
    var myTimer: Timer!
    
    override func loadView() {
        super.loadView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Page2ViewController viewDidLoad()")
        
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
        
        myTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(setCounter), userInfo: "Grace", repeats: true)
    }
    
    @objc func setCounter() {
        counter += 1
        print("counter is \(counter)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Page2ViewController viewDidAppear()")
        
        let view1 = UIView(frame: CGRect(x: 100, y: 200, width: 100, height: 100))
        view1.backgroundColor = UIColor.blue
        self.view.addSubview(view1)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
