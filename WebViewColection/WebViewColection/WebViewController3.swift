import UIKit

class WebViewController3: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var kurukuru: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        let url:URL = URL( string: "https://www.udemy.com/courses/" )!
        let urlRequest: URLRequest = URLRequest(url: url)
        webView.loadRequest(urlRequest)
        //くるくるを非表示
        kurukuru.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        //くるくるを表示
        kurukuru.isHidden = false
        //読み込み　開始
        kurukuru.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        kurukuru.isHidden = true
        //読み込み　終了
        kurukuru.stopAnimating()
    }

    
    
}
