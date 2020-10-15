//
//  UIWebViewController.swift
//  EmnovaApp
//
//  Created by Emir Shayymov on 10/6/20.
//

import UIKit
import WebKit

class UIWebViewController: UIViewController {
    
    /*
     MARK: - Outlets
     */
    
    @IBOutlet weak var webView: WKWebView!
    
    var progressView: UIProgressView!
    
    /*
     MARK: - Life cycle
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupProgressView()
        setupWebView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        progressView.frame.size.width = view.bounds.width
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(WKWebView.estimatedProgress) {
            let progress = webView.estimatedProgress >= 1 ? 0 : webView.estimatedProgress
            progressView.progress = Float(progress)
        }
    }

}

/*
 MARK: - Private functions
 */

private extension UIWebViewController {
    
    func setupWebView() {
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        let url = URL(string: "https://emnova.com.tm")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func setupProgressView() {
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.trackTintColor = UIColor.clear
        view.addSubview(progressView)
    }
}
