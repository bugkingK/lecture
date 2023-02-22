//
//  ViewController.swift
//  BezierPath_3
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

class BezierPathView: UIView, CAAnimationDelegate {
    let values: [CGFloat] = [10, 20, 70, 30, 40, 15]
    var colors: [UIColor] = [.red, .yellow, .blue, .brown, .darkGray, .cyan, .orange]
    var currentIndex: Int = 0
    var rect: CGRect = .zero
    var startAngle: CGFloat = (-(.pi) / 2)
    var endAngle: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.rect = rect
        startAnimation()
    }
    
    func startAnimation() {
        
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
    }
}


