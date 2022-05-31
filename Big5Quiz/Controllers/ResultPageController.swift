import Foundation
import UIKit

class ResultPageController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var resultsTable: UITableView!
    
    let constants = AppConstants()
    var resultData: [TraitData]?
    var testScores: QuizTestScores?
    let cellColors = ResultCellColors()
    var saveResults = false
    var showBIG5Page = false
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsTable.dataSource = self
        self.resultsTable.delegate = self
        self.resultsTable.frame = view.bounds
        self.resultData = ResultData(quizTestScores: testScores!).resultData
        
        if saveResults == false{
            saveButton.setTitle("Save results", for: .normal)
        } else {
            saveButton.setTitle("Remove results", for: .normal)
        }
        
    }
    
    @IBAction func returnButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: constants.resultPageToMenuSegue, sender: self)
    }
    
    func showAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Back", style: .cancel, handler: { action in
        }))
        
        present(alert,animated: true)
    }
    
    @IBAction func pressedSaveResultsButton(_ sender: UIButton) {
        if saveResults == false{
            saveResults = true
            showAlert(title: "Saving results..", message: "Sucessful!")
            sender.setTitle("Remove results", for: .normal)
        } else {
            saveResults = false
            showAlert(title: "Removing results..", message: "Sucessful!")
            sender.setTitle("Save results", for: .normal)

        }
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.resultPageToMenuSegue{
            let nextVC = segue.destination as! MenuViewController
            if saveResults == true{
                nextVC.previousTestResults = self.testScores
            } else {
                nextVC.previousTestResults = nil
            }
      }
    }
    
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

            dequeuedCell.downImage.image = UIImage(systemName: "arrow.down.app.fill")
                        
            dequeuedCell.traitName.text = resultData![indexPath.section].title
            dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].value)
            dequeuedCell.traitDescription.text =  resultData![indexPath.section].description
            cellColour(cell: dequeuedCell, trait: resultData![indexPath.section].title)
            
            return dequeuedCell
        }
        else {
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
            
            dequeuedCell.downImage.image = nil
            dequeuedCell.traitName.text = resultData![indexPath.section].data[indexPath.row-1].title
            dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].data[indexPath.row-1].value)
            dequeuedCell.traitDescription.text =  resultData![indexPath.section].data[indexPath.row-1].description
            cellColour(cell: dequeuedCell, trait: resultData![indexPath.section].title)
        
            return dequeuedCell
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
    
    func cellColour(cell: CustomCell, trait: String){
        switch trait{
        case "Agreeableness": cell.backgroundColor = cellColors.agreeablenessColor;  break;
        case "Extraversion": cell.backgroundColor = cellColors.extraversionColor;  break;
        case "Conscientiousness": cell.backgroundColor = cellColors.conscientiounessColor;  break;
        case "Openess": cell.backgroundColor = cellColors.openenessColor;  break;
        case "Neuroticism": cell.backgroundColor = cellColors.neuroticismColor;  break;
        default: break;
        }
    }
}
