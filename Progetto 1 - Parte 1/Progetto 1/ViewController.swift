//
//  ViewController.swift
//  Progetto 1
//
//  Created by Simone Montalto on 11/02/18.
//  Copyright © 2018 Simone Montalto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

