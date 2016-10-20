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
        
        //くるくるを非表示
        kurukuru.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        //くるくるを表示
        kurukuru.hidden = false
        //読み込み　開始
        kurukuru.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        kurukuru.hidden = true
        //読み込み　終了
        kurukuru.stopAnimating()
    }
    
    @IBAction func nextAction(sender: AnyObject) {
        webView.goForward()
    }
    
    @IBAction func returnAction(sender: AnyObject) {
        webView.goBack()
    
    }


}

