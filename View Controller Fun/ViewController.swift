//
//  ViewController.swift
//  View Controller Fun
//
//  Created by ANNAHLU RACLAWSKI on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    var pony = ""
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //view.backgroundColor = UIColor.systemPink
        print(pony)
    }

    @IBAction func manualButton(_ sender: UIButton) {
        print("Hi")
        
        view.backgroundColor = UIColor.brown
        pony = textFieldOutlet.text!
        
        performSegue(withIdentifier: "toRed", sender: self)
    }
    
    //To add view controller click yellow button, editor, embed in, and navigation controller
    //Once add view controller, add code
    
    //Manual segway, control click drag from yellow button to desired controller
    
    
    //Automatically gets called just before a segue happens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nvc = next view controller giving access to the next view controller
        let nvc = segue.destination as! ViewControllerAdmin
        nvc.name = pony
        nvc.delegate = self
    }
    
}

