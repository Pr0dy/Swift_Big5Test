import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    let constants = AppConstants()
    var previousTestResults: QuizTestScores?
    var testType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.mainScreenToQuickQuestionSegue{
            let nextVC = segue.destination as! QuizViewController
            nextVC.testType = self.testType
        }
        if segue.identifier == constants.menuToResultPageSegue{
            let nextVC = segue.destination as! ResultPageController
            nextVC.testScores = self.previousTestResults
        }
    }
    
    @IBAction func pressedQuickTest(_ sender: Any) {
        self.testType = constants.quickTest
        performSegue(withIdentifier: constants.mainScreenToQuickQuestionSegue, sender: self)
    }
    @IBAction func pressedMyResultsButton(_ sender: Any) {
        if self.previousTestResults != nil {
        self.testType = constants.quickTest
        performSegue(withIdentifier: constants.menuToResultPageSegue, sender: self)
        }
    }
}
