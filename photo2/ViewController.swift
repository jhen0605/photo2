//
//  ViewController.swift
//  photo2
//
//  Created by 簡吟真 on 2021/7/10.
//

import UIKit
import CoreImage.CIFilterBuiltins //內建濾鏡

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func filterSliderChange(_ sender: UISlider) {
        let image = UIImage(named: "馬路")                       //產生CIImage
              let ciImage = CIImage(image: image!)              //產生CIImage
              let filter = CIFilter.colorMonochrome()       //製造濾鏡效果
              filter.inputImage = ciImage                       //設定 CIFilter
              filter.intensity = sender.value                   //設定 CIFilter
              if let outputCIImage = filter.outputImage {   //產生加了濾鏡效果
                  let filterImage = UIImage(ciImage: outputCIImage)
                  imageView.image = filterImage
              }
    }
}
