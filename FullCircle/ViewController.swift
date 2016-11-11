//
//  ViewController.swift
//  FullCircle
//
//  Created by Michael Vilabrera on 11/11/16.
//  Copyright © 2016 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var circle: Circle!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.addCircleView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addCircleView() {
        let diceRoll = CGFloat(Int(arc4random_uniform(7))*50)
        let circleWidth = CGFloat(200)
        let circleHeight = circleWidth
        
        
        let rect = CGRect(origin: CGPoint(x: diceRoll,y :0), size: CGSize(width: circleWidth, height: circleHeight))
        
        // Create a new CircleView
        let circleView = Circle(frame: rect)
        
        
        view.addSubview(circleView)
        
        // Animate the drawing of the circle over the course of 1 second
        circleView.animateCircle(duration: 1.0)
    }
}

