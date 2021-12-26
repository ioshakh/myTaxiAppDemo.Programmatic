//
//  firstDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit

class firstTripDetailCell: UITableViewCell {
    
    let view:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        return view
    }()
    
    let carNumberImage:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let carImage:UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    
    let lbl:UILabel = {
        let lbl = UILabel()
        lbl.font = lbl.font.withSize(14)
        lbl.textColor = UIColor(hexString:"#858585")
        return lbl
    }()
    
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
         addSubview(view)
         view.snp.makeConstraints { (make) in
            make.height.equalTo(79)
            make.bottom.equalTo(0)
            make.right.left.equalTo(0)
        }
        
        view.addSubview(carNumberImage)
        carNumberImage.snp.makeConstraints { (make) in
          make.top.left.equalTo(view).inset(16)
          make.width.equalTo(119)
          make.height.equalTo(32)
       }
        
        
        view.addSubview(lbl)
        lbl.snp.makeConstraints { (make) in
            make.top.equalTo(view).inset(56)
            make.left.right.bottom.equalTo(view).inset(10)
        }
        
        view.addSubview(carImage)
        carImage.snp.makeConstraints { (make) in
            make.top.equalTo(view).inset(26)
            make.right.equalTo(view).inset(15)
            make.height.equalTo(38)
            make.width.equalTo(108)
        }
        
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func set(vehicle: Vehicle) {
        lbl.text = vehicle.labelValue
        carNumberImage.image = UIImage(named:vehicle.imageValue)
        carImage.image = UIImage(named:vehicle.imageCar)
    }
    
    
}

