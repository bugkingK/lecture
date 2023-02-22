//
//  ViewController.swift
//  BubbleView
//
//  Created by moon.kwon on 2022/12/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class BubbleView: UIView {
    enum PeakPosition {
        case top, bottom
    }

    enum PeakAlign {
        case left, center, right
    }

    @IBInspectable var lineWidth: CGFloat = 1 { didSet { setNeedsDisplay() } }
    @IBInspectable var lineColor: UIColor = .red { didSet { setNeedsDisplay() } }
    @IBInspectable var fillColor: UIColor = .gray { didSet { setNeedsDisplay() } }
    @IBInspectable var peakSize: CGSize = .init(width: 8, height: 6) {
        didSet { setNeedsDisplay() }
    }

    var peakPosition: PeakPosition = .bottom { didSet { setNeedsDisplay() } }
    var peakAlign: PeakAlign = .center { didSet { setNeedsDisplay() } }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
    }
}
