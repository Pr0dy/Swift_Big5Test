import Foundation
import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizTypeLabel: UILabel!
    
    let questions = QuestionDatabase()
    var testType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTypeLabel.text = testType
    }
    
    

}
