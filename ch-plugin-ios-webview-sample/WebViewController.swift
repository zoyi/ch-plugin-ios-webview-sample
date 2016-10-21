//
//  WebViewController.swift
//  ch-plugin-ios-webview-sample
//
//  Created by jenny on 10/21/16.
//  Copyright © 2016 ZOYI. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

  @IBOutlet weak var webView: UIWebView!

  override var prefersStatusBarHidden: Bool {
    return true
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    print("viewDidLoad in WebViewController")
    self.openWebView()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }



  private func openWebView() {
    let url = URL(string: "https://app.channel.io/plugins/b2b59139-f0cb-400d-b989-46a6793fdb3b")!
    let request = URLRequest(url: url)
    self.webView.loadRequest(request)
  }
}

