//
//  ViewController.swift
//  SiriKit
//
//  Created by cyan on 1/3/19.
//  Copyright © 2019 cyan. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let intent = HelloIntent()
    let interaction = INInteraction(intent: intent, response: nil)
    interaction.donate { _ in

    }

    INPreferences.requestSiriAuthorization { status in
      print("Status: \(status)")
    }
  }
}

