//
//  ViewController.swift
//  ObservablePattern
//
//  Created by Maola Ma on 15/10/2019.
//  Copyright © 2019 Maola. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let weatherData = WeatherData()
    let _ = DataDisplayer1(subject: weatherData)
    let d2 = DataDisplayer2(subject: weatherData)
    
    weatherData.setMeasurament(humidity: 10, temp: 15)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      weatherData.setMeasurament(humidity: 9, temp: 7)
      weatherData.removeObserver(o: d2)
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
      weatherData.setMeasurament(humidity: 32, temp: 14)
    }
    
  }

}

