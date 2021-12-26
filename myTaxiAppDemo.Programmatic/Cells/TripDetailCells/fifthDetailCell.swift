//
//  fifthDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import SnapKit
import UIKit

class fifthTripDetailCell: UITableViewCell {
    
    
    let verStack:UIStackView = {
       let verstack = UIStackView()
       verstack.backgroundColor  = .white
        verstack.axis = .horizontal
        verstack.spacing = 16
        verstack.distribution = .fillEqually
       return verstack
    }()
    
    let firstStack:UIStackView = {
       let verstack = UIStackView()
      // verstack.backgroundColor  = .blue
        verstack.axis = .vertical
        verstack.spacing = 16
        verstack.distribution = .fillEqually
       return verstack
    }()
    
    let onelabel:UILabel = {
       let verstack = UILabel()
      // verstack.backgroundColor  = .red
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
        verstack.backgroundColor = .clear
       return verstack
    }()
    let onelabeltwo:UILabel = {
       let verstack = UILabel()
       //verstack.backgroundColor  = .black
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
        verstack.backgroundColor = .clear
       return verstack
    }()
    
    let onelabelthree:UILabel = {
       let verstack = UILabel()
      // verstack.backgroundColor  = .systemPink
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
        verstack.backgroundColor = .clear
       return verstack
    }()
    
    
    
    let twolabel:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size:14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right
       )
        verstack.backgroundColor = .clear
       return verstack
    }()
    let twolabeltwo:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size:14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right
       )
        verstack.backgroundColor = .clear
       return verstack
    }()
    let twolabelthree:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size:14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right
       )
        verstack.backgroundColor = .clear
       return verstack
    }()
    
    
    
    
    
    
    
    let secondStack:UIStackView = {
       let verstack = UIStackView()
      // verstack.backgroundColor  = .blue
        verstack.axis = .vertical
        verstack.spacing = 16
        verstack.distribution = .fillEqually
        verstack.backgroundColor = .clear
       return verstack
    }()

  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(verStack)
        verStack.snp.makeConstraints { (make) in
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.top.equalTo(12)
            make.bottom.equalTo(-12)
       }
        
        verStack.addArrangedSubview(firstStack)
        verStack.addArrangedSubview(secondStack)
        firstStack.snp.makeConstraints { (make) in
            make.left.equalTo(verStack).inset(0)
            make.top.equalTo(verStack).inset(0)
            make.bottom.equalTo(verStack).inset(0)
       }
        
        
        firstStack.addArrangedSubview(onelabel)
        firstStack.addArrangedSubview(onelabeltwo)
        firstStack.addArrangedSubview(onelabelthree)
        onelabel.snp.makeConstraints { (make) in
            make.left.equalTo(firstStack).inset(0)
            make.top.equalTo(firstStack).inset(0)
            make.right.equalTo(firstStack).inset(0)
       }
        
        
        secondStack.addArrangedSubview(twolabel)
        secondStack.addArrangedSubview(twolabeltwo)
        secondStack.addArrangedSubview(twolabelthree)
        twolabel.snp.makeConstraints { (make) in
            make.left.equalTo(secondStack).inset(0)
            make.top.equalTo(secondStack).inset(0)
            make.right.equalTo(secondStack).inset(0)
       }
    }
    
    
    public func set(vehicle: Vehicle) {
        onelabel.text = vehicle.labelValue
        onelabeltwo.text = vehicle.secondValue
        onelabelthree.text = vehicle.imageValue
        twolabel.text = vehicle.detailone
        twolabeltwo.text = vehicle.detailtwo
        twolabelthree.text = vehicle.detailthree
      
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

