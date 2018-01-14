//
//  PageCell.swift
//  ClcokApp
//
//  Created by Jiayu Shao on 2018-01-13.
//  Copyright © 2018 R&E Software Studio. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        //        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .black
        iv.image = UIImage(named:"page1")
        iv.clipsToBounds = true
        return iv
    }()
    let textView: UITextView = {
        let tv = UITextView()
        tv.text="Hello World"
        tv.isEditable=false
        return tv
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
        backgroundColor = .blue
        addSubview(imageView)
        addSubview(textView)
        imageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        textView.anchorToTop(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive=true
        
    }
    
}
