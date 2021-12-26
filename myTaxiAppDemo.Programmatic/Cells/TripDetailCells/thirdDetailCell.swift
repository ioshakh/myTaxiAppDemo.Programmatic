//
//  thirdDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit


class thridTripDetailCell: UITableViewCell {
    
    
    let profileImage:UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    
    let profileName:UILabel = {
        let name = UILabel()
        name.font = name.font.withSize(18)
        name.textColor = UIColor(hexString:"#434343")
        return name
    }()
    
    let reytingName:UILabel = {
        let name = UILabel()
        name.font = name.font.withSize(13)
        name.textColor = UIColor(hexString:"#B8B8B8")
        return name
    }()
    
    let reytingInt:UILabel = {
        let name = UILabel()
        name.font = name.font.withSize(13)
       // name.backgroundColor = .purple
        return name
    }()
    
    
    let reytingImage:UIImageView = {
        let name = UIImageView()
            // name.backgroundColor = .purple
        return name
    }()
    
    
    let orderLabel:UILabel = {
        let name = UILabel()
        name.font = name.font.withSize(13)
        name.textColor = UIColor(hexString:"#B8B8B8")
        return name
    }()
    
    let orderNumberLabel:UILabel = {
        let name = UILabel()
        name.font = name.font.withSize(13)
        return name
    }()
    
    let allInforLabel:UILabel = {
        let name = UILabel(
            text:"Общие данные",
            font:FontFamily.Montserrat.bold.font(size: 20)
        )
        name.backgroundColor = .clear
        return name
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(profileImage)
        profileImage.snp.makeConstraints { (make) in
            make.height.width.equalTo(56)
            make.top.equalTo(12)
            make.left.equalTo(16)
       }
        
        
        
        addSubview(profileName)
        profileName.snp.makeConstraints { (make) in
            make.height.equalTo(22)
            make.width.equalTo(170)
            make.top.equalTo(17)
            make.left.equalTo(88)
       }
        
        addSubview(reytingName)
        reytingName.snp.makeConstraints { (make) in
            make.height.equalTo(17)
            make.width.equalTo(57)
            make.top.equalTo(44)
            make.left.equalTo(88)
       }
        
        addSubview(reytingInt)
        reytingInt.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.width.equalTo(9)
            make.top.equalTo(43)
            make.left.equalTo(149)
       }
        
        addSubview(reytingImage)
        reytingImage.snp.makeConstraints { (make) in
            make.height.width.equalTo(12)
            make.top.equalTo(47)
            make.left.equalTo(160)
       }
        
        addSubview(orderNumberLabel)
        orderNumberLabel.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.width.equalTo(36)
            make.top.equalTo(43)
            make.left.equalTo(248)
       }
        
        addSubview(orderLabel)
        orderLabel.snp.makeConstraints { (make) in
            make.height.equalTo(17)
            make.top.equalTo(44)
            make.left.equalTo(184)
            make.width.equalTo(60)
       }
        
        addSubview(allInforLabel)
        allInforLabel.snp.makeConstraints { (make) in
            make.height.equalTo(24)
            make.bottom.equalTo(-8)
            make.left.equalTo(16)
            make.right.equalTo(50)
       }
        
        
        
    }
    
    
    public func set(vehicle: Vehicle) {
        profileImage.image = UIImage(named:vehicle.imageValue)
        profileName.text = vehicle.labelValue
        reytingName.text = vehicle.secondValue
        reytingInt.text = vehicle.detailone
        orderLabel.text =  vehicle.detailtwo
        orderNumberLabel.text = vehicle.detailthree
        reytingImage.image = UIImage(named:vehicle.imageCar)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

