//
//  IntentHandler.swift
//  IntentsExtension
//
//  Created by cyan on 1/3/19.
//  Copyright © 2019 cyan. All rights reserved.
//

import Intents

class IntentHandler: INExtension {

  override func handler(for intent: INIntent) -> Any {
    
    if intent is HelloIntent {
      return HelloIntentHandler()
    }

    return self
  }

}
