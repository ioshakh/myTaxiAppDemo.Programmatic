//
//  UIStackView + Extension.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit

extension UIStackView {
    convenience public init(
        axis: NSLayoutConstraint.Axis = .vertical,
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        backgroundColor:UIColor = .blue,
        spacing: CGFloat = 0,
        margins: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    ) {
        self.init()
        self.axis = axis
        self.alignment = alignment
        self.distribution = distribution
        self.backgroundColor =  backgroundColor
        self.spacing = spacing
        self.isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = margins
    }
    
    func removeAllArrangedSubviews() {
        let removedSubviews: [UIView] = arrangedSubviews.reduce([]) {
            removeArrangedSubview($1)
            return $0 + [$1]
        }
        NSLayoutConstraint.deactivate(removedSubviews.flatMap { $0.constraints })
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
    
    func addArrangedSubviews(views: [UIView]) {
        for view in views {
            self.addArrangedSubview(view)
        }
    }
    
    func margins(_ margins: UIEdgeInsets) {
        self.layoutMargins = margins
    }
}
