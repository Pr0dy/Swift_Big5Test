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
    var constants = AppConstants()
    var oneTraitQuiz = false
    var oneTraitQuizIndex: Int?
    var testType: String?
    var currentQuestion = 0
    
    override func viewDidLoad(){
        super.viewDidLoad()
        quizTypeLabel.text = testType
        prepareQuiz()
        displayQuestion(questionIndex: 0)
    }
    
    func selectTrait(traitIndex: Int) -> [[Question]]{
        switch traitIndex{
        case 0: return questions.extraversionQuestions
        case 1: return questions.extraversionQuestions
        case 2: return questions.extraversionQuestions
        case 3: return questions.extraversionQuestions
        case 4: return questions.extraversionQuestions
        default: return []
        }
    }
    
    func prepareQuiz(){
        if oneTraitQuiz == false{
        let questionsArr = [questions.agreeablenessQuestions,questions.conscientiounessQuestions,questions.neuroticismQuestions,questions.openessQuestions,questions.extraversionQuestions]
        
        for traitQuestions in questionsArr{
            prepareQuestions(questions: traitQuestions)
        }
        } else {
            prepareQuestions(questions: selectTrait(traitIndex: oneTraitQuizIndex!))
        }
    }
    
    func prepareQuestions(questions: [[Question]]){
        var count = 0
        
        for subtraitQuestionsArr in questions {
            for question in subtraitQuestionsArr {
                if count < numberOfQuestions{
                testQuestions.append(question)
                count += 1
                } else {
                    count = 0
                    break
                }
            }
        }
    }
 
    
    @IBAction func optionPressed(_ sender: UIButton) {
                
        switch sender.titleLabel?.text{
        case "Agree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 100, lastScore: 0)
            break
        case "Moslty Agree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 75, lastScore: 25)
            break
        case "Depends":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 50, lastScore: 50)
            break
        case "Mostly Disagree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 25, lastScore: 75)
            break
        case "Disagree":
            traitSelect(currentQuestion: testQuestions[currentQuestion], firstScore: 0, lastScore: 100)
            break
        default: break
        }
        
        currentQuestion+=1
        displayQuestion(questionIndex: currentQuestion)
        
    }

    
    func displayQuestion(questionIndex: Int){
        if questionIndex != testQuestions.count{
        DispatchQueue.main.async {
            self.questionCounterLabel.text = "Question \(self.currentQuestion+1) out of \(self.testQuestions.count)."
            self.questionTextLabel.text = self.testQuestions[questionIndex].questionContent
            self.questionTrait.text = String(describing: self.testQuestions[questionIndex].questionTrait)
            self.questionSubtraitLabel.text = String(describing: self.testQuestions[questionIndex].questionSubTrait)
        }
        } else {
            performSegue(withIdentifier: constants.questionsToResultSegue, sender: self)
        }
            
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.questionsToResultSegue{
            let nextVC = segue.destination as! ResultPageController
            self.testScores.averageSubtraitScores()
            nextVC.testScores = self.testScores
      }
    }

    
    func traitSelect(currentQuestion: Question, firstScore: Int, lastScore: Int){
        var score: Int
        
        if currentQuestion.isPositive{
            score = firstScore
        } else {
            score = lastScore
        }
        
        testScores.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
    }
}
