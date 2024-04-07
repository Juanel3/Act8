//
//  MiddleViewController.swift
//  act82
//
//  Created by Juan Miguel Flores on 01/04/24.
//

import UIKit

class MiddleViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
        
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    
    func addEvent(from: String) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEl número de evento \(eventNumber) era \(from)"
            eventNumber += 1
        }
    }

}
