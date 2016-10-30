//
//  TOPTableViewController.swift
//  SwiftPokemonTable
//
//  Created by KatoTakashi on 2016/10/30.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class TOPTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "日本のポケモン"
        cell.detailTextLabel?.text = "地図を見る"
        cell.imageView?.image = UIImage(named: "japan.png")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セルがtapされたら
        
        self.navigationController?.pushViewController(self.storyboard!.instantiateViewController(withIdentifier: "next"), animated: true)
    }
    

}
