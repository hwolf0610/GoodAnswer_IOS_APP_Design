//
//  SelectCategoryViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/1/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class SelectCategoryViewController: UIViewController {
   
    
    @IBOutlet weak var tableviewCategory: UITableView!
    var items = ["Food", "Music", "Sports", "Animals", "Fiction"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableviewCategory.backgroundColor = UIColor.black
        
    }

    
    @objc func btnFollowingTapped(sender: UIButton) {
        
        let index = sender.tag
        print(items[index])
        GlobalData.selectedCategory = items[index]
//        SelectAnswerViewController
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MyAnswerViewController") as? MyAnswerViewController
//        CorrectAnswerViewController.QuestionViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
        
    }
}

extension SelectCategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell
        
        cell.btnCategory.setTitle(items[indexPath.row], for: .normal)
        cell.btnCategory.layer.borderWidth = 3
        cell.btnCategory.layer.borderColor = UIColor.systemYellow.cgColor
        cell.layer.cornerRadius = 20
        cell.btnCategory.tag = indexPath.row
        cell.btnCategory.addTarget(self, action: #selector(btnFollowingTapped(sender:)), for: .touchUpInside)
        return cell
        
    }
    
    
}

extension SelectCategoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               return 60
           }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}


