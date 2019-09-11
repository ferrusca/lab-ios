//
//  AlumnoTableViewCell.swift
//  tablas
//
//  Created by 2020-1 on 9/11/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit

class AlumnoTableViewCell: UITableViewCell {

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var edad: UILabel!
    @IBOutlet weak var foto: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
