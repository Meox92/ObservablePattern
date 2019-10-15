//
//  Subject.swift
//  ObservablePattern
//
//  Created by Maola Ma on 15/10/2019.
//  Copyright © 2019 Maola. All rights reserved.
//

import Foundation
protocol Subject {
  func registrerObserver(o: Observer)
  func removeObserver(o: Observer)
  func notifyObserver()
}

class WeatherData: Subject {
  var observers = [Observer]()
  private var humidity: Int!
  private var temperature: Int!
  
  func registrerObserver(o: Observer) {
    observers.append(o)
  }
  
  func removeObserver(o: Observer) {
  }
  
  func notifyObserver() {
    for o in observers {
      o.update(humidity: humidity, temp: temperature)
    }
  }
  
  func measureChanged() {
    notifyObserver()
  }
  
  func setMeasurament(humidity: Int, temp: Int) {
    self.humidity = humidity
    self.temperature = temp
    measureChanged()
  }
  
  

  
}
