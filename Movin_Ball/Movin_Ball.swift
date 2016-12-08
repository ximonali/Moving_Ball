//
//  Movin_Ball.swift
//  Movin_Ball
//
//  Created by macadmin on 2016-07-25.
//  Copyright © 2016 Lambton_College. All rights reserved.
//

import UIKit

//@IBDesignable //Rendering

class Movin_Ball: UIView {


    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        
        //Area
        let area = CGRect(x: 50, y: 50, width: 270, height: 500)
        context?.addRect(area)
        
        //Ball
        let context_ball = UIGraphicsGetCurrentContext()
        let ball = CGRect(x: 50,y: 50,width: 50,height: 50)
        context_ball?.addEllipse(in: ball)
        context_ball?.setFillColor(UIColor.red.cgColor)
        //CGContextFillPath(context_ball)
        
        
        
        //Dibuja el path
        context?.strokePath()

    }


}
