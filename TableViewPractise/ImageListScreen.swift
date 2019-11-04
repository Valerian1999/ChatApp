//
//  ViewController.swift
//  TableViewPractise
//
//  Created by Valerian   on 10/29/19.
//  Copyright © 2019 Valerian  . All rights reserved.
//

import UIKit

class ImageListScreen: UIViewController {
    
    var images: [Picture] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArray()
    }
    func createArray() -> [Picture] {
        
        var tempImages: [Picture] = []
        
        let image1 = Picture(image: UIImage(named: "pic1")!, title: "Such a beautiful architecture")
        let image2 = Picture(image: UIImage(named: "pic2")!, title: "Such a beautiful architecture")
        let image3 = Picture(image: UIImage(named: "pic3")!, title: "Such a beautiful architecture")
        let image4 = Picture(image: UIImage(named: "pic4")!, title: "Such a beautiful architecture")
        let image5 = Picture(image: UIImage(named: "pic5")!, title: "Such a beautiful architecture")
        let image6 = Picture(image: UIImage(named: "pic6")!, title: "Such a beautiful architecture")
        let image7 = Picture(image: UIImage(named: "pic7")!, title: "Such a beautiful architecture")
        let image8 = Picture(image: UIImage(named: "pic8")!, title: "Such a beautiful architecture")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        tempImages.append(image5)
        tempImages.append(image6)
        tempImages.append(image7)
        tempImages.append(image8)
        
        return tempImages
    }
    
}

//MARK: - UITableViewDataSource & Delegeta
extension ImageListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! imageCell
        
        cell.setImage(image: image)
        
        return cell
    }
}
