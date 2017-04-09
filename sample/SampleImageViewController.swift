//
//  SampleImageViewController.swift
//  sample
//
//  Created by MASAKI MITSUYAMA on 2017/04/10.
//  Copyright © 2017 pixiv Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

private let imageURL = "https://pbs.twimg.com/profile_images/378800000759359120/5b1eea90e463d27ccef6b22edb0392f8_400x400.png"

class SampleImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(imageURL).responseImage { response in
            self.imageView.image = response.result.value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
