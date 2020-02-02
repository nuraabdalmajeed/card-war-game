//
//  ViewController.swift
//  spider
//
//  Created by nura on 10/4/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var leftscoreview: UILabel!
    
    @IBOutlet weak var rightscoreview: UILabel!
    var leftscore = 0
    var rightscore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealtapped(_ sender: Any) {
        print("deal tapped")
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftimageview.image = UIImage(named: "card\(leftNumber)")
        
        rightimageview.image = UIImage(named: "card\(rightNumber)")
        if leftNumber > rightNumber {
            leftscore += 1
            leftscoreview.text = String(leftscore)
        }
        else if rightNumber > leftNumber   {
            rightscore += 1
            rightscoreview.text = String( rightscore)
        }
        else{} }
    
}





