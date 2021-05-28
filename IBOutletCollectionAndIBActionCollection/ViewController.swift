//
//  ViewController.swift
//  IBOutletCollectionAndIBActionCollection
//
//  Created by Macbook on 28/05/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPressed(_ sender: UIButton) {
        
        
        _ = btns.map{ $0.isSelected = false }
        
        
        //btns.forEach{ $0.isSelected = false}
        
        /*
        for btn in btns{
            btn.isSelected = false
        } */
        sender.isSelected.toggle()
        message(tag: sender.tag)
    }
    
        
        
       

}

func message(tag:Int){
    switch tag {
    case 1:
        print("Tortoise")
    case 2:
        print("Chat")
    case 3:
        print("Rabbit")
    case 4:
        print("Camera")
    case 5:
        print("Phone")
    default:
        print("☺️")
    }
}
