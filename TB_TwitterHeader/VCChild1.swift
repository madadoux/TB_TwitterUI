//
//  VCChild1.swift
//  TB_TwitterHeader
//
//  Created by MacBook Pro on 5/13/18.
//  Copyright © 2018 Bitwaker. All rights reserved.
//

import Foundation
import UIKit
import XLPagerTabStrip
class VCChild1 : UIViewController  , IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        var indec = IndicatorInfo(image: #imageLiteral(resourceName: "love"))
        return indec
    }
    
    
}
