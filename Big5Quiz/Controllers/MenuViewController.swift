import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    var constants = AppConstants()
    
    @IBAction func pressedQuickTest(_ sender: Any) {
        performSegue(withIdentifier: constants.mainScreenToQuickQuestionSegue, sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
