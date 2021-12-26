//
//  SideMenuViewController.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import LGSideMenuController

class SideMenuViewController: UIViewController {
    
    var viewModel:SlideViewModel?
    
    private(set) lazy var mainStack: UIStackView = {
        let stackview = UIStackView(
            axis:.vertical,
            backgroundColor:.black,
            spacing:12
        )
        
        return stackview
    }()
    
    
    private lazy var firstMainView: UIView = {
         let view = UIView()
         view.backgroundColor = UIColor(hexString:"#272724")
         view.layer.cornerRadius = 10
         return view
    }()
    
    
    private(set) lazy var tblview: UITableView = {
         let tblview = UITableView()
         tblview.backgroundColor = .clear
         tblview.separatorColor = UIColor.lightGray
         return tblview
    }()
    
    
    private lazy var nameText: UILabel = {
         let name = UILabel(
            text:L10n.SlideMenu.profileName,
            font:FontFamily.Montserrat.semiBold.font(size:16),
            textColor: UIColor(hexString:"#F4F4F4"),
            numberOfLines: 0,
            backgroundColor: UIColor(hexString:"#272724")
         )
        
       
         return name
    }()
    
    
    private lazy var numberText: UILabel = {
         let number = UILabel(
            text:L10n.SlideMenu.profileMobileNumber,
            font:FontFamily.Montserrat.light.font(size:13),
            textColor:UIColor(hexString:"#7D7D7D"),
            backgroundColor:UIColor(hexString:"#272724")
         )
         return number
    }()
    
     private lazy var personImage: UIImageView = {
         let person = UIImageView(
            image:Asset.SlideMenu.person.image
         )
         return person
    }()
    
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(mainStack)
        ProfileViewSnapKitLayouts()
        configureTableView()
    }
    
    
    
    
    ///Table view snapKit constraints
    func configureTableView() {
        tblview.registerCell(SlideTableViewCell.self)
        viewModel = SlideViewModel()
        setTblViewDelegates()
    }
    
    func setTblViewDelegates() {
        tblview.delegate = self
        tblview.dataSource = self
        setTableViewConstraints()
    }
    
    func setTableViewConstraints() {
        mainStack.addSubview(tblview)
        tblview.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(mainStack).inset(0)
            make.height.equalTo(132)
         }
    }
    
    

    
    private func ProfileViewSnapKitLayouts() {
        self.view.addSubview(mainStack)
        mainStack.snp.makeConstraints { (make) in
            make.height.equalTo(232)
            make.top.equalTo(view).inset(94)
            make.right.equalTo(view).inset(20)
            make.left.equalTo(view).inset(16)
         }
        
        
        mainStack.addSubview(firstMainView)
        firstMainView.snp.makeConstraints { (make) in
            make.height.equalTo(88)
            make.top.left.right.equalTo(mainStack).inset(0)
         }
        
        
        firstMainView.addSubview(personImage)
        personImage.layer.cornerRadius = 30
        personImage.snp.makeConstraints { (make) in
            make.height.width.equalTo(60)
            make.left.top.bottom.equalTo(firstMainView).inset(14)
         }
        
        
        firstMainView.addSubview(nameText)
        nameText.snp.makeConstraints {
            $0.height.equalTo(42)
            $0.left.equalTo(personImage.snp.right).offset(14)
            $0.top.equalTo(firstMainView).inset(13)
            $0.right.equalTo(firstMainView).inset(24)
         }
        
        
        firstMainView.addSubview(numberText)
        numberText.snp.makeConstraints {
            $0.left.equalTo(personImage.snp.right).offset(14)
            $0.top.equalTo(nameText.snp.bottom).offset(1)
            $0.bottom.equalTo(firstMainView).inset(14)
            $0.right.equalTo(firstMainView).inset(30)
         }
    }
}


extension SideMenuViewController:UITableViewDelegate,UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.items.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: SlideTableViewCell = tableView.dequeueCell(for:indexPath)
        
        let itemViewModel = viewModel?.items[indexPath.row]
        
        cell.configure(withViewModel: itemViewModel!)
    
        
        return cell
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let cv = UINavigationController(rootViewController:TripHistoryVC())
            cv.modalTransitionStyle = .flipHorizontal
            cv.modalPresentationStyle = .fullScreen
             
            present(cv, animated:true, completion:nil)
        }
    }
}
