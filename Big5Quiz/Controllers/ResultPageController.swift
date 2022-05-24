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
        [TraitData(isOpened: false,title: Trait.Extraversion.rawValue, value: testScores.Extraversion.traitScore, description: TraitDescription.Extraversion.rawValue , data:
                    [SubtraitData(title: Subtrait.Activity.rawValue, value: testScores.Extraversion.activityScore, description: ""),
                     SubtraitData(title: Subtrait.Assertiveness.rawValue, value: testScores.Extraversion.assertivenessScore, description: ""),
                     SubtraitData(title: Subtrait.Cheerfulness.rawValue, value: testScores.Extraversion.cheerfulnessScore, description: ""),
                     SubtraitData(title: Subtrait.Excitement_Seeking.rawValue, value: testScores.Extraversion.excitementSeekingScore, description: ""),
                     SubtraitData(title: Subtrait.Friendliness.rawValue, value:testScores.Extraversion.friendlinessScore, description: ""),
                     SubtraitData(title: Subtrait.Gregariouness.rawValue, value: testScores.Extraversion.gregariounessScore, description: "")]),
         TraitData(isOpened: false, title: Trait.Agreeableness.rawValue, value: testScores.Agreeableness.traitScore, description: TraitDescription.Agreeableness.rawValue , data:
                    [SubtraitData(title: Subtrait.Altruism.rawValue, value: testScores.Agreeableness.altruismScore, description: ""),
                     SubtraitData(title: Subtrait.Cooperation.rawValue, value: testScores.Agreeableness.cooperationScore, description: ""),
                     SubtraitData(title: Subtrait.Modesty.rawValue, value: testScores.Agreeableness.modestyScore, description: ""),
                     SubtraitData(title: Subtrait.Morality.rawValue, value: testScores.Agreeableness.moralityScore, description: ""),
                     SubtraitData(title: Subtrait.Sympathy.rawValue, value: testScores.Agreeableness.sympathyScore, description: ""),
                     SubtraitData(title: Subtrait.Trust.rawValue, value: testScores.Agreeableness.trustScore, description: "")]),
         TraitData(isOpened: false, title: Trait.Conscientiousness.rawValue, value: testScores.Conscientiousness.traitScore, description: TraitDescription.Conscientiousness .rawValue , data:
                        [SubtraitData(title: Subtrait.Achievement_Striving.rawValue, value: testScores.Conscientiousness.achievementStrivingScore, description: ""),
                         SubtraitData(title: Subtrait.Cautiousness.rawValue, value: testScores.Conscientiousness.cautiousnessScore, description: ""),
                         SubtraitData(title: Subtrait.Dutifulness.rawValue, value: testScores.Conscientiousness.dutifulnessScore, description: ""),
                         SubtraitData(title: Subtrait.Orderliness.rawValue, value: testScores.Conscientiousness.orderlinessScore, description: ""),
                         SubtraitData(title: Subtrait.Self_Efficacy.rawValue, value: testScores.Conscientiousness.selfEfficacyScore, description: ""),
                         SubtraitData(title: Subtrait.Self_Discipline.rawValue, value: testScores.Conscientiousness.selfDisciplineScore, description: "")]),
         TraitData(isOpened: false, title: Trait.Neuroticism.rawValue, value: testScores.Neuroticism.traitScore, description: TraitDescription.Neuroticism.rawValue , data:
                    [SubtraitData(title: Subtrait.Anger.rawValue, value: testScores.Neuroticism.angerScore, description: ""),
                     SubtraitData(title: Subtrait.Anxiety.rawValue, value: testScores.Neuroticism.anxietyScore, description: ""),
                     SubtraitData(title: Subtrait.Depression.rawValue, value: testScores.Neuroticism.depressionScore, description: ""),
                     SubtraitData(title: Subtrait.Immoderation.rawValue, value: testScores.Neuroticism.immoderationScore, description: ""),
                     SubtraitData(title: Subtrait.Vulnerability.rawValue, value: testScores.Neuroticism.vulnerabilityScore, description: ""),
                     SubtraitData(title: Subtrait.Self_Consciouness.rawValue, value: testScores.Neuroticism.selfConsciounessScore, description: "")]),
         TraitData(isOpened: false, title: Trait.Openess.rawValue, value: testScores.Openess.traitScore, description: TraitDescription.Openess.rawValue , data:
                    [SubtraitData(title: Subtrait.Imagination.rawValue, value: testScores.Openess.imaginationScore, description: ""),
                     SubtraitData(title: Subtrait.Adventurousness.rawValue, value: testScores.Openess.adventurousnessScore, description: ""),
                     SubtraitData(title: Subtrait.Liberalism.rawValue, value: testScores.Openess.liberalismScore, description: ""),
                     SubtraitData(title: Subtrait.Artistic_Interests.rawValue, value: testScores.Openess.artisticInterestsScore, description: ""),
                     SubtraitData(title: Subtrait.Intellect.rawValue, value: testScores.Openess.intelectScore, description: ""),
                     SubtraitData(title: Subtrait.Emotionality.rawValue, value: testScores.Openess.emotionalityScore, description: "")])]
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
