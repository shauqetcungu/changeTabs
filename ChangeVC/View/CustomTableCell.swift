//
//  CustobTableCell.swift
//  ChangeVC
//
//  Created by Saša Vujanovic on 30/04/2019.
//  Copyright © 2019 Shauqet Cungu. All rights reserved.
//

import UIKit

class CustomTableCell: UITableViewCell {
    
    var emoji: String?
    var message: String?
    
    var emojiView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = .systemFont(ofSize: 30)
        textView.textAlignment = .center
        textView.isScrollEnabled = false
        return textView
    }()
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(emojiView)
        self.addSubview(messageView)
        
        emojiView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        emojiView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        emojiView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        emojiView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        emojiView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        messageView.leftAnchor.constraint(equalTo: self.emojiView.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let emoji = emoji {
            emojiView.text = emoji
        }
        if let message = message {
            messageView.text = message
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

