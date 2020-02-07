//
//  BadResultViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/2/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class BadResultViewController: UIViewController {

    @IBOutlet weak var btnPlayAgainBad: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPlayAgainBad.layer.cornerRadius = 20
        btnPlayAgainBad.layer.borderWidth = 3
        btnPlayAgainBad.layer.borderColor = UIColor.systemYellow.cgColor
        // Do any additional setup after loading the view.
    }
    @IBAction func playAgain(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectCategoryViewController") as? SelectCategoryViewController
        self.navigationController?.pushViewController(vc!, animated: true)
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
