//
//  ViewController.swift
//  MiraclePill
//
//  Created by John Crisostomo on 28/03/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillsLogo: UIImageView!
    @IBOutlet weak var pillsTitle: UILabel!
    @IBOutlet weak var pillsPrice: UILabel!
    
    @IBOutlet weak var appDivider: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameField: UITextField!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Manila", "Cebu", "Davao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryField.isHidden = true
        countryLabel.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
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
        countryField.isHidden = false
        countryLabel.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillsLogo.isHidden = true
        pillsTitle.isHidden = true
        pillsPrice.isHidden = true
        
        appDivider.isHidden = true
        
        fullNameLabel.isHidden = true
        fullNameField.isHidden = true
        
        streetLabel.isHidden = true
        streetField.isHidden = true
        
        cityLabel.isHidden = true
        cityField.isHidden = true
        
        countryLabel.isHidden = true
        countryField.isHidden = true
        
        zipLabel.isHidden = true
        zipField.isHidden = true
        
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        
        buyNowBtn.isHidden = true
        
        successImage.isHidden = false
    }
    
}

