//
//  ViewController.swift
//  Project Light
//
//  Created by Renesansz on 16/06/2017.
//  Copyright © 2017 Renesansz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var lightButton: UIButton!
  var isLightOn = true

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    updateUI()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPressed(_ sender: Any) {
    isLightOn = !isLightOn
    updateUI()
  }
  
  func updateUI() {
    if isLightOn {
      view.backgroundColor = .white
      lightButton.setTitle("OFF", for: .normal)
    } else {
      view.backgroundColor = .black
      lightButton.setTitle("ON", for: .normal)
    }
  }

}

