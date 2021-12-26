//
//  SlideTableViewCell.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit

class SlideTableViewCell: UITableViewCell {

    
    private lazy var stackcell:UIStackView = {
        let stackcell = UIStackView()
        stackcell.backgroundColor = .black
        return stackcell
    }()
    
    
    private lazy var slideText: UILabel = {
        let text = UILabel()
        text.font = text.font.withSize(15)
        text.textColor = UIColor(hexString:"#F4F4F4")
        return text
    }()

    private lazy var slideImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //addSubview(slideText)
       // over()
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(stackcell)
        stackcell.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.top.equalTo(0)
            make.right.equalTo(0)
        }
        stackcell.addSubview(slideText)
        //stackcell.addArrangedSubview(slideText)
        slideText.snp.makeConstraints { (make) in
            make.bottom.top.right.equalTo(stackcell).inset(10)
            make.left.equalTo(40)
        }
        
        
        stackcell.addSubview(slideImage)
        slideImage.snp.makeConstraints { (make) in
            make.left.bottom.top.equalTo(stackcell).inset(10)
            make.width.equalTo(24)
        }

    }
    
    
    func configure(withViewModel viewModel: SlideMenuViewModelPresentable) ->(Void) {
        slideText.text = viewModel.textValue
        slideImage.image = viewModel.imageValue?.image
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
    
    


