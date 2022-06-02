//
//  CustomCell.swift
//  Big5Quiz
//
//  Created by leandro.banha on 02/06/2022.
//

import UIKit

class CustomCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var downImage: UIImageView!
    @IBOutlet weak var traitScore: UILabel!
    @IBOutlet weak var traitName: UILabel!
    @IBOutlet weak var traitDescription: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
