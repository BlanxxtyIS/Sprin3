//
//  ViewController.swift
//  Sprin3
//
//  Created by Марат Хасанов on 14.06.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var labelCount: UILabel!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    @IBOutlet weak var buttonPlus: UIButton!
    
    @IBOutlet weak var buttonMinus: UIButton!
    
    @IBOutlet weak var resetTheValue: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "История изменений: \n"
        textView.isEditable = false
    }
   
    
    private var countLabel: Int = 0
    let date = Date()
    let dateFormatter = DateFormatter()
    
    @IBAction func ButtonClick(_ sender: Any) {
        countLabel += 1
        labelCount.text = "\(countLabel)"
        dateFormatter.dateFormat = "dd-MM HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        textView.text += "[\(dateString)]: значение изменено на +1 \n"
    }
    
    @IBAction func buttonPlusPush(_ sender: Any) {
        countLabel += 1
        labelCount.text = "\(countLabel)"
        dateFormatter.dateFormat = "dd-MM HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        textView.text += "[\(dateString)]: значение изменено на +1 \n"
    }
    
    @IBAction func buttonMinusPush(_ sender: Any) {
        dateFormatter.dateFormat = "dd-MM HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        if countLabel > 0 {
            countLabel -= 1
            labelCount.text = "\(countLabel)"
            textView.text += "[\(dateString)]: значение изменено на -1 \n"
        } else {
            countLabel = 0
            textView.text += "[\(dateString)]: попытка уменьшить значение счетчика ниже 0 \n"
        }
    }
    
    @IBAction func resetCountToZero(_ sender: Any) {
        countLabel = 0
        labelCount.text = "\(countLabel)"
        dateFormatter.dateFormat = "dd-MM HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        textView.text = "[\(dateString)]: значение сброшено \n"
    }
}

