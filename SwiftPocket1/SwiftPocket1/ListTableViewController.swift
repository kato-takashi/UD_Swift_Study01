//
//  ListTableViewController.swift
//  SwiftPocket1
//
//  Created by KatoTakashi on 2016/11/07.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    //webviewに移されたタイトル
    var titleArray = [String]()
    //webviewに移されたURL
    var urlArray = [String]()
    
    var label1:UILabel = UILabel()
    var label2:UILabel = UILabel()
    
    var webview:UIWebView = UIWebView()
    
    //選択されたセルの番号が入る変数
    var selectedNumber:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //サイズを決定
        webview.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        let requestURL = URL(string: "https://www.google.co.jp")
        let req = NSURLRequest(url:requestURL!)
        webview.loadRequest(req as URLRequest)
        
        //viewにaddする
        self.view.addSubview(webview)
        
        //webviewを非表示
        webview.isHidden = true

    }
    
    @IBAction func add(_ sender: Any) {
        //webviewを表示
        webview.isHidden = false
        
        //webviewに表示されているタイトルを配列の中に入れる
        titleArray.append(webview.stringByEvaluatingJavaScript(from: "document.title")!)
        
        //webviewに表示されているURLを配列の中に入れる
        urlArray.append(webview.stringByEvaluatingJavaScript(from: "document.url")!)
        
        //配列をアプリ内へ保存する
        UserDefaults.standard.set(titleArray, forKey: "titleArray")
        UserDefaults.standard.set(urlArray, forKey: "urlArray")
        
        if UserDefaults.standard.object(forKey:"titleArray") != nil{
            titleArray = UserDefaults.standard.object(forKey: "titleArray") as! [String]
            urlArray = UserDefaults.standard.object(forKey: "urlArray") as! [String]
        }
        tableView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        label1 = cell.contentView.viewWithTag(1) as! UILabel
        label2 = cell.contentView.viewWithTag(2) as! UILabel
        
        label1.text = titleArray[indexPath.row]
        label2.text = urlArray[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //cellがタップされたとき
        selectedNumber = Int(indexPath.row)
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "next"){
            let viewController:ViewController = segue.destination as! ViewController
            viewController.count = selectedNumber
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
