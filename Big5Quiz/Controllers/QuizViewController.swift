import Foundation
import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizTypeLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!
    @IBOutlet weak var questionSubtraitLabel: UILabel!
    @IBOutlet weak var questionTrait: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var questions = QuestionDatabase()
    var testQuestions = [Question]()
    var testScores = QuizTestScores()
    var testType: String?
    var currentQuestion = 1
    let questionsPerSubtrait = 2
    
    override func viewDidLoad(){
        super.viewDidLoad()
        quizTypeLabel.text = testType
        prepareQuiz()
        displayQuestion(questionIndex: 1)
    }
    
    func prepareQuiz(){
        let questionsArr = [questions.agreeablenessQuestions,questions.conscientiounessQuestions,questions.neuroticismQuestions,questions.openessQuestions,questions.extraversionQuestions]
        
        for traitQuestions in questionsArr{
            prepareQuestions(questions: traitQuestions)
        }
    }
    
    func prepareQuestions(questions: [[Question]]){
        var count = 0
        
        for subtraitQuestionsArr in questions {
            for question in subtraitQuestionsArr {
                if count <= questionsPerSubtrait{
                testQuestions.append(question)
                count += 1
                }
            }
        }
    }

    
    @IBAction func optionPressed(_ sender: UIButton) {
                
        switch sender.titleLabel?.text{
        case "Strongly Agree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 100, lastScore: 0)
            break
        case "Agree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 75, lastScore: 25)
            break
        case "Neutral":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 50, lastScore: 50)
            break
        case "Disagree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 25, lastScore: 75)
            break
        case "Strongly Disagree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 0, lastScore: 100)
            break
        default: break
        }
        
        currentQuestion+=1
        displayQuestion(questionIndex: currentQuestion)
        
    }

    
    func displayQuestion(questionIndex: Int){
        if questionIndex <= testQuestions.count{
        DispatchQueue.main.async {
            self.questionCounterLabel.text = "Question \(self.currentQuestion) out of \(self.testQuestions.count-1)."
            self.questionTextLabel.text = self.testQuestions[questionIndex].questionContent
            self.questionTrait.text = String(describing: self.testQuestions[questionIndex].questionTrait)
            self.questionSubtraitLabel.text = String(describing: self.testQuestions[questionIndex].questionSubTrait)
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
