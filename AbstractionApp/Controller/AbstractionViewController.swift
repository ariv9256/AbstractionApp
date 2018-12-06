//
//  AbstractionViewController.swift
//  AbstractionApp
//
//  Created by Rivas, Angela on 12/6/18.
//  Copyright © 2018 CTEC CSP. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{

    super.viewDidLoad()
    dataSource = self
    
    if let firstViewController = orderedAbstractionViews.first
    {
       setViewControllers([firstViewController],
                          direction: .forward,
                          animated: true,
                          completion: nil)

        // Do any additional setup after loading the view.
    }
    private lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Swift"),
            self.newAbstractionViewCOntroller(abstractionLevel: "Block"),
            self.newAbstractionViewCOntroller(abstractionLevel: "ByteCode"),
            self.newAbstractionViewCOntroller(abstractionLevel: "Binary"),
            self.newAbstractionViewCOntroller(abstractionLevel: "LogicalGate")
        ]
    }()
    private func newAbstractionViewCOntroller(abstractionLevel: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstrationLevel)ViewController")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
