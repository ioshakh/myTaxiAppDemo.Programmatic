//
//  TripModelPresentable.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation

protocol TripMenuViewModelPresentable {
    var streetName:String? {get}
    var secondStreetName:String? {get}
    var redCellicon:ImageAsset? {get}
    var blueCellicon:ImageAsset? {get}
    var time:String? {get}
    var carImage:ImageAsset? {get}
}
