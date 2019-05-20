//
//  HousesViewController.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit

class HousesViewController: UIViewController, UITableViewDataSource {
    
    var house: [House] = []
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        fetchHouses()
        // Do any additional setup after loading the view.
    }
    
    private func fetchHouses(){
        RequestManager.getHouses(success: {data in
            let decoder = JSONDecoder()
            self.house = (try? decoder.decode([House].self, from: data)) ?? []
            self.tableView.reloadData()
        }) {(error) in
            print(error)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return house.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HousesCell", for: indexPath) as?
            HousesCell{
            cell.configure(withHouse: house[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
