//
//  ViewController.swift
//  SuccessfulIndicatorView
//
//  Created by 刘业臻 on 16/6/9.
//  Copyright © 2016年 luiyezheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myView: BounceSuccessfulView?
    
    @IBAction func start(sender: UIButton) {
        myView!.startAnimation()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView = BounceSuccessfulView(frame: CGRect(x: 0.0, y: 0.0, width: 120, height: 30))
        myView?.center = view.center
        
        view.addSubview(myView!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

