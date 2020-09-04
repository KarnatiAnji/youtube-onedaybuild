//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Admin on 04/09/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let model = Modeltourl()

    override func viewDidLoad() {
        super.viewDidLoad()
      model.getVideos()
    }


}

