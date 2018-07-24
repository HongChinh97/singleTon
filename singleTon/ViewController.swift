//
//  ViewController.swift
//  singleTon
//
//  Created by admin on 7/16/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var index: IndexPath?
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if index != nil {
            textField.text = String(SingleTon.shared.numbers[index!.row])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(_ sender: UIButton) {

        var number = 0
        if textField.text != "" {
            number = Int(textField.text!) ?? 0
        }
        if let index = index {
            SingleTon.shared.editNumber(index: index, number: number)
        } else {
            SingleTon.shared.addNew(number: number)
        }
        navigationController?.popViewController(animated: true)
    }
    


}

