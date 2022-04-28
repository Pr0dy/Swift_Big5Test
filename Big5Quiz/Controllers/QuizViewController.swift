import Foundation
import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var typeTestLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!
    @IBOutlet weak var questionSubtraitLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    let questions = QuestionDatabase()
    var testType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}
