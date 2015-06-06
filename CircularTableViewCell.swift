//
//  CircularTableViewCell.swift
//  PreventUILabelSuperviewResizing
//
//  Created by Audrey Li on 6/6/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit


class CircularTableViewCell: UITableViewCell {
    @IBOutlet weak var circularImageView: UIImageView!
    override func layoutSubviews() {
       circularImageView.round()
    }
}

public extension UIView {
    public func round() {
        let width = bounds.width < bounds.height ? bounds.width : bounds.height
        let mask = CAShapeLayer()
        mask.path = UIBezierPath(ovalInRect: CGRectMake(bounds.midX - width / 2, bounds.midY - width / 2, width, width)).CGPath
        self.layer.mask = mask
    }
}

