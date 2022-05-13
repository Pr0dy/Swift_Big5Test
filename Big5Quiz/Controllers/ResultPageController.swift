import Foundation
import UIKit

class ResultPageController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var resultsTable: UITableView!
    
    let constants = AppConstants()
    /*
    let tableViewData = [TraitData(title: "Extraversion", value: 0, data: SubtraitData(isOpened: false, title: "Activity", value: 0, description: ""))]
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsTable.dataSource = self
        self.resultsTable.delegate = self
        self.resultsTable.frame = view.bounds
        self.resultsTable.register(UINib(nibName: constants.resultCellIdentifier, bundle: nil), forCellReuseIdentifier: constants.resultCellIdentifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //if expandableSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: constants.resultCellIdentifier, for: indexPath) as? ResultCell
        
        return dequeuedCell!
    }
}
