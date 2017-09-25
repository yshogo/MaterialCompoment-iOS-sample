//
//  ViewController.swift
//  Material_comporments_test
//
//  Created by ShogoYamada on 2017/08/08.
//  Copyright © 2017年 山田尚吾. All rights reserved.
//

import UIKit
import MaterialComponents
import MaterialComponents.MaterialDialogs

class ViewController: UIViewController {

    @IBOutlet weak var materialButton: MDCButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        materialButton.setTitleColor(UIColor.white, for: .normal)
        materialButton.setBackgroundColor(UIColor.blue, for: .normal)
        
        var array1 = Array<String>()
        array1.append("Swift1")
        array1.append("Swift2")
        
        // array1 = ["Swift1","Swift2"]
        
        var array2 = Array<String>()
        array2.append("Kotlin1")
        array2.append("Kotlin2")
        
        // array2 = ["Kotlin1", "Kotlin2"]
        
        // array1 と array2 を繋げる
        let array3 = array1 + array2
        
        array3.forEach{
            word in
            
            print(word)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDIalog(_ sender: Any) {
        
        let alertController = MDCAlertController(title: "Material Dialog", message: "This is Material Dialog! Let's Start Now!")
        let action = MDCAlertAction(title:"OK")
        alertController.addAction(action)
        
        present(alertController, animated:true)
    }

}

