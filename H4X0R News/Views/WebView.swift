//
//  WebView.swift
//  H4X0R News
//
//  Created by Martin Novak on 03.04.2023..
//

import SwiftUI
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
