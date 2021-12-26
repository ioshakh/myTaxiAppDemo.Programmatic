//
//  SlideModel.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation


class SlideMenuViewModel:SlideMenuViewModelPresentable {
   

    var textValue: String? = ""
    
    var imageValue: ImageAsset?
    
    init( textValue:String , imageValue:ImageAsset) {
        self.textValue = textValue
        self.imageValue = imageValue
    }
}
