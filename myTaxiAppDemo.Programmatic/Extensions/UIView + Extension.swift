//
//  UIView + Extension.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit

extension UIView {
    
    func borders(for edges:[UIRectEdge], width:CGFloat = 1, color: UIColor = .black) {

        if edges.contains(.all) {
            layer.borderWidth = width
            layer.borderColor = color.cgColor
        } else {
            let allSpecificBorders:[UIRectEdge] = [.top, .bottom, .left, .right]

            for edge in allSpecificBorders {
                if let v = viewWithTag(Int(edge.rawValue)) {
                    v.removeFromSuperview()
                }

                if edges.contains(edge) {
                    let v = UIView()
                    v.tag = Int(edge.rawValue)
                    v.backgroundColor = color
                    v.translatesAutoresizingMaskIntoConstraints = false
                    addSubview(v)

                    var horizontalVisualFormat = "H:"
                    var verticalVisualFormat = "V:"
                    switch edge {
                                      case UIRectEdge.bottom:
                                          horizontalVisualFormat += "|-(0)-[v]-(0)-|"
                                          verticalVisualFormat += "[v(\(width))]-(0)-|"
                                      case UIRectEdge.top:
                                          horizontalVisualFormat += "|-(0)-[v]-(0)-|"
                                          verticalVisualFormat += "|-(0)-[v(\(width))]"
                                      case UIRectEdge.left:
                                          horizontalVisualFormat += "|-(0)-[v(\(width))]"
                                          verticalVisualFormat += "|-(0)-[v]-(0)-|"
                                      case UIRectEdge.right:
                                          horizontalVisualFormat += "[v(\(width))]-(0)-|"
                                          verticalVisualFormat += "|-(0)-[v]-(0)-|"
                                      default:
                                          break
                                      }

                                      self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: horizontalVisualFormat, options: .directionLeadingToTrailing, metrics: nil, views: ["v": v]))
                                      self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: verticalVisualFormat, options: .directionLeadingToTrailing, metrics: nil, views: ["v": v]))
                                  }
                              }
                          }
                      }
                  }






extension UIView {

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }

}


