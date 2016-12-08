//
//  ViewController2.swift
//  Movin_Ball
//
//  Created by macadmin on 2016-07-25.
//  Copyright © 2016 Lambton_College. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    //Variables
    var miX: CGFloat = 0
    var miY: CGFloat = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func goRight(_ sender: UIButton) {
        
        miX = (barra?.frame.origin.x)!
        miY = (barra?.frame.origin.y)!
        print(miX)
        print(miY)
        miX = (barra?.frame.origin.x)!
        if (miX >= 40 && miX <= 280) {
            barra?.frame = (barra?.frame)!.offsetBy(dx: 10, dy: 0 )
        }
        
    }
    
    @IBAction func goLeft(_ sender: UIButton) {
        miX = (barra?.frame.origin.x)!
        miY = (barra?.frame.origin.y)!
        print(miX)
        print(miY)
        
        miX = (barra?.frame.origin.x)!
        if (miX >= 50 && miX <= 300) {
            barra?.frame = (barra?.frame)!.offsetBy(dx: -10, dy: 0 )
        }
        
    }
    
    
    //Creo las formas
    var barra: UIView?
    var ball: UIView?
    var ball2: UIView?
    var animator: UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

            
            // Mis Coordenadas
            let x: CGFloat = 150
            let y: CGFloat = 50
            let alto: CGFloat = 50
            let ancho: CGFloat = 50
        
            
            //Creo las formas
            //Circulo
            var dimen = CGRect(x: x,y: y,width: alto,height: ancho)
            ball = UIView(frame: dimen)
            ball?.layer.borderWidth = 1
            ball?.layer.masksToBounds = false
            ball?.layer.borderColor = UIColor.red.cgColor
            ball?.layer.cornerRadius = (ball?.frame.height)!/2
            ball?.clipsToBounds = true
            ball?.backgroundColor = UIColor.red
            
            
            
            //Rectangulo 2
//            dimen = CGRectMake(25, 25, 60, 60 )
//            ball2 = UIView(frame: dimen)
//            ball2?.backgroundColor = UIColor.greenColor()
        
            
            //Barra
            dimen = CGRect(x: 140, y: 580, width: 80, height: 15)
            barra = UIView(frame: dimen)
            barra?.backgroundColor = UIColor.black
     

        miX = (barra?.frame.origin.x)!
        miY = (barra?.frame.origin.y)!
        print(miX)
        print(miY)
        
            
            //Agregandolas a la pantalla
            self.view.addSubview(ball!)
            //self.view.addSubview(ball2!)
            self.view.addSubview(barra!)
            
            
            //Inicio mi animacion
            animator = UIDynamicAnimator(referenceView: self.view)
            
            //Gravedad
            //let gravity = UIGravityBehavior(items: [ball!, ball2!])
            let gravity = UIGravityBehavior(items: [ball!])
            let direction = CGVector(dx: 1.0, dy: 1.0)
            gravity.gravityDirection = direction
        
            //Colision
            //let boundries = UICollisionBehavior(items: [ball!, ball2!])
            let boundries = UICollisionBehavior(items: [ball!, barra!])
            boundries.translatesReferenceBoundsIntoBoundary = true
            
            //Elasticidad
            //let bounce = UIDynamicItemBehavior(items: [ball!, ball2!])
            let bounce = UIDynamicItemBehavior(items: [ball!])
            bounce.elasticity = 1.0
            
            animator?.addBehavior(bounce)
            animator?.addBehavior(boundries)
            animator?.addBehavior(gravity)
    }
    
    
   


}
