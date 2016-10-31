//
//  AddViewController.swift
//  ToDoSwifter1
//
//  Created by KatoTakashi on 2016/10/31.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var array = [String]()
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func resister(_ sender: Any) {
        array.append(textField.text!)
        
        //アプリ内に配列arrayを保存
        UserDefaults.standard.set(array, forKey: "array")
        self.navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if(UserDefaults.standard.object(forKey: "array") != nil){
            array = UserDefaults.standard.object(forKey: "array") as! [String]
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
