//
//  IllustTableViewController.swift
//  sample
//
//  Created by MASAKI MITSUYAMA on 2017/04/10.
//  Copyright © 2017 pixiv Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

// スキな画像のURL。今回は著作権フリーなcatatsuy画像を使用
private let imageURLs = [
    "https://pbs.twimg.com/media/C9BkNDtU0AInCx9.jpg",
    "https://pbs.twimg.com/media/C84kiHOVYAI9H3P.jpg",
    "https://pbs.twimg.com/media/C8uk9URUIAEGVK6.jpg"
]

class IllustTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let illustCell = tableView.dequeueReusableCell(withIdentifier: "IllustCell") as! IllustCell
        Alamofire.request(imageURLs[indexPath.row]).responseImage { response in
            illustCell.illustImageView.image = response.result.value
        }
        illustCell.titleLabel.text = "様子\(indexPath.row + 1)"
        return illustCell
    }
}
