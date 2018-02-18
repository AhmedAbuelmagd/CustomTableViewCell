//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //Connections
    @IBOutlet weak var TableView: UITableView!
    
    //Variables & Constants
    let elements = ["horse","dog","cat","potato","horse","dog","cat","potato","horse","dog","cat","potato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = TableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.elementLbl.text = elements[indexPath.row]
        cell.elementImage.image = UIImage(named: elements[indexPath.row])
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.elementImage.layer.cornerRadius = cell.cellView.frame.height / 2
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

