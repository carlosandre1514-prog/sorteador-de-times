import SwiftUI

@main
struct KbcSorteiosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("kbc-Sorteios")
                .font(.largeTitle)
                .bold()
            Text("Gerenciador e Sorteador Balanceado por Estrelas")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
    }
}