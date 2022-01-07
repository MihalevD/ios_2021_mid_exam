//
//  AgentTableViewCell.swift
//  ios_2021_mid_exam
//
//  Created by Denislav's Mac Book on 7.01.22.
//

import UIKit

class AgentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var agentPhoneNumber: UILabel!
    @IBOutlet weak var agentName: UILabel!
    @IBOutlet weak var agentImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
