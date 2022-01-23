//
//  Page2ViewController.swift
//  TestUIViewController
//
//  Created by grace on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Page2ViewController viewDidLoad()")
        
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let view1 = UIView(frame: CGRect(x: 100, y: 200, width: 100, height: 100))
        view1.backgroundColor = UIColor.yellow
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
