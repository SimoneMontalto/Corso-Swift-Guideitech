//
//  DetailViewController.swift
//  Progetto 1
//
//  Created by Simone Montalto on 15/04/18.
//  Copyright © 2018 Simone Montalto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var immagineSelezionata: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let immagineDaCaricare = immagineSelezionata {
            imageView.image = UIImage(named: immagineDaCaricare)
        }
        
    }

}
