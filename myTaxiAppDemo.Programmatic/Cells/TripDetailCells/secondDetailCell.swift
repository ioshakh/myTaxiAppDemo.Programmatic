//
//  secondDetailCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit

class secondTripDetailCell: UITableViewCell {
    
    let bookview:UIView = {
        let views = UIView()
        return views
    }()
    
    
    let booklbl:UILabel = {
        let lbl = UILabel()
        lbl.font = lbl.font.withSize(14)
        lbl.textColor = UIColor(hexString:"#434343")
        return lbl
    }()
    
    let redImg:UIImageView = {
        let img = UIImageView()
        
        return img
    }()
   
    
    let secondStreet:UILabel = {
        let street = UILabel()
        street.font = street.font.withSize(14)
        street.textColor = UIColor(hexString:"#434343")
        return street
    }()
    
    let blueImg:UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    
    let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.backgroundColor = .white
        stack.axis = .horizontal
        stack.spacing = 8
        stack.distribution = .fillEqually
        return stack
    }()
    
    
    let yellowimg:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = UIColor(hexString: "#FEF8E8")
        img.layer.cornerRadius = 10
        img.image = UIImage(named:"yellowFrame")
        img.contentMode = .center
        return img
    }()
    
    let blueimg:UIImageView = {
        let img = UIImageView()
       
        img.image = UIImage(named:"blueFrame")
        img.contentMode = .center
        img.backgroundColor = UIColor(hexString:"#ECF2FD")
        img.layer.cornerRadius = 10
        return img
    }()
    
    let greenImg:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 10
        img.image = UIImage(named:"greenFrame")
        img.contentMode = .center
        img.backgroundColor = UIColor(hexString:"#EEF9F2")
        
        
        return img
    }()
    

    private lazy var tbllabel:UILabel = {
        let lbl = UILabel(
            text:"Водитель",
            font: FontFamily.Montserrat.bold.font(size:20),
            textColor: UIColor(hexString:"#434343")
        )
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(bookview)
        bookview.snp.makeConstraints { (make) in
            make.height.equalTo(208)
            make.bottom.equalTo(0)
            make.right.left.equalTo(0)
       }
        
        
        bookview.addSubview(booklbl)
        booklbl.snp.makeConstraints { (make) in
            make.top.equalTo(bookview).inset(18)
            make.left.right.equalTo(bookview).inset(48)
            make.height.equalTo(17)
            
       }
        
        
        bookview.addSubview(redImg)
        redImg.snp.makeConstraints { (make) in
            make.top.left.equalTo(bookview).inset(16)
            make.height.width.equalTo(24)
       }
        
        
        bookview.addSubview(secondStreet)
        secondStreet.snp.makeConstraints { (make) in
            make.left.right.equalTo(bookview).inset(48)
            make.top.equalTo(bookview).inset(48)
            make.height.equalTo(17)
       }
        
        
        bookview.addSubview(blueImg)
        blueImg.snp.makeConstraints { (make) in
            make.left.equalTo(bookview).inset(16)
          //  make.top.equalTo(redImg).priority(10)
            make.height.width.equalTo(24)
            make.top.equalTo(bookview).inset(48)
            
       }
        
        
        bookview.addSubview(mainStack)
        mainStack.snp.makeConstraints { (make) in
            make.left.right.equalTo(bookview).inset(16)
            make.bottom.equalTo(bookview).inset(60)
            make.height.equalTo(56)
            
       }
      
        
        bookview.addSubview(mainStack)
        mainStack.snp.makeConstraints { (make) in
            make.left.right.equalTo(bookview).inset(16)
            make.bottom.equalTo(bookview).inset(60)
            make.height.equalTo(56)
            
       }
        
       
        mainStack.addArrangedSubview(yellowimg)
        mainStack.addArrangedSubview(greenImg)
        mainStack.addArrangedSubview(blueimg)
        yellowimg.snp.makeConstraints { (make) in
            make.left.top.equalTo(mainStack).inset(0)
            make.bottom.equalTo(mainStack).inset(0)
            //make.width.equalTo(109)
            
       }
        
        
        bookview.addSubview(tbllabel)
        tbllabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(bookview).inset(8)
            make.left.equalTo(bookview).inset(16)
            make.width.equalTo(150)
            make.height.equalTo(24)
            
       }
      
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func set(vehicle: Vehicle) {
        booklbl.text = vehicle.labelValue
        redImg.image = UIImage(named: vehicle.imageCar)
        secondStreet.text = vehicle.secondValue
        blueImg.image = UIImage(named: vehicle.imageValue)
    }

}

class CarCell: UITableViewCell {
    
    let car:UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .red
        return lbl
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(car)
        
         car.snp.makeConstraints { (make) in
        // make.height.equalTo(50)
         make.bottom.equalTo(0)
         make.right.left.equalTo(0)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    public func set(vehicle: Vehicle) {
//        car.text = vehicle.imageName
//    }

}

