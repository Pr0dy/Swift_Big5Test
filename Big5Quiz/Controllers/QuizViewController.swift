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
    var allTraitsQuiz = true
    var oneTraitQuizIndex: Int?
    var testType: String?
    var currentQuestion = 0
    
    override func viewDidLoad(){
        super.viewDidLoad()
        quizTypeLabel.text = testType
        prepareQuiz()
        displayQuestion(questionIndex: 0)
    }
    
    // MARK: Set up quiz methods
    
    func prepareQuiz(){
        if allTraitsQuiz == true{
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
                    break
                }
            }
            count = 0
        }
    }
    
    // MARK: Supporting methods
    
    func selectTrait(traitIndex: Int) -> [[Question]]{
        switch traitIndex{
        case 0: return questions.extraversionQuestions
        case 1: return questions.agreeablenessQuestions
        case 2: return questions.conscientiounessQuestions
        case 3: return questions.neuroticismQuestions
        case 4: return questions.openessQuestions
        default: return []
        }
    }
 
    
    // MARK: Quiz answers methods
    
    @IBAction func optionPressed(_ sender: UIButton) {
                
        switch sender.titleLabel?.text{
        case constants.agree:
            traitSelect(currentQuestion: testQuestions[currentQuestion], positiveScore: constants.agreeScores[0], negativeScore: constants.agreeScores[1])
            break
        case constants.mostlyAgree:
            traitSelect(currentQuestion: testQuestions[currentQuestion], positiveScore: constants.mostlyAgreeScores[0], negativeScore: constants.mostlyAgreeScores[1])
            break
        case constants.depends:
            traitSelect(currentQuestion: testQuestions[currentQuestion], positiveScore: constants.dependsScores[0], negativeScore: constants.dependsScores[1])
            break
        case constants.mostlyDisagree:
            traitSelect(currentQuestion: testQuestions[currentQuestion], positiveScore: constants.mostlyAgreeScores[0], negativeScore: constants.mostlyAgreeScores[1])
            break
        case constants.disagree:
            traitSelect(currentQuestion: testQuestions[currentQuestion], positiveScore: constants.disagreeScores[0], negativeScore: constants.disagreeScores[1])
            break
        default: break
        }
        
        currentQuestion+=1
        displayQuestion(questionIndex: currentQuestion)
        
    }
    
    func traitSelect(currentQuestion: Question, positiveScore: Int, negativeScore: Int){
        var score: Int
        
        if currentQuestion.isPositive{
            score = positiveScore
        } else {
            score = negativeScore
        }
        
        testScores.updateScore(trait: currentQuestion.questionSubTrait, scoreValue: score)
    }

    // MARK: Question Display method
    
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
    
    // MARK: Segue methods
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.questionsToResultSegue{
            let nextVC = segue.destination as! ResultPageController
            self.testScores.averageSubtraitScores()
            nextVC.testScores = self.testScores
            nextVC.allTraitsQuiz = self.allTraitsQuiz
            nextVC.oneTraitQuizIndex = self.oneTraitQuizIndex  
        }
    }
    
    
    @IBAction func pressedQuitButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
