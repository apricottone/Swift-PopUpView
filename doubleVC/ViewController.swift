//
//  ViewController.swift
//  doubleVC
//
//  Created by mizoz on 2021/07/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showPopUp(_ sender: UIButton) {
        // どのStoryboard（name指定）のどのVC（identifier指定）をPopUpViewControllerとして指定するか（クラスのインスタンス化）
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "sbPopUpID") as! PopUpViewController
        // 上のVCを最初のVCに子クラスとして追加（Storyboardの紐付けをしていないため）
        self.addChild(popOverVC)
        // frame合わせ
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
}
