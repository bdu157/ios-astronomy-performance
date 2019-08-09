//
//  FilterPhotoOperation.swift
//  Astronomy
//
//  Created by Dongwoo Pae on 8/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class FilterImageOperation: Operation {
    let fetchOpertaion: FetchPhotoOperation
    
    private(set) var image: UIImage?
    
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOpertaion = fetchOperation
    }

    //override main operation
    override func main() {
        if let data = fetchOpertaion.imageData,
            let image = UIImage(data: data) {
        self.image = image.filtered()
        NSLog("Finished filtering image")
        }
    }
}
