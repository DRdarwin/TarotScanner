import SwiftUI
import Alamofire
import AlamofireImage

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to TarotScanner")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: CameraViewControllerRepresentable()) {
                    Text("Scan Tarot Card")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
