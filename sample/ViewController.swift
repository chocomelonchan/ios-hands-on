//
//  ViewController.swift
//  sample
//
//  Created by MASAKI MITSUYAMA on 2017/04/09.
//  Copyright © 2017 pixiv Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTouchUpInside(_ sender: Any) {
        label.text = "最高！！！！！！！！"
    }
    
}

