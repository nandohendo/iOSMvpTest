//
//  contract.swift
//  mvptest
//
//  Created by Nando on 9/25/18.
//  Copyright © 2018 Dennis Wu. All rights reserved.
//

import Foundation

protocol testView: class{
    func updateViewToBlack()
    func updateViewToBlue()
}

protocol testPresenter: class {
    func attachView(view: testView)
    func updateView(state: Int)
    func onButtonClick(buttonTitle: String)
}


