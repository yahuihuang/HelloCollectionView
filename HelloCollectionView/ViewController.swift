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
        
        let screenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6)
        layout.minimumLineSpacing = 10
        let imageSize = screenSize.width / 3 - 12
        layout.itemSize = CGSize(width: imageSize, height: imageSize)
        
        myCollectionView.setCollectionViewLayout(layout, animated: false)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = UICollectionViewCell()

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccCell", for: indexPath) as! MyCollectionViewCell
        //cell.backgroundColor = UIColor.yellow
        cell.myImage.image = images[indexPath.row]
        return cell
    }
}

