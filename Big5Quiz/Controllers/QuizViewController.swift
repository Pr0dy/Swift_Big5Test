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
    var testScores = QuizTestScores()
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
                
        switch sender.titleLabel?.text{
        case "Strongly Agree":
            traitSelect(currentQuestion: sortedQuestions[currentQuestion], firstScore: 100, lastScore: 0)
            break
        case "Agree":
            traitSelect(currentQuestion: sortedQuestions[currentQuestion], firstScore: 75, lastScore: 25)
            break
        case "Neutral":
            traitSelect(currentQuestion: sortedQuestions[currentQuestion], firstScore: 50, lastScore: 50)
            break
        case "Disagree":
            traitSelect(currentQuestion: sortedQuestions[currentQuestion], firstScore: 25, lastScore: 75)
            break
        case "Strongly Disagree":
            traitSelect(currentQuestion: sortedQuestions[currentQuestion], firstScore: 0, lastScore: 100)
            break
        default: break
        }
        
        currentQuestion+=1
        displayQuestion(questionIndex: currentQuestion)
        
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
    
    func traitSelect(currentQuestion: Question, firstScore: Int, lastScore: Int){
        var score: Int
        
        if currentQuestion.isPositive{
            score = firstScore
        } else {
            score = lastScore
        }
        
        switch currentQuestion.questionTrait{
        case .Extraversion: testScores.Extraversion.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
            break
        case .Conscientiousness: testScores.Conscientiousness.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
            break
        case.Agreeableness: testScores.Agreeableness.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
            break
        case.Neuroticism: testScores.Neuroticism.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
            break
        case.Openess: testScores.Openess.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
            break
        }
    }
}
