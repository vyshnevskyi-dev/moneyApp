//
//  TransactionTableViewCell.swift
//  Money App
//
//  Created by Дмитрий Котырло on 07.07.2020.
//  Copyright © 2020 _vyshnevskyi. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    
    // Outlet properties
    @IBOutlet weak var typeImageView: UIImageView!
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
