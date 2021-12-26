//
//  TripDetailModel.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation

class TripMenuViewModel:TripMenuViewModelPresentable {
    

    var streetName: String? = ""
    var secondStreetName: String? = ""
    var redCellicon: ImageAsset?
    var blueCellicon: ImageAsset?
    var time: String? = ""
    var carImage: ImageAsset?
    
   
    init(streetName:String , secondStreetName:String , redCellicon:ImageAsset ,blueCellicon:ImageAsset , time:String ,carImage:ImageAsset) {
        self.streetName = streetName
        self.secondStreetName = secondStreetName
        self.redCellicon = redCellicon
        self.blueCellicon = blueCellicon
        self.time = time
        self.carImage = carImage
    }
    
    deinit {
        print("\(String(describing: streetName)) is being deinitialised",
              "\(String(describing: secondStreetName)) is being deinitialised",
              "\(String(describing: redCellicon)) is being deinitialised",
              "\(String(describing: blueCellicon)) is being deinitialised",
              "\(String(describing: time)) is being deinitialised",
              "\(String(describing: carImage)) is being deinitialised"
       )
   }
}


