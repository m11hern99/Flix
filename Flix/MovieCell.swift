//
//  MovieCell.swift
//  Flix
//
//  Created by Maria Hernandez on 2/25/22.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var tittleLabel: UILabel!
   
    @IBOutlet weak var synopsisLabel: UILabel!
  
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}