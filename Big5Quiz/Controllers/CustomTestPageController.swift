import Foundation
import UIKit

class CustomTestPageController: UIViewController{
    
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    @IBAction func pressedStartTestButton(_ sender: UIButton) {
        performSegue(withIdentifier: constants.customTestToQuizSegue, sender: self)
    }
    
    @IBAction func pressedReturnButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var pickTestSize: UIPickerView!
    @IBOutlet weak var pickTestTraits: UIPickerView!
    let constants = AppConstants()
    let testSizes = [TestSize.quick,TestSize.small,TestSize.normal,TestSize.full]
    let testDescriptions = [TestSizeDescription.quick,TestSizeDescription.small,TestSizeDescription.normal,TestSizeDescription.full]
    let testType = [Trait.All,Trait.Extraversion,Trait.Openess,Trait.Neuroticism,Trait.Conscientiousness,Trait.Agreeableness]
    var traitIndex = -1
    var allTraits = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickTestSize.delegate = self
        pickTestSize.dataSource = self
        pickTestTraits.delegate = self
        pickTestTraits.dataSource = self
    }
}
    
extension CustomTestPageController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pickTestSize{
            return testSizes.count
        } else {
            return testType.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickTestSize{
            return testDescriptions[row].rawValue
        } else {
            return testType[row].rawValue
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickTestSize{
            numberOfQuestions = testSizes[row].rawValue
            computeTotalQuestions()
            
        }
        if pickerView == pickTestTraits {
            traitIndex = selectTraitIndex(trait: testType[row])
            computeTotalQuestions()
        }
    }
    
    func computeTotalQuestions(){
        let value: Int?
        if traitIndex == -1 {
            allTraits = true
            value = (6 * numberOfQuestions) * 5
        } else {
            allTraits = false
           value = 6 * numberOfQuestions
        }
    
            self.totalQuestionsLabel.text = "Total questions selected: \(value!)"
        
    }
    
    func selectTraitIndex(trait: Trait) -> Int{
        switch trait {
        case .All:
            return -1
        case .Extraversion:
            return 0
        case .Agreeableness:
            return 1
        case .Conscientiousness:
            return 2
        case .Neuroticism:
            return 3
        case .Openess:
            return 4
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.customTestToQuizSegue{
           let nextVC = segue.destination as! QuizViewController
            nextVC.allTraitsQuiz = true
            nextVC.oneTraitQuizIndex = self.traitIndex
            nextVC.testType = constants.customTest
            nextVC.allTraitsQuiz = self.allTraits
       }
    }
}

