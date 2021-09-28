//
//  DetailViewController.swift
//  DeleveryApplication
//
//  Created by LEO YANG on 2021/09/28.
//

import UIKit

class DetailOrderViewController: UIViewController {
    
    let viewModel = DetailOrderViewModel()

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var noticeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        if let deleveryInfo = viewModel.deleveryInfo {
            noticeLabel.text = deleveryInfo.name
            imageView.image = deleveryInfo.image
        }
    }
    
    @IBAction func tappedReselectButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}


class DetailOrderViewModel {
    var deleveryInfo: DeleveryInfo?
    
    func update(model: DeleveryInfo?) {
        deleveryInfo = model
    }
}
