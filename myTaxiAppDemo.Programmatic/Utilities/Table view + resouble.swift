//
//  Table view .swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit


protocol Reusable {
    static var reuseId: String { get }
}

extension Reusable {
    static var reuseId: String {
        return String(describing: self)
    }
}

extension NSObject: Reusable { }

extension UITableView {
    
    public func dequeueCell<Cell>(for indexPath: IndexPath, type: Cell.Type = Cell.self) -> Cell where Cell: UITableViewCell {
        register(Cell.classForCoder(), forCellReuseIdentifier: Cell.reuseId)
        guard let cell = dequeueReusableCell(withIdentifier: Cell.reuseId, for: indexPath) as? Cell else {
            fatalError("Error for cell id: \(Cell.reuseId) at \(indexPath))")
        }
        return cell
    }
    
    func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        register(Cell.self, forCellReuseIdentifier: cellClass.reuseId)
    }
    
    
    func dequeueReusableCell<Cell: UITableViewCell>(forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: Cell.reuseId, for: indexPath) as? Cell else {
            fatalError("Error for cell id: \(Cell.reuseId) at \(indexPath))")
        }
        return cell
    }
}

@IBDesignable extension UITableViewCell {
    @IBInspectable var selectedColor: UIColor? {
        set {
            if let color = newValue {
                selectedBackgroundView = UIView()
                selectedBackgroundView!.backgroundColor = color
            } else {
                selectedBackgroundView = nil
            }
        }
        get {
            return selectedBackgroundView?.backgroundColor
        }
    }
}
