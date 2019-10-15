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
    let tempDisplay = TemperatureDisplay(subject: weatherData)
    let temp2Dispay = Temperature2Display(subject: weatherData)
    
    weatherData.setMeasurament(humidity: 10, temp: 15)
    DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
      weatherData.setMeasurament(humidity: 5, temp: 5)
    }
    
  }

}

