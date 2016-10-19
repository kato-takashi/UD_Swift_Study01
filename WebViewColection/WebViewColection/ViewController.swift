//
//  ViewController.swift
//  WebViewColection
//
//  Created by KatoTakashi on 2016/10/20.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var kurukuru: UIActivityIndicatorView!
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        let url:NSURL = NSURL( string: "http://www.google.co.jp" )!
        let urlRequest: NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        //読み込み　開始
        kurukuru.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        //読み込み　終了
        kurukuru.stopAnimating()
    }
    
    


}

