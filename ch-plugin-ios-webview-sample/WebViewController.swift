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
    // Do any additional setup after loading the view, typically from a nib.
    print("viewDidLoad in WebViewController")

    self.openWebView()
  }

  private func openWebView() {
    let url = URL(string: "https://app.channel.io/plugins/b2b59139-f0cb-400d-b989-46a6793fdb3b")!
    let request = URLRequest(url: url)
    self.webView.loadRequest(request)
  }
}

/*
 
 For NSURLSession/NSURLConnection HTTP load failed (kCFStreamErrorDomainSSL, -9843) Error
 At Info.plist add -- security wise, may be bad
 <key>NSAppTransportSecurity</key>
 <dict>
 <key>NSAllowsArbitraryLoads</key>
 <true/>
 </dict>

 -- another option
 <key>NSAppTransportSecurity</key>
 <dict>
 <key>NSExceptionDomains</key>
 <dict>
 <key>myDomain.com</key>
 <dict>
 <!--Include to allow subdomains-->
 <key>NSIncludesSubdomains</key>
 <true/>
 <!--Include to allow HTTP requests-->
 <key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
 <true/>
 <!--Include to specify minimum TLS version-->
 <key>NSTemporaryExceptionMinimumTLSVersion</key>
 <string>TLSv1.1</string>
 </dict>
 </dict>
 </dict>




 */
