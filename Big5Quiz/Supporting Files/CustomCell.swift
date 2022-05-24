//
//  CustomCell.swift
//  Big5Quiz
//
//  Created by leandro.banha on 24/05/2022.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var traitName: UILabel!
    @IBOutlet weak var traitScore: UILabel!
    @IBOutlet weak var traitDescription: UILabel!
    @IBOutlet weak var downImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
