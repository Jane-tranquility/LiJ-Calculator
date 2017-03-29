//
//  ViewController.swift
//  Calculator
//
//  Created by LiJing on 1/25/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number=0
    var sum:Int=0
    var dis:String=""
    var setting=true
    @IBOutlet weak var result: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let button=sender.currentTitle{
            if let num=Int(button) {
                if setting==false{
                    sum=0
                    dis=dis+button
                    result.text=dis
                    number=number*10+num
                    setting=true
                }else{
                    dis=dis+button
                    result.text=dis
                    number=number*10+num
                    setting=true
                }
            }
            if button=="+" {
                sum+=number
                number=0
                result.text=""
                dis=""
                setting=true
            }else if button=="="{
                sum+=number
                result.text=String(sum)
                number=0
                //sum=0
                dis=""
                setting=false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

