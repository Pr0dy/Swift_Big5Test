import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    let constants = AppConstants()
    var testType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.mainScreenToQuickQuestionSegue{
            let nextVC = segue.destination as! QuizViewController
            nextVC.testType = self.testType
      }
    }
    
    @IBAction func pressedQuickTest(_ sender: Any) {
        self.testType = constants.quickTest
        performSegue(withIdentifier: constants.mainScreenToQuickQuestionSegue, sender: self)
    }
}
