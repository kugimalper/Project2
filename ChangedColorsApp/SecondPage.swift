//
//  SecondPage.swift
//  ChangedColorsApp
//
//  Created by ST6 on 2.10.2017.
//  Copyright © 2017 kugim. All rights reserved.
//

import UIKit

class SecondPage: UIViewController, UITextFieldDelegate {
    
    var colorsArr = [
        UIColor(red: 26/255.0 , green: 188/255.0, blue: 156/255.0, alpha: 1.0),
        UIColor(red: 46/255.0 , green: 204/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 187/255.0 , green: 152/255.0, blue: 219/255.0, alpha: 1.0),
        UIColor(red: 155/255.0 , green: 89/255.0, blue: 182/255.0, alpha: 1.0),
        UIColor(red: 52/255.0 , green: 73/255.0, blue: 94/255.0, alpha: 1.0),
        UIColor(red: 22/255.0 , green: 160/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 39/255.0 , green: 174/255.0, blue: 96/255.0, alpha: 1.0),
        UIColor(red: 142/255.0 , green: 68/255.0, blue: 173/255.0, alpha: 1.0),
        UIColor(red: 241/255.0 , green: 196/255.0, blue: 15/255.0, alpha: 1.0),
        UIColor(red: 44/255.0 , green: 62/255.0, blue: 80/255.0, alpha: 1.0),
        UIColor(red: 230/255.0 , green: 126/255.0, blue: 34/255.0, alpha: 1.0),
        UIColor(red: 231/255.0 , green: 76/255.0, blue: 60/255.0, alpha: 1.0),
        UIColor(red: 243/255.0 , green: 156/255.0, blue: 18/255.0, alpha: 1.0),
        UIColor(red: 211/255.0 , green: 84/255.0, blue: 0/255.0, alpha: 1.0),
        UIColor(red: 192/255.0 , green: 57/255.0, blue: 43/255.0, alpha: 1.0),
        
        ]

    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var sendButtonOutlet: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func sendButton(_ sender: UIButton) {
        nameLabel.text = TextField.text!
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        sendButton(sendButtonOutlet)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    view.backgroundColor = randomColorChange()
    }
    
    func randomColorChange() -> UIColor {
        let randomIndex = Int(arc4random_uniform(UInt32(colorsArr.count)))
        return colorsArr[randomIndex]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 

}
