//
//  WebViewController.swift
//  ch-plugin-ios-webview-sample
//
//  Created by jenny on 10/21/16.
//  Copyright © 2016 ZOYI. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    print("viewDidLoad in WebViewController")

    self.openWebView()
  }

  private func openWebView() {
//    UIApplication.shared.application
//    let main = UIStoryboard(name: "Main'", bundle: nil)
//    let controller = main.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController

    let url = URL(string: "http://www.naver.com")!
    UIApplication.shared.open(url, options: [:], completionHandler: nil)

  }

}
