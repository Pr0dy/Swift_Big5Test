import Foundation
import UIKit

class ResultPageController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var resultsTable: UITableView!
    
    let constants = AppConstants()
    var resultData: [TraitData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsTable.dataSource = self
        self.resultsTable.delegate = self
        self.resultsTable.frame = view.bounds
        self.resultsTable.register(UINib(nibName: constants.resultCellIdentifier, bundle: nil), forCellReuseIdentifier: constants.resultCellIdentifier)
        self.resultsTable.register(UINib(nibName: constants.resultCellIdentifier, bundle: nil), forCellReuseIdentifier: constants.subtraitCellIdentifier)
        
        self.resultData =
            [TraitData(isOpened: false,title:constants.Extraversion,value:0, data:
            [SubtraitData(title: constants.Activity, value: 0, description: ""),
            SubtraitData(title: constants.Assertiveness, value: 0, description: ""),
            SubtraitData(title: constants.Cheerfulness, value: 0, description: ""),
            SubtraitData(title: constants.Excitement_Seeking, value: 0, description: ""),
            SubtraitData(title: constants.Friendliness, value: 0, description: ""),
            SubtraitData(title: constants.Gregariouness, value: 0, description: "")]),
            TraitData(isOpened: false, title: constants.Agreeableness, value: 0, data:
             [SubtraitData(title: constants.Altruism, value: 0, description: ""),
             SubtraitData(title: constants.Cooperation, value: 0, description: ""),
             SubtraitData(title: constants.Modesty, value: 0, description: ""),
             SubtraitData(title: constants.Morality, value: 0, description: ""),
             SubtraitData(title: constants.Sympathy, value: 0, description: ""),
             SubtraitData(title: constants.Trust, value: 0, description: "")]),
            TraitData(isOpened: false, title: constants.Conscientiousness, value: 0, data:
             [SubtraitData(title: constants.Achievement_Striving, value: 0, description: ""),
             SubtraitData(title: constants.Cautiousness, value: 0, description: ""),
             SubtraitData(title: constants.Dutifulness, value: 0, description: ""),
             SubtraitData(title: constants.Orderliness, value: 0, description: ""),
             SubtraitData(title: constants.Self_Efficacy, value: 0, description: ""),
             SubtraitData(title: constants.Self_Discipline, value: 0, description: "")]),
            TraitData(isOpened: false, title: constants.Neuroticism, value: 0, data:
             [SubtraitData(title: constants.Anger, value: 0, description: ""),
             SubtraitData(title: constants.Anxiety, value: 0, description: ""),
             SubtraitData(title: constants.Depression, value: 0, description: ""),
             SubtraitData(title: constants.Immoderation, value: 0, description: ""),
             SubtraitData(title: constants.Vulnerability, value: 0, description: ""),
             SubtraitData(title: constants.Self_Consciouness, value: 0, description: "")]),
            TraitData(isOpened: false, title: constants.Openess, value: 0, data:
             [SubtraitData(title: constants.Imagination, value: 0, description: ""),
             SubtraitData(title: constants.Adventurousness, value: 0, description: ""),
             SubtraitData(title: constants.Liberalism, value: 0, description: ""),
             SubtraitData(title: constants.Artistic_Interests, value: 0, description: ""),
             SubtraitData(title: constants.Intellect, value: 0, description: ""),
             SubtraitData(title: constants.Emotionality, value: 0, description: "")])]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if resultData![section].isOpened == true{
            return resultData![section].data.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? ResultCell else { return UITableViewCell() }
            
            dequeuedCell.textLabel?.text = resultData![indexPath.section].title
            
            return dequeuedCell
        }
        else {
            guard let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.subtraitCellIdentifier, for: indexPath) as? SubtraitCell else { return UITableViewCell() }
            
            dequeuedCell.textLabel?.text = resultData![indexPath.section].data[indexPath.row-1].title
            
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
