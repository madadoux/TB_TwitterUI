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
    @IBOutlet weak var mTableview:UITableView!
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        var indec = IndicatorInfo(image: #imageLiteral(resourceName: "love"))
        return indec
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mTableview.reloadData()
        print ("child 1 ap ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print ("child 1 dis ")

    }
    @IBInspectable var numberOfCells:Int = 50
    override func awakeFromNib() {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTableview.delegate = self
        mTableview.dataSource = self
        mTableview.estimatedRowHeight = 44 //  >= 2
        mTableview.rowHeight = UITableViewAutomaticDimension
    }
}

extension VCChild1 : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell")!
        
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: Notification.Name( "UITableUpdateHeight"), object: nil, userInfo: ["newHeight" : tableView.contentSize.height])
    }
    
}

