//
//  Colour+Gradient.swift
//  Fabelizer
//
//  Created by Infinitum on 04/10/18.
//  Copyright © 2018 Infinitumus.com. All rights reserved.
//

import Foundation
import  UIKit
extension UIView
{
    func setGardientBackGround(colourOne:UIColor,colourTwo:UIColor)  {
        let gradientlayer = CAGradientLayer()
gradientlayer.frame=bounds
        gradientlayer.colors=[colourOne.cgColor,colourTwo.cgColor]
        gradientlayer.locations=[0.0,1.0]
        gradientlayer.startPoint=CGPoint(x: 1.0, y: 1.0)
        gradientlayer.endPoint=CGPoint(x: 0.0, y: 0.5)
        layer.insertSublayer(gradientlayer, at: 0)
    }
}
