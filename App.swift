import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        LocalWebView(fileName: "index")
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 2/255, green: 6/255, blue: 23/255))
    }
}

struct LocalWebView: UIViewRepresentable {
    let fileName: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.setValue(true, forKey: "developerExtrasEnabled")
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "html") {
            uiView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }
}