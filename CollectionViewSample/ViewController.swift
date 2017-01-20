//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by otukutun on 1/20/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let imageList:Array<String> = ["bob.png", "bob2.png", "dora.png", "dora2.png", "dora3.png", "nobi.png", "otukutun.png"]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCell", for: indexPath) as UICollectionViewCell
        collectionView.backgroundColor = UIColor(red: CGFloat(drand48()),
                                       green: CGFloat(drand48()),
                                       blue: CGFloat(drand48()),
                                       alpha: 1.0)
        return collectionView
    }
}

