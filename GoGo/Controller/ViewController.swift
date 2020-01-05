//
//  ViewController.swift
//  GoGo
//
//  Created by Omar on 03/01/2020.
//  Copyright © 2020 Omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        present(controller, animated: true, completion: nil)
    }


}

