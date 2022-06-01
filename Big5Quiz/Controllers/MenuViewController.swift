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
        else if segue.identifier == constants.menuToResultPageSegue{
            let nextVC = segue.destination as! ResultPageController
            nextVC.testScores = self.previousTestResults
            nextVC.saveResults = true
        }
        else if segue.identifier == constants.menuToBIG5traitsScreenSegue{
            let nextVC = segue.destination as! ResultPageController
            nextVC.showBIG5Page = true
        }
        else if segue.identifier == constants.menuToCustomTestSegue{
            let nextVC = segue.destination as! CustomTestViewController
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
        } else {
            let alert = UIAlertController(title: "No results saved :(", message: "Make a test then save the results!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Back", style: .cancel, handler: { action in
            }))
            
            present(alert,animated: true)
        }
        
    }
    @IBAction func pressedBIG5Button(_ sender: UIButton) {
        self.testType = constants.quickTest
        performSegue(withIdentifier: constants.menuToBIG5traitsScreenSegue, sender: self)
        }
    
}
