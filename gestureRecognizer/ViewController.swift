//
//  ViewController.swift
//  gestureRecognizer
//
//  Created by Canan Yavuz on 28.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImg))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImg(){
        
        if imageView.image == UIImage(named: "ist"){
            cityLabel.text = "Rize"
            imageView.image = UIImage(named: "rize")
        }else{
            cityLabel.text = "Istanbul"
            imageView.image = UIImage(named: "ist")
        }
        
    }

}

