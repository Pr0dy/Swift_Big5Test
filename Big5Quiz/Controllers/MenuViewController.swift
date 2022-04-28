import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    var constants = AppConstants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedQuickTest(_ sender: Any) {
        performSegue(withIdentifier: constants.mainScreenToQuickQuestionSegue, sender: self)
    }
}
