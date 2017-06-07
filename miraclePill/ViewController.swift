//
//  ViewController.swift
//  miraclePill
//
//  Created by Gabriel Lindgren on 2017-06-07.
//  Copyright © 2017 Gabriel Lindgren. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    //here comes some elements that will be hidden
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var adressField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var successImg: UIImageView!

    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerBtnPressed(_ sender: Any) {
        //this will hide these elements, so state picker will be seen clearly
        countryLabel.isHidden = true
        zipCodeLabel.isHidden = true
        countryField.isHidden = true
        zipCodeField.isHidden = true
        
        //state picker should be shown when stateBtnPressed is pressed
        statePicker.isHidden = false
    }
    
    @IBAction func buyNowPressed(_ sender: Any) {
        pillImage.isHidden = true
        pillLabel.isHidden = true
        priceLabel.isHidden = true
        nameLabel.isHidden = true
        adressLabel.isHidden = true
        cityLabel.isHidden = true
        stateLabel.isHidden = true
        countryLabel.isHidden = true
        zipCodeLabel.isHidden = true
        countryField.isHidden = true
        zipCodeField.isHidden = true
        nameField.isHidden = true
        adressField.isHidden = true
        cityField.isHidden = true
        buyNowBtn.isHidden = true
        divider.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        
        //show success image
        successImg.isHidden = false
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        //now the hidden elements should be shown again
        countryLabel.isHidden = false
        zipCodeLabel.isHidden = false
        countryField.isHidden = false
        zipCodeField.isHidden = false
    }

}

