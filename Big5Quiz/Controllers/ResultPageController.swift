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
        
        self.resultData =
        [TraitData(isOpened: false,title: Trait.Extraversion.rawValue, value: 0, data:
                    [SubtraitData(title: Subtrait.Activity.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Assertiveness.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Cheerfulness.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Excitement_Seeking.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Friendliness.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Gregariouness.rawValue, value: 0, description: "")]),
         TraitData(isOpened: false, title: Trait.Agreeableness.rawValue, value: 0, data:
                    [SubtraitData(title: Subtrait.Altruism.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Cooperation.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Modesty.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Morality.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Sympathy.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Trust.rawValue, value: 0, description: "")]),
         TraitData(isOpened: false, title: Trait.Conscientiousness.rawValue, value: 0, data:
                        [SubtraitData(title: Subtrait.Achievement_Striving.rawValue, value: 0, description: ""),
                         SubtraitData(title: Subtrait.Cautiousness.rawValue, value: 0, description: ""),
                         SubtraitData(title: Subtrait.Dutifulness.rawValue, value: 0, description: ""),
                         SubtraitData(title: Subtrait.Orderliness.rawValue, value: 0, description: ""),
                         SubtraitData(title: Subtrait.Self_Efficacy.rawValue, value: 0, description: ""),
                         SubtraitData(title: Subtrait.Self_Discipline.rawValue, value: 0, description: "")]),
         TraitData(isOpened: false, title: Trait.Neuroticism.rawValue, value: 0, data:
                    [SubtraitData(title: Subtrait.Anger.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Anxiety.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Depression.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Immoderation.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Vulnerability.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Self_Consciouness.rawValue, value: 0, description: "")]),
         TraitData(isOpened: false, title: Trait.Openess.rawValue, value: 0, data:
                    [SubtraitData(title: Subtrait.Imagination.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Adventurousness.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Liberalism.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Artistic_Interests.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Intellect.rawValue, value: 0, description: ""),
                     SubtraitData(title: Subtrait.Emotionality.rawValue, value: 0, description: "")])]
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
            return resultData![section].data.count + 2
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

            dequeuedCell.traitName.text = resultData![indexPath.section].title
            dequeuedCell.traitScore.text = traitScoreLabel(score: resultData![indexPath.section].value)
            
            return dequeuedCell
        }
        else {
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
        
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
