//
//  presenter.swift
//  mvptest
//
//  Created by Nando on 9/25/18.
//  Copyright © 2018 Dennis Wu. All rights reserved.
//

import Foundation

class HomePresenter: testPresenter{
    var mView: testView?
    
    func attachView(view: testView){
        mView = view
    }
    
    func updateView(state: Int){
        if state == 0{
            mView?.updateViewToBlue()
        }
        else{
            mView?.updateViewToBlack()
        }
    }
    
    func onButtonClick(buttonTitle: String){
        if buttonTitle == "black"{
            mView?.updateViewToBlue()
        }
        else{
            mView?.updateViewToBlack()
        }
    }
    
}
