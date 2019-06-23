//
//  MyProtoTableViewCell.swift
//  IdleTimer
//

import UIKit

class MyProtoTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var attain: UILabel!
    @IBOutlet weak var success: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var study_time: UILabel!
    @IBOutlet weak var weekday: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
