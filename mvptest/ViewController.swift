//
//  ViewController.swift
//  mvptest
//
//  Created by Nando on 9/25/18.
//  Copyright © 2018 Dennis Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, testView {
    @IBOutlet weak var rectangle: UIView!
    @IBOutlet weak var button: UIButton!
    let presenter = HomePresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        presenter.attachView(view: self)
        // Do any additional setup after loading the view, typically from a nib.
        presenter.updateView(state: 0)
    }
    
    @IBAction func onButtonClick(_ sender: Any) {
        presenter.onButtonClick(buttonTitle: button.currentTitle!)
    }
    
    func updateViewToBlue() {
        rectangle.backgroundColor = UIColor.blue
        button.setTitle("blue", for: .normal)
    }

    func updateViewToBlack() {
        rectangle.backgroundColor = UIColor.black
        button.setTitle("black", for: .normal)
    }

}

