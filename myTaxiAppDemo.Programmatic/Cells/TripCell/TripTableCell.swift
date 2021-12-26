//
//  TripTableCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit

class TripTableCell: UITableViewCell {

    private lazy var MainView:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var MainStackCell:UIStackView = {
        let stackcell = UIStackView()
        stackcell.layer.cornerRadius = 10
        stackcell.borders(for:[.all], width:1, color:UIColor(hexString:"#F0F0F0"))
        return stackcell
    }()
    
    private lazy var firstCellView:UIView = {
        let first = UIView()
        first.backgroundColor = UIColor(hexString:"#FFFFFF")
        return first
    }()
    
    private lazy var secondCellView:UIView = {
        let second = UIView()
        return second
    }()
    
    private lazy var firstStreetName:UILabel = {
        let label = UILabel(
            font:FontFamily.Montserrat.medium.font(size:14),
            textColor: UIColor(hexString:"#434343")
        )
        label.backgroundColor = .clear
        return label
    }()
    
    private lazy var secondStreetName:UILabel = {
        let label = UILabel(
            font:FontFamily.Montserrat.medium.font(size:14),
            textColor: UIColor(hexString:"#434343")
        )
        label.backgroundColor = .clear
        return label
    }()
    
    
    private lazy var firstImageIcon:UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private lazy var secondImageIcon:UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private lazy var timeLabel:UILabel = {
        let label = UILabel(
            font:FontFamily.Montserrat.medium.font(size:14)
        )
        label.backgroundColor = .clear
        return label
    }()
    
    
    
    private lazy var carImageLable:UIImageView = {
        let label = UIImageView()

        return label
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(MainView)
        MainView.snp.makeConstraints { (make) in
           
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.top.equalTo(0)
            make.right.equalTo(0)
        
        }
        
        MainView.addSubview(MainStackCell)
        MainStackCell.snp.makeConstraints { (make) in
            make.height.equalTo(118)
            make.left.top.bottom.right.equalTo(MainView).inset(10)
        }
        
        
        MainStackCell.addSubview(firstCellView)
        firstCellView.snp.makeConstraints { (make) in
            make.height.equalTo(76)
            make.left.top.right.equalTo(MainStackCell).inset(0)
        }
        
        firstCellView.addSubview(firstStreetName)
        firstStreetName.snp.makeConstraints { (make) in
            make.right.equalTo(firstCellView).inset(12)
            make.top.equalTo(firstCellView).inset(14)
            make.height.equalTo(17)
            make.left.equalTo(firstCellView).inset(44)
        }
        
        firstCellView.addSubview(secondStreetName)
        secondStreetName.snp.makeConstraints { (make) in
            make.right.equalTo(firstCellView).inset(12)
            make.bottom.equalTo(firstCellView).inset(17)
            make.height.equalTo(17)
            make.left.equalTo(firstCellView).inset(44)
        }
        
        firstCellView.addSubview(firstImageIcon)
        firstImageIcon.snp.makeConstraints { (make) in
          
            make.top.left.equalTo(firstCellView).inset(12)
            make.height.width.equalTo(24)
        }
        
        firstCellView.addSubview(secondImageIcon)
        secondImageIcon.snp.makeConstraints { (make) in
            make.bottom.left.equalTo(firstCellView).inset(12)
            make.height.width.equalTo(24)
        }
        
        
        MainStackCell.addSubview(secondCellView)
        secondCellView.snp.makeConstraints { (make) in
            make.height.equalTo(42)
            make.left.bottom.right.equalTo(MainStackCell).inset(0)
        }
        
        
        secondCellView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { (make) in
            make.height.equalTo(18)
            make.left.equalTo(secondCellView).inset(20)
            make.bottom.top.equalTo(secondCellView).inset(12)
            make.right.equalTo(secondCellView).inset(50)
        }
        
        MainStackCell.addSubview(carImageLable)
        carImageLable.snp.makeConstraints { (make) in
            make.height.equalTo(39)
            make.width.equalTo(108)
            make.right.equalTo(MainStackCell).inset(10)
            make.bottom.equalTo(MainStackCell).inset(13)
           
        }
    }
    
    
    
    
    func configureTrip(withViewModel viewModel: TripMenuViewModelPresentable) ->(Void) {
        firstStreetName.text = viewModel.streetName
        secondStreetName.text = viewModel.secondStreetName
        timeLabel.text = viewModel.time
        firstImageIcon.image = viewModel.redCellicon?.image
        secondImageIcon.image = viewModel.blueCellicon?.image
        carImageLable.image = viewModel.carImage?.image
    }

    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

