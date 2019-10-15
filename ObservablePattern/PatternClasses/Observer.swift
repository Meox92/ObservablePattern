//
//  Observer.swift
//  ObservablePattern
//
//  Created by Maola Ma on 15/10/2019.
//  Copyright © 2019 Maola. All rights reserved.
//

import Foundation

protocol Observer {
  var id: Int {get set}
  func updateData(humidity: Int, temp: Int)
}

protocol DisplayElement {
  func display()
}

class DataDisplayer1: Observer, DisplayElement {
  var id: Int
  private var subject: Subject!
  private var humidity: Int!
  private var temperature: Int!
  
  init(subject: Subject) {
    self.subject = subject
    self.id = 1
    subject.registrerObserver(o: self)
  }
  
  func updateData(humidity: Int, temp: Int) {
    self.humidity = humidity
    self.temperature = temp
    display()
  }
  
  func display() {
    print("[DataDisplayer1] Temperature: \(self.temperature) \nHumidity \(self.humidity)")
  }
}


class DataDisplayer2: Observer, DisplayElement {
  var id: Int
  private var subject: Subject!
  private var humidity: Int!
  private var temperature: Int!
  
  init(subject: Subject) {
    self.subject = subject
    self.id = 2
    subject.registrerObserver(o: self)
  }
  
  func updateData(humidity: Int, temp: Int) {
    self.humidity = humidity
    self.temperature = temp
    display()
  }
  
  func display() {
    print("[DataDisplayer2] Temperature: \(self.temperature) \nHumidity \(self.humidity)")
  }

}
