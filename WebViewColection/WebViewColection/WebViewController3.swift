import UIKit

class WebViewController3: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var kurukuru: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        let url:NSURL = NSURL( string: "https://www.udemy.com/courses/" )!
        let urlRequest: NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(urlRequest)
        //くるくるを非表示
        kurukuru.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

    
    
}