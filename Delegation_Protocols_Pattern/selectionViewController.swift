//
//  selectionViewController.swift
//  Delegation_Protocols_Pattern
//
//  Created by Ayaan Ruhi on 9/27/18.
//  Copyright © 2018 parth. All rights reserved.
//

import UIKit

protocol sideSelectionDelegate {
    func sideSelected(image: UIImage, name: String)
}

class selectionViewController: UIViewController {

    var selectionDelegate: sideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func batButtonPressed(_ sender: UIButton) {
        selectionDelegate.sideSelected(image: UIImage(named: "bat")!, name: "Bat")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func bowlButtonPressed(_ sender: UIButton) {
        selectionDelegate.sideSelected(image: UIImage(named: "bowl")!, name: "Bowl")
        dismiss(animated: true, completion: nil)
    }
    
}
