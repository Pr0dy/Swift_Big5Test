import Foundation
import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizTypeLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!
    @IBOutlet weak var questionSubtraitLabel: UILabel!
    @IBOutlet weak var questionTrait: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var questions = QuestionDatabase()
    var sortedQuestions = [Question]()
    var testType: String?
    var currentQuestion = 1
    
    override func viewDidLoad(){
        super.viewDidLoad()
        quizTypeLabel.text = testType
        prepareQuiz()
    }
    
    func prepareQuiz(){
        
        let quizQuestions = [questions.extraversionQuestions,questions.agreeablenessQuestions,questions.conscientiounessQuestions,questions.neuroticismQuestions,questions.openessQuestions]
        
        for questionArr in quizQuestions{
            for question in questionArr{
                sortedQuestions.append(question)
            }
        }
        
        displayQuestion(questionIndex: currentQuestion)
    }
    
    @IBAction func optionPressed(_ sender: UIButton) {
        currentQuestion+=1
        displayQuestion(questionIndex: currentQuestion)
        
        switch sender.currentAttributedTitle?.string{
        case "Strongly Agree": break
        case "Agree": break
        case "Neutral": break
        case "Disagree": break
        case "Strongly Disagree": break
        default: break
        }
        
    }

    
    func displayQuestion(questionIndex: Int){
        if questionIndex <= sortedQuestions.count{
        DispatchQueue.main.async {
            self.questionCounterLabel.text = "Question \(self.currentQuestion) out of \(self.sortedQuestions.count-1)."
            self.questionTextLabel.text = self.sortedQuestions[questionIndex].questionContent
            self.questionTrait.text = String(describing: self.sortedQuestions[questionIndex].questionTrait)
            self.questionSubtraitLabel.text = String(describing: self.sortedQuestions[questionIndex].questionSubTrait)
        }
        }
    }
}
