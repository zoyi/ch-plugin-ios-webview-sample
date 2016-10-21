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

  override func viewDidLoad() {
    super.viewDidLoad()
    self.openWebView()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }

  private func openWebView() {
    let url = URL(string: "https://app.channel.io/plugins/${YOUR_PLUGIN_ID}")!
    let request = URLRequest(url: url)
    self.webView.loadRequest(request)
  }
}

