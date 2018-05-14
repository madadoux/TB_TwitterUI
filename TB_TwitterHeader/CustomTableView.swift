//
//  CustomTableView.swift
//  TB_TwitterHeader
//
//  Created by MacBook Pro on 5/13/18.
//  Copyright © 2018 Bitwaker. All rights reserved.
//

import Foundation
class CustomTableView  : UITableView {
    @IBInspectable var numberOfCells:Int = 50
    override func awakeFromNib() {
        delegate = self
        dataSource = self
        estimatedRowHeight = 44 //  >= 2
        rowHeight = UITableViewAutomaticDimension
    }
}

extension CustomTableView : UITableViewDelegate , UITableViewDataSource {
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
