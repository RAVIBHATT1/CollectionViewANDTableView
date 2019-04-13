//
//  ViewController.swift
//  CollectionViewANDTableView
//
//  Created by Akash Padhiyar on 12/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    @IBOutlet weak var MyCollectionView: UICollectionView!
    @IBOutlet weak var MySteper: UISegmentedControl!
    
    let array = ["1","2","3","4","5","6"]
    let arr1 = ["1","3","5"]
    let arr2 = ["2","4","6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTableView.delegate = self
        MyTableView.dataSource = self
        MyTableView.reloadData()
        
        MyCollectionView.delegate = self
        MyCollectionView.dataSource = self
        MyCollectionView.reloadData()
        MyCollectionView.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func MySteperAction(_ sender: Any) {
        if MySteper.selectedSegmentIndex == 0{
            MyTableView.isHidden = false
            MyCollectionView.isHidden = true
         
        }else
        {
            MyCollectionView.isHidden = false
            MyTableView.isHidden = true
            
        }
    }
    

}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyCell") as! MyTableViewCell
        cell.MyLabel.text = array[indexPath.row]
        return cell
        
    }
    
    
}
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "MyCell1", for: indexPath) as! MyCollectionViewCell
        
        cell.MyLabel1.text = arr1[indexPath.row]
        cell.MyLabel2.text = arr2[indexPath.row]
        return cell
        
    }
    
    
}
