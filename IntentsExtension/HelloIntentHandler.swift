//
//  HelloIntentHandler.swift
//  IntentsExtension
//
//  Created by cyan on 1/3/19.
//  Copyright © 2019 cyan. All rights reserved.
//

import Intents

public class HelloIntentHandler: NSObject, HelloIntentHandling {

  public func confirm(intent: HelloIntent, completion: @escaping (HelloIntentResponse) -> Void) {
    completion(HelloIntentResponse(code: .ready, userActivity: nil))
  }

  public func handle(intent: HelloIntent, completion: @escaping (HelloIntentResponse) -> Void) {
    completion(HelloIntentResponse.failure(message: "Something is wrong!")) // Doesn't work
//    completion(HelloIntentResponse.success(message: "Nothing is wrong.")) // Works as expected
  }
}
