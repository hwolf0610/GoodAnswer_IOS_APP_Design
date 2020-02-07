//
//  AnswerViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/3/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var btnSendImage: UIButton!
    @IBOutlet weak var tableviewAnswer: UITableView!
    
    var questions = ["what's your jobwh","what's your job","what's your job","what's your job","what's your job","what's your job","what's your job","what's your job","what's your job","what's your job"]
    var yourAnswers = ["offiificer","officer","officer","officer","officer","officer","officer","officer","officer","officer"]
    var correctAnswers = ["workeor","worker","worker","worker","worker","worker","worker","worker","worker","worker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSendImage.layer.cornerRadius = 20
        btnSendImage.layer.borderColor = UIColor.systemYellow.cgColor
        btnSendImage.layer.borderWidth = 3
        
        tableviewAnswer.estimatedRowHeight = 100
               tableviewAnswer.rowHeight = UITableView.automaticDimension
        self.tableviewAnswer.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goResultPage(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "GoodResultViewController") as? GoodResultViewController
        //        CorrectAnswerViewController.QuestionViewController
                self.navigationController?.pushViewController(vc!, animated: true)
    }
    

}
extension AnswerViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectAnswerTableViewCell", for: indexPath) as! CorrectAnswerTableViewCell
        
        let question = questions[indexPath.row]
        let yourAnswer = yourAnswers[indexPath.row]
        let correctAnswer = correctAnswers[indexPath.row]
         
        cell.cellViewCorrectAnser.layer.cornerRadius = 20
        cell.cellViewCorrectAnser.layer.borderColor = UIColor.systemYellow.cgColor
        cell.cellViewCorrectAnser.layer.borderWidth = 3
       
        cell.question.text =  "-Problem=> "  + question
        cell.correctAnswer.text = "-Correct answer=> "  + correctAnswer
        cell.yourAnswer.text = "-Your answer=> "  + yourAnswer
        
        return cell
    }
    
    
}

extension AnswerViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let question = questions[indexPath.row]
        
        print(question)
        
    }
    
    
    
}
