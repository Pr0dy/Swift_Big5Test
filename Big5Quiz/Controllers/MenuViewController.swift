import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    var constants = AppConstants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.mainScreenToQuickQuestionSegue{
            let nextVC = segue.destination as! QuizViewController
        }
    }
    
}
