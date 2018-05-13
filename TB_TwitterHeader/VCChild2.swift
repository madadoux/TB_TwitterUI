//
//  VCChild2.swift
//  TB_TwitterHeader
//
//  Created by MacBook Pro on 5/13/18.
//  Copyright © 2018 Bitwaker. All rights reserved.
//

import Foundation
import XLPagerTabStrip
class VCChild2 : UIViewController  , IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        var indec = IndicatorInfo(image: #imageLiteral(resourceName: "profile") )        
        return indec
    }
    
    
}
