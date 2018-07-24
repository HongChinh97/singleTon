//
//  SingleTon.swift
//  singleTon
//
//  Created by admin on 7/16/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class SingleTon: NSObject {
    static let shared: SingleTon = SingleTon()
    private var _numbers : [Int]?
    var numbers : [Int] {
        get {
            if _numbers == nil {
                loadSampleNumber()
            }
            return _numbers ?? []
        }
        set {
            _numbers = newValue
        }
    }
    func loadSampleNumber (){
        _numbers = Array(1...3)
    }
    func editNumber(index : IndexPath, number : Int){
        _numbers?[index.row] = number
    }
    func addNew(number : Int) {
        _numbers?.append(number)
    }

}
