import Foundation
import UIKit

class ResultPageController: UIViewController{
    
    @IBOutlet weak var resultsTable: UITableView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    let constants = AppConstants()
    var resultData: [TraitData]?
    var testScores: QuizTestScores?
    var oneTraitQuizIndex: Int?
    let cellColors = ResultCellColors()
    var allTraitsQuiz = true
    var saveResults = false
    var showBIG5Page = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsTable.dataSource = self
        self.resultsTable.delegate = self
        self.resultsTable.frame = view.bounds
        
        if showBIG5Page == false {
        self.resultData = ResultData(quizTestScores: testScores!).resultData
        } else {
            titleLabel.text = constants.big5Label
            saveButton.isHidden = true
            
            self.resultData = ResultData(quizTestScores: QuizTestScores()).resultData
        }
        
        if saveResults == false{
            saveButton.setTitle(constants.saveResults, for: .normal)
        } else {
            saveButton.setTitle(constants.removeResults, for: .normal)
        }
    }
    
    // MARK: UI Alert methods
    
    func showAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: constants.alertActionTitle, style: .cancel, handler: { action in
        }))
        
        present(alert,animated: true)
    }
    
    @IBAction func pressedSaveResultsButton(_ sender: UIButton) {
        if saveResults == false{
            saveResults = true
            showAlert(title: constants.savingResults, message: constants.sucessfulMessage)
            sender.setTitle(constants.removeResults, for: .normal)
        } else {
            saveResults = false
            showAlert(title: constants.removingResults, message: constants.sucessfulMessage)
            sender.setTitle(constants.sucessfulMessage, for: .normal)

        }
    }
    
    // MARK: Segue methods
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if showBIG5Page == false && segue.identifier == constants.resultPageToMenuSegue{
            let nextVC = segue.destination as! MenuViewController
            if saveResults == true{
                nextVC.previousTestResults = self.testScores
            } else {
                nextVC.previousTestResults = nil
            }
      }
    }
        
        @IBAction func returnButtonPressed(_ sender: UIButton) {
            let rootVC = navigationController!.viewControllers.first as! MenuViewController
            rootVC.previousTestResults = self.testScores
            self.navigationController?.popToRootViewController(animated: true)
        }

    }
    
    
    extension ResultPageController: UITableViewDelegate, UITableViewDataSource{

    // MARK: UITableView methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if resultData![section].isOpened == true{
            return resultData![section].data.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(constants.cellHeight)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
            
            dequeuedCell.selectionStyle = .none
            dequeuedCell.downImage.image = UIImage(systemName: constants.arrowImageName)

            dequeuedCell.traitName.text = resultData![indexPath.section].title
            
            cellTextDisplay(isTraitCell: true, indexPath: indexPath, dequeuedCell: dequeuedCell)
        
                
            dequeuedCell.traitDescription.text =  resultData![indexPath.section].description
            cellColour(cell: dequeuedCell, trait: resultData![indexPath.section].title)
            
            return dequeuedCell
        }
        else {
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
            
            dequeuedCell.downImage.image = nil
            dequeuedCell.traitName.text = resultData![indexPath.section].data[indexPath.row-1].title
            
            cellTextDisplay(isTraitCell: false, indexPath: indexPath, dequeuedCell: dequeuedCell)
            
            dequeuedCell.traitDescription.text =  resultData![indexPath.section].data[indexPath.row-1].description
            cellColour(cell: dequeuedCell, trait: resultData![indexPath.section].title)
        
            return dequeuedCell
            }
        }
        
        func cellTextDisplay(isTraitCell: Bool, indexPath: IndexPath, dequeuedCell: CustomCell ){
            if showBIG5Page == false{
                if allTraitsQuiz == true || indexPath.section == oneTraitQuizIndex{
                    if isTraitCell == true{
                        dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].value)
                    } else {
                        dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].data[indexPath.row-1].value)
                    }
                } else {
                
                    dequeuedCell.traitScore.text = constants.notTestedMessage
                }
                    
            } else {
                dequeuedCell.traitScore.isHidden = true
             }
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
        if resultData![indexPath.section].isOpened == true{
            resultData![indexPath.section].isOpened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
            
        } else {
            resultData![indexPath.section].isOpened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
        }
    }
  
    // MARK: Supporting Methods
        
    func traitScoreLabel(score: Int) -> String{
        switch score{
        case 0...10: return "Extremely Low (\(score))"
        case 11...20: return "Very Low (\(score))"
        case 21...30: return "Low (\(score))"
        case 31...45: return "Below Average (\(score))"
        case 46...54: return "About Average (\(score))"
        case 55...69: return "Above Average (\(score))"
        case 70...79: return "High (\(score))"
        case 80...89: return "Very High (\(score))"
        case 90...100: return "Extremely High (\(score))"
           default: break
        }
        return ""
    }
    
    func cellColour(cell: CustomCell, trait: String){
        switch trait{
        case Trait.Extraversion.rawValue: cell.backgroundColor = cellColors.extraversionColor;  break;
        case Trait.Agreeableness.rawValue: cell.backgroundColor = cellColors.agreeablenessColor;  break;
        case Trait.Conscientiousness.rawValue: cell.backgroundColor = cellColors.conscientiounessColor;  break;
        case Trait.Openess.rawValue: cell.backgroundColor = cellColors.openenessColor;  break;
        case Trait.Neuroticism.rawValue: cell.backgroundColor = cellColors.neuroticismColor;  break;
        default: break;
        }
    }
}


