import Foundation
import UIKit

class ResultPageController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var resultsTable: UITableView!
    
    let constants = AppConstants()
    var resultData: [TraitData]?
    var testScores = QuizTestScores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsTable.dataSource = self
        self.resultsTable.delegate = self
        self.resultsTable.frame = view.bounds
        self.resultData = ResultData(quizTestScores: testScores).resultData
    }
    
    func traitScoreLabel(score: Int) -> String{
        switch score{
        case 0...10: return "Extremely Low (\(score))"
        case 11...24: return "Very Low (\(score))"
        case 25...39: return "Low (\(score))"
        case 40...48: return "Below Average (\(score))"
        case 48...52: return "About Average (\(score))"
        case 53...60: return "Above Average (\(score))"
        case 61...74: return "High (\(score))"
        case 75...89: return "Very High (\(score))"
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
            
            return dequeuedCell
        }
        else {
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
            
            dequeuedCell.downImage.image = nil
            dequeuedCell.traitName.text = resultData![indexPath.section].data[indexPath.row-1].title
            dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].data[indexPath.row-1].value)
            dequeuedCell.traitDescription.text =  resultData![indexPath.section].data[indexPath.row-1].description

        
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
}
