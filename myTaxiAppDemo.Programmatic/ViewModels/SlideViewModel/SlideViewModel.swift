//
//  SlideViewModel.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import Foundation

struct SlideViewModel {
    init() {
        let item1 = SlideMenuViewModel( textValue:L10n.SlideMenuTableCell.firstTextCell, imageValue:Asset.SlideMenu.direction)
        let item2 = SlideMenuViewModel( textValue:L10n.SlideMenuTableCell.secondTextCell, imageValue:Asset.SlideMenu.wallet)
        let item3 = SlideMenuViewModel( textValue:L10n.SlideMenuTableCell.thirdTextCell, imageValue:Asset.SlideMenu.halfStar)
       
        
        items.append(contentsOf: [item1,item2,item3])
    }
    
    var items: [SlideMenuViewModelPresentable] = []
}

