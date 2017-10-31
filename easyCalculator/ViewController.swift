//
//  ViewController.swift
//  easyCalculator
//
//  Created by Kobayashi Yako on 2017/10/31.
//  Copyright © 2017年 Step App School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //アウトレット
    @IBOutlet var tfX: UITextField!
    @IBOutlet var segCalcType: UISegmentedControl!
    @IBOutlet var tfY: UITextField!
    @IBOutlet var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //計算ボタンを押した場合
    @IBAction func tapCalc(_ sender: Any) {
        
        //入力された内容を数字にする
        var x:Double! = Double(tfX.text!)
        if(x == nil) {
            tfX.text = "0"
            x = 0
        }
        
        var y:Double! = Double(tfY.text!)
        if(y == nil) {
            tfY.text = "0"
            y = 0
        }
        var result:Double! = 0//答えを入れる箱を用意する
        
        //足し算の場合
        if(segCalcType.selectedSegmentIndex == 0) {
            result = x + y
        }
        //引き算の場合
        if(segCalcType.selectedSegmentIndex == 1) {
            result = x - y
        }
        //掛け算の場合
        if(segCalcType.selectedSegmentIndex == 2) {
            result = x * y
        }
        //割り算の場合
        if(segCalcType.selectedSegmentIndex == 3) {
            result = x / y
        }
        
        //結果を表示
        labelResult.text = String(result)
        
        //キーボードを隠す
        tfX.resignFirstResponder()
        tfY.resignFirstResponder()
    }
}

