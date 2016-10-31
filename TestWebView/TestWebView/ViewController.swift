//
//  ViewController.swift
//  TestWebView
//
//  Created by KatoTakashi on 2016/10/31.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.delegate = self
        let startUrl = "https://google.co.jp"
        if let url = NSURL(string: startUrl) {
            let urlRequest = URLRequest(url: url as URL)
            self.webview.loadRequest(urlRequest)
        }    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

