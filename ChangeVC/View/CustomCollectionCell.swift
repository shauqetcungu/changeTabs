//
//  CustomCollectionCell.swift
//  ChangeVC
//
//  Created by Saša Vujanovic on 30/04/2019.
//  Copyright © 2019 Shauqet Cungu. All rights reserved.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {
    
    var message: String?
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.font = .systemFont(ofSize: 50)
        textView.textAlignment = .center
        textView.isScrollEnabled = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        messageView.frame = contentView.bounds
        self.contentView.addSubview(messageView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = message {
            messageView.text = message
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
