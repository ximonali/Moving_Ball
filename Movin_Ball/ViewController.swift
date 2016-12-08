//
//  ViewController.swift
//  Movin_Ball
//
//  Created by macadmin on 2016-07-25.
//  Copyright © 2016 Lambton_College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables y Botones
    
    // Mis Coordenadas
    let x1: CGFloat = 160
    let y1: CGFloat = 250
    let alto: CGFloat = 50
    let ancho: CGFloat = 50
    
    
    //Creo las formas
    var ball: UIView?
    var rectangulo: UIView?
    var dimen: CGRect?
    var miX: CGFloat = 0
    var miY: CGFloat = 0
    
    
    @IBAction func goCenter(_ sender: UIButton) {
        ball?.frame = CGRect(x: x1,y: y1,width: ancho,height: alto)
    }
    
    @IBAction func goUp(_ sender: UIButton) {
//         miX = (ball?.frame.origin.x)!
         miY = (ball?.frame.origin.y)!
//        print(miX)
//        print(miY)
        
        if (miY >= 70 && miY <= 410) {
            ball?.frame = (ball?.frame)!.offsetBy(dx: 0, dy: -10 )
            //print(CGRectOffset((ball?.frame)!, 0, -10 ))
        }
        

    }
    
    @IBAction func goDown(_ sender: UIButton) {
        
//        miX = (ball?.frame.origin.x)!
        miY = (ball?.frame.origin.y)!
//        print(miX)
//        print(miY)
        
        if (miY >= 50 && miY <= 400) {
            ball?.frame = (ball?.frame)!.offsetBy(dx: 0, dy: 10 )
            //print(CGRectOffset((ball?.frame)!, 0, 10 ))
        }
    }
    
    @IBAction func goLeft(_ sender: UIButton) {
        miX = (ball?.frame.origin.x)!
        if (miX >= 50 && miX <= 300) {
            ball?.frame = (ball?.frame)!.offsetBy(dx: -10, dy: 0 )
        }
    }
    
    @IBAction func goRight(_ sender: UIButton) {
        miX = (ball?.frame.origin.x)!
        if (miX >= 40 && miX <= 280) {
            ball?.frame = (ball?.frame)!.offsetBy(dx: 10, dy: 0 )
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        start()

    }
    
    func start()  {
        //Creo las formas
        
        
        //Circulo
        dimen = CGRect(x: x1,y: y1,width: ancho,height: alto)
        ball = UIView(frame: dimen!)
        ball?.layer.borderWidth = 1
        ball?.layer.masksToBounds = false
        ball?.layer.borderColor = UIColor.red.cgColor
        ball?.layer.cornerRadius = (ball?.frame.height)!/2
        ball?.clipsToBounds = true
        ball?.backgroundColor = UIColor.red
        
        
        //Area
        dimen = CGRect(x: 40, y: 60, width: 300,height: 400)
        rectangulo = UIView(frame: dimen!)
        rectangulo?.backgroundColor = UIColor.cyan
        
        //Agregandolas a la pantalla
        self.view.addSubview(rectangulo!)
        self.view.addSubview(ball!)
        
        
    }


}

