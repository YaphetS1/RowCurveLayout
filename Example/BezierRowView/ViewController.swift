//
//  ViewController.swift
//  BezierRowView
//
//  Created by 436910463q@gmail.com on 06/30/2018.
//  Copyright (c) 2018 436910463q@gmail.com. All rights reserved.
//

import UIKit
import BezierRowView

class ViewController: UIViewController {

    //Setup Type
    @IBOutlet weak var bez: BezierRowUIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup shape pats with current models or urls, and set callBack for click handle
        bez.setupBind(p: typeOfMaskThreeShape.r308, m: ["https://www.incimages.com/uploaded_files/image/970x450/creative-pano_37907.jpg",
                                                        "https://res.cloudinary.com/simpleview/image/upload/c_fill,f_auto,h_492,q_50,w_844/v1/clients/athens/32581440564_fb72de5891_z_21711e2d-306e-4aee-8f1e-c3d7476b0aa4.jpg",
                                                        "https://i1.wp.com/www.mindcharity.co.uk/wp-content/uploads/2017/03/creative-minds.jpg?ssl=1"])
        { item in
            print(item)
        }
        bez.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

