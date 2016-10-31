//
//  WebViewController.swift
//  SwiftPokemonTable
//
//  Created by KatoTakashi on 2016/10/31.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

        @IBAction func back(_ sender: Any) {
            dismiss(animated: true, completion: nil)
    }
    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        let url = URL(string:"https://www.google.co.jp/")
        let requestURL = URLRequest(url: url!)
        webView.loadRequest(requestURL)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
