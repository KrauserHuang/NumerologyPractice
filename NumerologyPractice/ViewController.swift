//
//  ViewController.swift
//  NumerologyPractice
//
//  Created by Tai Chin Huang on 2020/8/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //把資料從第一頁傳到第二頁
    @IBSegueAction func revealTarot(_ coder: NSCoder) -> TarotViewController? {
        //透過coder建立從storyboard設計的controller，包含了建立controller畫面需要的內容
        let controller = TarotViewController(coder: coder)
        //將第一頁的birthPicker.date存到第二頁的birthday
        controller?.birthday = birthPicker.date
        //回傳給TarotViewController
        return controller
    }
}
