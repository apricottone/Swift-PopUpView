//
//  PopUpViewController.swift
//  doubleVC
//
//  Created by mizoz on 2021/07/08.
//

import UIKit

class PopUpViewController: UIViewController {

    // cornerRadius用に宣言
    @IBOutlet weak var PopUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // backgroundColorのopacityを指定
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
//        self.view.alpha = 0.5
//        View.backgroundColor = UIColor.black.withAlphaComponent(0.15)
        
        // 角丸具合の設定
        PopUpView.layer.cornerRadius = 314 / 10
        
    }
    

    @IBAction func closePopUp(_ sender: UIButton) {
        // ポップアップを消す処理
        self.view.removeFromSuperview()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
