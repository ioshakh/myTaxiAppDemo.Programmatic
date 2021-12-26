//
//  sixthDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit

class sixthTripDetailCell: UITableViewCell {
    
    let stack:UIStackView = {
        let verstack = UIStackView(
            axis:.horizontal,
            distribution:.fillEqually,
            spacing:16
        )
        verstack.backgroundColor = .clear
        return verstack
    }()
    
    let label:UILabel = {
        let verstack = UILabel(
            font:FontFamily.Montserrat.bold.font(size: 20)
        )
        verstack.backgroundColor = .clear
        return verstack
    }()
    
    
    let labeltwo:UILabel = {
        let verstack = UILabel(
            font:FontFamily.Montserrat.bold.font(size: 20),
            textAlignment: .right
        )
        verstack.backgroundColor = .clear
        return verstack
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(stack)
        stack.snp.makeConstraints { (make) in
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.top.equalTo(12)
            make.bottom.equalTo(-12)
       }
        
        
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(labeltwo)
        label.snp.makeConstraints { (make) in
            make.left.equalTo(stack).inset(0)
            make.top.equalTo(stack).inset(0)
            make.bottom.equalTo(stack).inset(0)
       }
        
       
        
    }
    
    public func set(vehicle: Vehicle) {
        label.text = vehicle.labelValue
        labeltwo.text = vehicle.secondValue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

