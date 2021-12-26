//
//  fourthDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit

class fourthTripDetailCell: UITableViewCell {
    
    let verStack:UIStackView = {
       let verstack = UIStackView()
       // verstack.backgroundColor  = .blue
        verstack.axis = .vertical
        verstack.spacing = 10
        verstack.distribution = .fillEqually
       return verstack
    }()
    
    let label:UILabel = {
       let verstack = UILabel()
       verstack.font = verstack.font.withSize(14)
       verstack.textColor = UIColor(hexString:"#858585")
       return verstack
    }()
    let labeltwo:UILabel = {
       let verstack = UILabel()
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
       return verstack
    }()
    let labelthree:UILabel = {
       let verstack = UILabel()
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
       return verstack
    }()
    let labelfour:UILabel = {
       let verstack = UILabel()
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
       return verstack
    }()
    let labelfive:UILabel = {
       let verstack = UILabel()
        verstack.text = "Продолжительность поездки"
        verstack.font = verstack.font.withSize(14)
        verstack.textColor = UIColor(hexString:"#858585")
       return verstack
    }()
    
    
    let mainstack:UIStackView = {
        let verstack = UIStackView()
         verstack.axis = .horizontal
         verstack.spacing = 10
        //verstack.distribution = .fillEqually
        return verstack
    }()
    
    
    
    
    let twoverstack:UIStackView = {
       let verstack = UIStackView()
         //verstack.backgroundColor  = .blue
        verstack.axis = .vertical
        verstack.spacing = 10
        verstack.distribution = .fillEqually
        verstack.backgroundColor = .clear
       return verstack
    }()
    
    let wlabel:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size: 14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right)
        verstack.backgroundColor = .clear
       return verstack
    }()
    let wlabeltwo:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size: 14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right
       )
        verstack.backgroundColor = .clear
       return verstack
    }()
    let wlabelthree:UILabel = {
       let verstack = UILabel(
        font:FontFamily.Montserrat.bold.font(size: 14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right
       )
        verstack.backgroundColor = .clear
       return verstack
    }()
    let wlabelfour:UILabel = {
       let verstack = UILabel(
        text:"00:45",
        font:FontFamily.Montserrat.bold.font(size: 14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right)
        verstack.backgroundColor = .clear
       return verstack
    }()
    let wlabelfive:UILabel = {
       let verstack = UILabel(
        
        text:"29 Август, 19:20",
        font:FontFamily.Montserrat.bold.font(size: 14),
        textColor:UIColor(hexString:"#434343"),
        textAlignment: .right)
        verstack.backgroundColor = .clear
       return verstack
    }()
    
    
    
    let labelblack:UILabel = {
        let label = UILabel(
            text:"Расчёт стоимости",
            font:FontFamily.Montserrat.bold.font(size: 20),
            textColor:UIColor(hexString:"#434343"),
            textAlignment: .right
        )
        label.backgroundColor = .clear
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(mainstack)
        mainstack.snp.makeConstraints { (make) in
            make.height.equalTo(123)
            make.top.equalTo(12)
            make.left.equalTo(12)
            make.right.equalTo(-12)
       }
      
        mainstack.addArrangedSubview(verStack)
        mainstack.snp.makeConstraints { (make) in
            make.top.equalTo(mainstack).inset(0)
            make.right.equalTo(mainstack).inset(0)
            make.bottom.equalTo(mainstack).inset(0)
       }
        
        mainstack.addArrangedSubview(twoverstack)
        twoverstack.addArrangedSubview(wlabel)
        twoverstack.addArrangedSubview(wlabeltwo)
        twoverstack.addArrangedSubview(wlabelthree)
        twoverstack.addArrangedSubview(wlabelfour)
        twoverstack.addArrangedSubview(wlabelfive)
        wlabel.snp.makeConstraints { (make) in
            make.top.equalTo(twoverstack).inset(0)
            make.left.equalTo(twoverstack).inset(0)
            make.right.equalTo(twoverstack).inset(0)
       }
        
        
       
        verStack.addArrangedSubview(label)
        verStack.addArrangedSubview(labeltwo)
        verStack.addArrangedSubview(labelthree)
        verStack.addArrangedSubview(labelfour)
        verStack.addArrangedSubview(labelfive)
        label.snp.makeConstraints { (make) in
            make.top.equalTo(verStack).inset(0)
            make.left.equalTo(verStack).inset(0)
            make.right.equalTo(verStack).inset(0)
       }
        
        
        
        
        
        addSubview(labelblack)
        labelblack.snp.makeConstraints { (make) in
            make.height.equalTo(24)
            make.width.equalTo(200)
            make.left.equalTo(16)
            make.bottom.equalTo(-8)
       }
    }
    
    
    
    public func set(vehicle: Vehicle) {
        label.text = vehicle.labelValue
        labeltwo.text = vehicle.secondValue
        labelthree.text = vehicle.imageValue
        labelfour.text = vehicle.detailone
        wlabel.text = vehicle.detailtwo
        wlabeltwo.text = vehicle.detailthree
        wlabelthree.text = vehicle.imageCar
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

