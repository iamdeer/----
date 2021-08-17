//
//  ViewController.swift
//  換頁ＡＰＰ
//
//  Created by Deer Lin on 2021/8/18.
//

import UIKit
//定義 Array 內容
let sharkImageData = ["鯊1.png", "鯊2.png", "鯊3.png","鯊4.png"]
let sharkLableText = ["鯊騎馬 ", "流鯊包 ", "鯊三小 ", "酷冰鯊 "]
let pageLabelText = ["Page 1", "Page 2", "Page 3", "Page 4"]
//連動各元件內容
var arrayIndex: Int = 0

class ViewController: UIViewController {

    //連結各元件的 IBOutlet
    
    @IBOutlet weak var pageLable: UILabel!
    @IBOutlet weak var segmentedIndication: UISegmentedControl!
    @IBOutlet weak var pageDot: UIPageControl!
    @IBOutlet weak var sharkLable: UILabel!
    @IBOutlet weak var sharkImageView: UIImageView!
   //同步修改
    func sync() {
    sharkImageView.image = UIImage(named:sharkImageData[ arrayIndex ])
        
    sharkLable.text = sharkLableText[arrayIndex]
        
    pageDot.currentPage = arrayIndex
        
    segmentedIndication.selectedSegmentIndex = arrayIndex
        
        pageLable.text = pageLabelText[arrayIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       sync()
       
        
        // Do any additional setup after loading the view.
    }

    @IBAction func pageControlChange(_ sender: Any) {
        if pageDot.currentPage == 0 {
        arrayIndex = 0
        sync()
        }
        else if pageDot.currentPage == 1 {
        arrayIndex = 1
        sync()
        }
        else if pageDot.currentPage == 2 {
        arrayIndex = 2
        sync()
        }
        else {
            arrayIndex = 3
            sync()
        }
    }
    
    @IBAction func segmentedChange(_ sender: Any) {
        
        if segmentedIndication.selectedSegmentIndex == 0 {
                   arrayIndex = 0
                   sync()
               }
               else if segmentedIndication.selectedSegmentIndex == 1 {
                   arrayIndex = 1
                   sync()
               }
               else if segmentedIndication.selectedSegmentIndex == 2 {
                   
                   arrayIndex = 2
                   sync()
               }
        else {
            arrayIndex = 3
            sync()
        }
    }
  //箭頭切頁
    @IBAction func rightButton(_ sender: Any) {
        if arrayIndex == 0 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else if arrayIndex == 1 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else if arrayIndex == 2 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else {
                    arrayIndex = arrayIndex - 3
                    sync()
                }
    }
    
    @IBAction func leftButton(_ sender: Any) {
        
        if arrayIndex == 3 {
               arrayIndex = arrayIndex - 1
               sync()
           }
           else if arrayIndex == 2 {
               arrayIndex = arrayIndex - 1
               sync()
           }
        else if arrayIndex == 3 {
            arrayIndex = arrayIndex - 1
            sync()
        }
           else {
               arrayIndex = arrayIndex + 3
               sync()
           }
        
        
    }
   //左邊手勢和右邊手勢換頁
// showNextPhoto 和 showPreviousPhoto 是 gesture 元件，gesture 元件的拉法是從 Library 拉出到 ImageView 上放開，可以在他的 Attributes Inspector 調整向左或向右滑動。
    @IBAction func showPreviousPhoto(_ sender: Any) {
        if arrayIndex == 3 {
               arrayIndex = arrayIndex - 1
               sync()
           }
           else if arrayIndex == 2 {
               arrayIndex = arrayIndex - 1
               sync()
           }
        else if arrayIndex == 3 {
            arrayIndex = arrayIndex - 1
            sync()
        }
           else {
               arrayIndex = arrayIndex + 3
               sync()
           }
        
    }
    
    @IBAction func showNextPhoto(_ sender: Any) {
        if arrayIndex == 0 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else if arrayIndex == 1 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else if arrayIndex == 2 {
                    arrayIndex = arrayIndex + 1
                    sync()
                }
                else {
                    arrayIndex = arrayIndex - 3
                    sync()
                }
        
        
        
        
    }
    
}

