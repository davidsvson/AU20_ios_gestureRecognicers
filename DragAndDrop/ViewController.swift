//
//  ViewController.swift
//  DragAndDrop
//
//  Created by David Svensson on 2020-12-11.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catTapped(_ sender: UITapGestureRecognizer) {
        
        print("Cat is tapped")
        
    }
    
    @IBAction func hanldePan(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        
        if let viewToPan = sender.view {
            viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x,
                                       y: viewToPan.center.y + translation.y)
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    
    }
}

