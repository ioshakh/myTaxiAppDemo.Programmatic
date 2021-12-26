//
//  TripViewModel.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation

struct TripViewModel {
    init() {
        let tripone = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)

        let triptwo = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)

        let tripthree = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)
        
        let tripfour = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)

        let tripfive = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)

        let tripsix = TripMenuViewModel(streetName:L10n.TripTableCell.streetName , secondStreetName:L10n.TripTableCell.secondStreetName , redCellicon:Asset.MainTabBar.redPin , blueCellicon:Asset.MainTabBar.bluePin , time:L10n.TripTableCell.time ,carImage:Asset.TripTableViewCell.carMalibu)


      
        tripitems.append(contentsOf: [tripone,triptwo,tripthree,tripfour,tripfive,tripsix])
    }
    
    var tripitems: [TripMenuViewModelPresentable] = []
}


