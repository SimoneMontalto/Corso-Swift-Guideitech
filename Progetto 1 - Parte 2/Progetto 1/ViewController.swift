//
//  ViewController.swift
//  Progetto 1
//
//  Created by Simone Montalto on 11/02/18.
//  Copyright © 2018 Simone Montalto. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var immagini = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestoreFile = FileManager.default
        let percorso = Bundle.main.resourcePath!
        let elementi = try! gestoreFile.contentsOfDirectory(atPath: percorso)
        
        for elemento in elementi {
            if elemento.hasPrefix("immagine-") {
                immagini.append(elemento)
            }
        }
        print(immagini)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return immagini.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = immagini[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

