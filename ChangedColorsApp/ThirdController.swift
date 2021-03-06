//
//  ThirdController.swift
//  ChangedColorsApp
//
//  Created by ST6 on 2.10.2017.
//  Copyright © 2017 kugim. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {
   
    
    @IBOutlet weak var meeterSquare: UILabel!
    let paintColourPrice = ["Red": 1.23, "Yellow": 1.55, "Blue": 1.23, "Others" :1.24]
    var colorList = ["Blue","Yellow","Red", "Others"]
    @IBOutlet weak var paintingPriceLabel: UILabel!
    @IBOutlet weak var lengthField: UITextField!
    @IBOutlet weak var widthField: UITextField!
    @IBOutlet weak var resultField: UILabel!
    @IBOutlet weak var colortextBox: UITextField!
    @IBOutlet weak var colorDropDown: UIPickerView!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        if lengthField.text! == "" || widthField.text! == "" || colortextBox.text! == "" {
            let alert = UIAlertController(title: "Alert", message: "Plese enter a value!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            
            resultField.text = String (format : "%.2f", (Double(lengthField.text!)! * Double(widthField.text!)!))
            
            func  paintingTotalPriceCalculate () -> String {
                var priceValue : Double!
                if  (colortextBox.text)  != nil {
                    priceValue = Double(resultField.text!)! * (paintColourPrice[colortextBox.text!])!
                } else {
                }
                return String(priceValue)
            }
            paintingPriceLabel.text = paintingTotalPriceCalculate()
        }
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return colorList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return colorList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.colortextBox.text = self.colorList[row]
        self.colorDropDown.isHidden = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.colortextBox {
            self.colorDropDown.isHidden = false
            //if you dont want the users to se the keyboard type:
            textField.endEditing(true)
        }
        
    }
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        meeterSquare.isHidden = true
        colorDropDown.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
