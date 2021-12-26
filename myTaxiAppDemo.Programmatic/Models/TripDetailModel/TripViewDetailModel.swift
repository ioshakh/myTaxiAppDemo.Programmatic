//
//  TripViewDetailModel.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation


public enum VehicleType {
  
    case firstView
    case secondView
    case thirdView
    case fourthView
    case fifthView
    case sixthView
}

public struct Vehicle {
    
    public let labelValue: String
    public let secondValue: String
    public let type: VehicleType
    
    public let imageValue: String
    public let imageCar: String
    
    public let detailone:String
    public let detailtwo:String
    public let detailthree:String
    
    init(labelValue: String, type: VehicleType, secondValue:String, imageValue: String , detailone:String , detailtwo:String , detailthree:String , imageCar:String) {
        self.labelValue = labelValue
        self.type = type
        self.secondValue = secondValue
        self.imageValue = imageValue
        self.detailone = detailone
        self.detailtwo = detailtwo
        self.detailthree = detailthree
        self.imageCar = imageCar
    }
}


