//
//  BT6ViewController.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 13/04/2022.
//

import UIKit

class BT6ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let nib = UINib(nibName: "BT6ViewController", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
        
//        let collectionViewFlowLayout = UICollectionViewFlowLayout()
//        collectionView.isPagingEnabled = true
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView2.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell2")
        collectionView2.register(
            UINib(nibName: "HeaderCRV", bundle: Bundle.main),
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "Header"
        )
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
    }
    @IBAction func btArrowLeft(_ sender: Any) {
        guard var currentIndexPath = collectionView.indexPathsForVisibleItems.last else { return }
        print(currentIndexPath)
        currentIndexPath.item -= 1
        if currentIndexPath.item >= 0 {
            self.collectionView.scrollToItem(at: currentIndexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
        }
    }
    @IBAction func btArrowRight(_ sender: Any){
        guard var currentIndexPath = collectionView.indexPathsForVisibleItems.first else { return }
        print(currentIndexPath)
        currentIndexPath.item += 1
        if currentIndexPath.item < 3 {
            self.collectionView.scrollToItem(at: currentIndexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
        }
        
    }
}
extension BT6ViewController: UICollectionViewDataSource{
//    CollectionView 1
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == collectionView2 {
            return 4
        }else  {
            return 1
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView2 {
            return 5
        }else{
            return 3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath)
            cell.largeContentTitle = "dsds"
            cell.backgroundColor = .gray
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
            cell.largeContentTitle = "dsd"
            cell.backgroundColor = .gray
            return cell
        }
    
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader where collectionView == collectionView2:
            let header = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: "Header", for: indexPath
            )
            return header
        default:
            return UICollectionReusableView()
        }
    }
}

extension BT6ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionView2{
            let b  =  UIScreen.main.bounds.width / 5 - 10
            return CGSize(width: b, height: 50)
        } else {
            let width  =  UIScreen.main.bounds.width - 20
            return CGSize(width: width , height: 216)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == collectionView2 {
           return UIEdgeInsets(top: 5, left: 2, bottom: 5, right: 2)
        }else {
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if collectionView == collectionView2 {
            return CGSize(width: 100, height: 30)
        } else {
            return .zero
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == collectionView2 {
            return 0
        } else {
            return 20
        }
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
//        if collectionView == collectionView2 {
//            return 0
//        } else {
//            return 20
//        }
//    }

}
