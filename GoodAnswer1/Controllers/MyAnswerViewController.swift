//
//  MyAnswerViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/3/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class MyAnswerViewController: UIViewController {

    
    @IBOutlet weak var myCategory: UIButton!
    @IBOutlet weak var tebleviewMyAnswer: UITableView!
    @IBOutlet weak var progressViewPerProblem: UIProgressView!
    @IBOutlet weak var btnSendMyAnswer: UIButton!
    @IBOutlet weak var labelProblem: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    @IBOutlet weak var imgStar6: UIImageView!
    @IBOutlet weak var imgStar7: UIImageView!
    @IBOutlet weak var imgStar8: UIImageView!
    @IBOutlet weak var imgStar9: UIImageView!
    @IBOutlet weak var imgStar10: UIImageView!
    
    
    var progressTimer: Timer?
    var poseDuration = 20
    var indexProgressBar = 0.1
    var currentPoseIndex = 0.1
    var indexProblem = 0
    
     
    
    
    var items = ["Food", "Music", "Sports", "Animals", "Fiction"]
    var problems = ["This is problem 1","This is problem 2","This is problem 3","This is problem 4","This is problem 5","This is problem 6","This is problem 7","This is problem 8","This is problem 9","This is problem 10"]
    
    var answers = [["Food1", "Music1", "Sports1", "Animals1", "Fiction1"],["Food2", "Music2", "Sports2", "Animals2", "Fiction2"],["Food3", "Music3", "Sports3", "Animals3", "Fiction3"],["Food4", "Music4", "Sports4", "Animals4", "Fiction4"],["Food5", "Music5", "Sports5", "Animals5", "Fiction5"],["Food6", "Music6", "Sports6", "Animals6", "Fiction6"],["Food7", "Music7", "Sports7", "Animals8", "Fiction7"],["Food8", "Music8", "Sports8", "Animals8", "Fiction8"],["Food9", "Music9", "Sports9", "Animals9", "Fiction9"],["Food10", "Music10", "Sports10", "Animals10", "Fiction10"]]
    
    var keys = [false, false,false,false,false]
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        btnSendMyAnswer.addTarget(self, action: #selector(runTimedCode), for: .touchUpInside)
        
        items = answers[indexProblem]
        labelProblem.text = problems[indexProblem]
        
        self.progressTimer = Timer.scheduledTimer(timeInterval:1, target:self, selector:#selector(runTimedCode), userInfo:nil, repeats:true)
        
        btnSendMyAnswer.layer.cornerRadius = 20
        btnSendMyAnswer.layer.borderColor = UIColor.systemYellow.cgColor
        btnSendMyAnswer.layer.borderWidth = 3
        
       self.myCategory.setTitle(GlobalData.selectedCategory, for: .normal)
        
        tebleviewMyAnswer.backgroundColor = UIColor.black
        
        progressViewPerProblem.progress = 0
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            print(self.indexProgressBar)
//            self.indexProgressBar = self.indexProgressBar + 0.1
//            self.currentPoseIndex = self.indexProgressBar
//            self.progressViewPerProblem.progress = Float(self.currentPoseIndex)
//        }
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        progressTimer?.invalidate()
    }
    
    @objc func runTimedCode(){
        if (self.indexProgressBar == 1 || self.indexProgressBar > 1) {
            if (indexProblem < 9) {
                 indexProblem = indexProblem + 1
                
                self.indexProgressBar = 0.0
                self.currentPoseIndex = self.indexProgressBar
                self.progressViewPerProblem.progress = Float(self.currentPoseIndex)
                
                items = answers[indexProblem]
                labelProblem.text = problems[indexProblem]
                
                switch indexProblem {
                case 0:
                    imgStar1.image = UIImage(named: "star.png")
                case 1:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                case 2:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                case 3:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                case 4:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                case 5:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                    imgStar6.image = UIImage(named: "star.png")
                case 6:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                    imgStar6.image = UIImage(named: "star.png")
                    imgStar7.image = UIImage(named: "star.png")
                case 7:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                    imgStar6.image = UIImage(named: "star.png")
                    imgStar7.image = UIImage(named: "star.png")
                    imgStar8.image = UIImage(named: "star.png")
                case 8:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                    imgStar6.image = UIImage(named: "star.png")
                    imgStar7.image = UIImage(named: "star.png")
                    imgStar8.image = UIImage(named: "star.png")
                    imgStar9.image = UIImage(named: "star.png")
                case 9:
                    imgStar1.image = UIImage(named: "star.png")
                    imgStar2.image = UIImage(named: "star.png")
                    imgStar3.image = UIImage(named: "star.png")
                    imgStar4.image = UIImage(named: "star.png")
                    imgStar5.image = UIImage(named: "star.png")
                    imgStar6.image = UIImage(named: "star.png")
                    imgStar7.image = UIImage(named: "star.png")
                    imgStar8.image = UIImage(named: "star.png")
                    imgStar9.image = UIImage(named: "star.png")
                    imgStar10.image = UIImage(named: "star.png")
                    
                default:
                    print("You're heading west!")
                }
                
                
                 print(indexProblem)
                self.tebleviewMyAnswer.reloadData()
            } else {
                
                self.progressTimer = nil
                self.progressTimer?.invalidate()
                print("end Timer!!!")
                
            }
           
        } else {
            print(self.indexProgressBar)
            self.indexProgressBar = self.indexProgressBar + 0.1
            self.currentPoseIndex = self.indexProgressBar
            self.progressViewPerProblem.progress = Float(self.currentPoseIndex)
        }
        
//        print("second")
    }
    
    
    
    @IBAction func sendMyAnswer(_ sender: Any) {
        
        if (indexProblem < 9) {
            self.indexProgressBar = 1
        } else {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AnswerViewController") as? AnswerViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func btnFollowingTapped(sender: UIButton) {
            
            let index = sender.tag
            print(items[index])
        
        if(keys[index] == false){
            sender.backgroundColor = UIColor.systemGreen
            keys[index] = true
        }else if(keys[index] == true){
            sender.backgroundColor = UIColor.black
            keys[index] = false
        }
        
//        if(sender.backgroundColor == UIColor.systemGreen){
//            sender.backgroundColor = UIColor.white
//        }else if(sender.backgroundColor == UIColor.white){
//            sender.backgroundColor = UIColor.systemGreen
//        }
         
//            GlobalData.selectedCategory = items[index]
//               let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MyAnswerViewController") as? MyAnswerViewController
//    self.navigationController?.pushViewController(vc!, animated: true)
            
            
            
        }
    
    
    
}


extension MyAnswerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell", for: indexPath) as! QuestionTableViewCell
        
        cell.btnQuestion.setTitle(items[indexPath.row], for: .normal)
        cell.btnQuestion.layer.borderWidth = 3
        cell.btnQuestion.layer.borderColor = UIColor.systemYellow.cgColor
        cell.layer.cornerRadius = 20
        cell.btnQuestion.backgroundColor = UIColor.black
        
        cell.btnQuestion.tag = indexPath.row
        cell.btnQuestion.addTarget(self, action: #selector(btnFollowingTapped(sender:)), for: .touchUpInside)
        return cell
    }
}

extension MyAnswerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               return 60
           }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}


