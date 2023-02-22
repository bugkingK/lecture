//
//  ViewController.swift
//  BezierPath_2
//
//  Created by moon.kwon on 2023/02/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class BezierPathView: UIView {
    let values: [CGFloat] = [10, 20, 70]
    let colors: [UIColor] = [.red, .yellow, .blue, .brown, .darkGray, .cyan, .orange]
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let total = values.reduce(0, +)
        let center: CGPoint = .init(x: rect.midX, y: rect.midY)
        var startAngle: CGFloat = (-(.pi) / 2)
        var endAngle: CGFloat = 0
    }
}
