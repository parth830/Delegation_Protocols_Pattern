//
//  ViewController.swift
//  Delegation_Protocols_Pattern
//
//  Created by Ayaan Ruhi on 9/26/18.
//  Copyright © 2018 parth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartedButton.layer.cornerRadius = getStartedButton.frame.size.height/2
    }

    @IBAction func getStartedButtonPressed(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "selectionViewController") as! selectionViewController
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

extension ViewController: sideSelectionDelegate {
    func sideSelected(image: UIImage, name: String) {
        mainImageView.image = image
        mainLabel.text = name
    }
}






