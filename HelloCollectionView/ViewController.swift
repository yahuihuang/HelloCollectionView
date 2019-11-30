//
//  ViewController.swift
//  HelloCollectionView
//
//  Created by grace on 2019/11/30.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    var images:[UIImage?] = []
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = [
            UIImage(named: "png1"),
            UIImage(named: "png2"),
            UIImage(named: "png3"),
            UIImage(named: "png4"),
            UIImage(named: "png5"),
        ]
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = UICollectionViewCell()

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccCell", for: indexPath)
        cell.backgroundColor = UIColor.yellow
        return cell
    }
}

