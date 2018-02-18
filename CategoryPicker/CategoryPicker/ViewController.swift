//
//  ViewController.swift
//  CategoryPicker
//
//  Created by Izati Ng on 23/12/17.
//  Copyright © 2017 bklv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var cityField: UITextField!
    
    let cities = ["London", "Paris", "Jakarta", "San Francisco", "Kuala Lumpur", "New York"]
    
    var pickerView = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        pickerView.delegate = self
        pickerView.dataSource = self
        
        cityField.inputView = pickerView
        cityField.textAlignment = .center
        cityField.placeholder = "Select City"
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cityField.text = cities[row]
        cityField.resignFirstResponder()
        
    }
    
}


