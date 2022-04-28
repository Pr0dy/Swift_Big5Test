import Foundation
import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizTypeLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!
    @IBOutlet weak var questionSubtraitLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var questions = QuestionDatabase()
    var sortedQuestions = [Question]()
    var testType: String?
    var currentQuestion = 0
    
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
        
        DispatchQueue.main.async {
            self.questionCounterLabel.text = "Question \(self.currentQuestion+1) out of \(self.sortedQuestions.count)."
        }
        
        displayQuestion(questionIndex: currentQuestion)
    }
    
    func displayQuestion(questionIndex: Int){
        DispatchQueue.main.async {
            self.questionTextLabel.text = self.sortedQuestions[questionIndex].questionContent
            self.questionSubtraitLabel.text = String(describing: self.sortedQuestions[questionIndex].questionSubTrait)
        }
    }
}
