import Foundation
import UIKit

class CustomTestPageController: UIViewController{
    
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    @IBOutlet weak var pickTestSize: UIPickerView!
    @IBOutlet weak var pickTestTraits: UIPickerView!
    
    let constants = AppConstants()
    let testSizes = [TestSize.quick,TestSize.small,TestSize.normal,TestSize.full]
    let testDescriptions = [TestSizeDescription.quick,TestSizeDescription.small,TestSizeDescription.normal,TestSizeDescription.full]
    let testType = [Trait.All,Trait.Extraversion,Trait.Openess,Trait.Neuroticism,Trait.Conscientiousness,Trait.Agreeableness]
    var traitIndex = AppConstants().indexDefaultNumber
    var allTraits = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickTestSize.delegate = self
        pickTestSize.dataSource = self
        pickTestTraits.delegate = self
        pickTestTraits.dataSource = self
    }
    
    // MARK: Segue Methods
    
    @IBAction func pressedStartTestButton(_ sender: UIButton) {
        performSegue(withIdentifier: constants.customTestToQuizSegue, sender: self)
    }
    
    @IBAction func pressedReturnButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
    
// MARK: UIPicker Methods

extension CustomTestPageController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return constants.defaultNumberOfComponents
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
    
    // MARK: Supporting methods
    
    func computeTotalQuestions(){
        let value: Int?
        if traitIndex == constants.indexDefaultNumber {
            allTraits = true
            value = (constants.numberOfSubtraitsPerTrait * numberOfQuestions) * constants.numberOfTraits
        } else {
            allTraits = false
           value = constants.numberOfSubtraitsPerTrait * numberOfQuestions
        }
    
        self.totalQuestionsLabel.text = "\(constants.totalQuestionsSeleceted) \(value!)"
        
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
}

