//
//  BounceSuccessfulView.swift
//  SuccessfulIndicatorView
//
//  Created by 刘业臻 on 16/6/9.
//  Copyright © 2016年 luiyezheng. All rights reserved.
//

import UIKit

public class BounceSuccessfulView: UIView {
    public var textLabel: UILabel?
    
    init() {
        super.init(frame: CGRectZero)
        setup()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        
    }
    
    private func setup() {
        backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.7)
        layer.cornerRadius = 6
        clipsToBounds = true
        textLabel = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: bounds.width * 0.8, height: bounds.height))
        textLabel?.adjustsFontSizeToFitWidth = true
        textLabel?.center = center
        textLabel?.textAlignment = .Center
        textLabel?.backgroundColor = UIColor.clearColor()
        textLabel?.textColor = UIColor.whiteColor()
        textLabel?.text = "Image Saved"
        textLabel?.font = UIFont(name: "Helvetica-Bold", size: 15)
        hidden = true
        addSubview(textLabel!)
        
    }
    
    public func startAnimation() {
        
        self.transform = CGAffineTransformMakeScale(1.0, 1.0)
        hidden = false
        alpha = 1.0

        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5.0, options: [.CurveEaseInOut], animations: {
            self.transform = CGAffineTransformMakeScale(1.2, 1.2)
            }, completion: {(finished) in
                UIView.animateWithDuration(0.8, delay: 0.7, options: [], animations: {
                    self.alpha = 0.0
                    }, completion: {(finished) in
                        self.hidden = true
                })
        })
    }
}

