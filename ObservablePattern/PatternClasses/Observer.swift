//
//  Observer.swift
//  ObservablePattern
//
//  Created by Maola Ma on 15/10/2019.
//  Copyright © 2019 Maola. All rights reserved.
//

import Foundation

protocol Observer {
  func update(humidity: Int, temp: Int)
}

protocol DisplayElement {
  func display()
}

class TemperatureDisplay: Observer, DisplayElement {
  private var subject: Subject!
  private var humidity: Int!
  private var temperature: Int!
  
  init(subject: Subject) {
    self.subject = subject
    subject.registrerObserver(o: self)
  }
  
  func update(humidity: Int, temp: Int) {
    self.humidity = humidity
    self.temperature = temp
    display()
  }
  
  func display() {
    print("Attualmente la temperatura è di \(self.temperature) e l'umidità è di \(self.humidity)")
  }
}


class Temperature2Display: Observer, DisplayElement {
  private var subject: Subject!
  private var humidity: Int!
  private var temperature: Int!
  
  init(subject: Subject) {
    self.subject = subject
    subject.registrerObserver(o: self)
  }
  
  func update(humidity: Int, temp: Int) {
    self.humidity = humidity
    self.temperature = temp
    display()
  }
  
  func display() {
    print("Attualmente la temperatura è di \(self.temperature) e l'umidità è di \(self.humidity)")
  }

}
