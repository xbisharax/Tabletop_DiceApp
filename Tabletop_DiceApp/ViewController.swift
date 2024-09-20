//
//  ViewController.swift
//  Tabletop_DiceApp
//
//  Created by Geeks on 9/12/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func toTime(_ sender: Any) {
        self.performSegue(withIdentifier: "toTimeline", sender: self)
    }
    
    @IBAction func toPlan(_ sender: Any) {
        self.performSegue(withIdentifier: "toPlanning", sender: self)
    }
    
    @IBAction func toTab(_ sender: Any) {
        self.performSegue(withIdentifier: "toTable", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

