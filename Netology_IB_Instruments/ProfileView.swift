//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Александр Варганов on 22.10.2022.
//

import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var nameImage: UIImageView!
    
    @IBOutlet weak var nameLabel1: UILabel!
    
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBOutlet weak var nameLabel3: UILabel!
    
    @IBOutlet weak var nameTextView: UITextView!
    
    
    
    override init(frame: CGRect) {
        super.init (frame: frame)
        self.commonInit ()
    }
    
    required init?(coder: NSCoder) {
        super.init (coder: coder)
        self.commonInit ()
    }
    
    private func commonInit () {
        
        let bundle = Bundle.init (for: ProfileView.self)
        if let viewToAdd = bundle.loadNibNamed("ProfileView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
        }
        
    }
}

