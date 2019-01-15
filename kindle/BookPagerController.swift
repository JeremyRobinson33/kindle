//
//  BookPagerController.swift
//  kindle
//
//  Created by Jeremy Robinson on 11/15/18.
//  Copyright © 2018 Jeremy Robinson. All rights reserved.
//

import UIKit

class BookPagerController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    var book: Book?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        navigationItem.title = self.book?.title
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "CellID")
        
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        collectionView?.isPagingEnabled = true
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector (handleCloseBook))
    }
    
    @objc func handleCloseBook() {
        dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height - 64)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book?.pages.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! PageCell
        let page = book?.pages[indexPath.item]
        pageCell.textLabel.text = page?.text
        
        return pageCell
    }
}
