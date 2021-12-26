//
//  TripHistoryVC.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import SnapKit

class TripHistoryVC: UIViewController {
    
    let tableview = UITableView()
    
    var tripviewModels:TripViewModel?
    
    
    private lazy var uistackview:UIStackView = {
        let stack = UIStackView(
            axis:.horizontal,
            spacing: 20
        )
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    private lazy var backButton: UIButton = {
    
        let backBtn = UIButton()
        backBtn.setImage(UIImage(named:"button"), for:.normal)
        backBtn.addTarget(self, action:#selector(backTapped), for:.touchUpInside)
        backBtn.backgroundColor = .clear
        return backBtn
        
    }()
    
    @objc func backTapped() {
        self.dismiss(animated:true)
    }
    
    
    private lazy var backLabel: UILabel = {
        let lbl = UILabel(
            text:"Мои поездки",
            font: FontFamily.Montserrat.medium.font(size:20)
        )
        lbl.backgroundColor =  .clear
        return lbl
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.addTarget(self, action:#selector(backTapped), for:.touchUpInside)
        
        view.addSubview(tableview)
        tableview.snp.makeConstraints { make in
            make.top.equalTo(view).inset(149)
            make.left.right.equalTo(view).inset(16)
            make.bottom.equalToSuperview()
        }
        
        
        view.addSubview(uistackview)
        uistackview.snp.makeConstraints { make in
            make.top.equalTo(view).inset(60)
            make.left.right.equalTo(view).inset(16)
            make.height.equalTo(40)
        }
        
        
        
        uistackview.addArrangedSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalTo(uistackview).inset(0)
            make.left.equalTo(uistackview).inset(0)
            make.height.equalTo(44)
            make.width.equalTo(40)
        }
        
        uistackview.addArrangedSubview(backLabel)
        backLabel.snp.makeConstraints { make in
            make.top.equalTo(uistackview).inset(0)
            make.right.equalTo(uistackview).inset(0)
            make.bottom.equalTo(uistackview).inset(0)
        }
        
        
        
        view.backgroundColor = .white
        view.addSubview(tableview)
        configureTableView()
        
       
        
    }
    
    
    override func viewDidLayoutSubviews() {
        //tableview.frame = view.frame
    }
    
    
    
    func configureTableView() {
        tableview.registerCell(TripTableCell.self)
        tripviewModels = TripViewModel()
        setTblViewDelegates()
    }
    
    func setTblViewDelegates() {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    
    
    
    
}


extension TripHistoryVC:UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tripviewModels?.tripitems.count)!
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TripTableCell = tableView.dequeueCell(for:indexPath)
        
        let streetVIewModel = tripviewModels?.tripitems[indexPath.row]
       
        
        cell.configureTrip(withViewModel: streetVIewModel!)
        
        return cell
    
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cv = TripDetailViewController()
        cv.modalPresentationStyle = .fullScreen
        present(cv, animated:true, completion:nil)
    }
}
