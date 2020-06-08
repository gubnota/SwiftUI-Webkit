//
//  ContentView.swift
//  SwiftUIWebView
//
//  Created by Larry Moore on 8/6/2020.
//  Copyright © 2020 Fenki.net. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
//    var body: some View {
//        Text("Hello, World!")
//    }

//load an html file
let testHTML = Bundle.main.url(forResource: "www/index", withExtension: "html")
var body: some View {
    WebView(request: URLRequest(url: testHTML!))
}

}

struct WebView: UIViewRepresentable {
    let request: URLRequest
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
         uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
