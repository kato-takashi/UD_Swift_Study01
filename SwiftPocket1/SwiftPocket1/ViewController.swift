//
//  ViewController.swift
//  SwiftPocket1
//
//  Created by KatoTakashi on 2016/11/07.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count:Int = 0
    
    @IBOutlet var webview: UIWebView!
    var urlArray = [String]()
    var urlString:String? = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "urlArray") != nil{
            urlArray = UserDefaults.standard.object(forKey: "urlArray") as! [String]
            urlString = urlArray[count]
        }
        
        let requestURL = URL(string: urlString!)
        let req = NSURLRequest(url:requestURL!)
        webview.loadRequest(req as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

