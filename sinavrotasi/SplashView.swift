import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if isActive {
                    ContentView()
                } else {
                    ZStack {
                        Color.appIconBg                        .ignoresSafeArea()

                        VStack {
                            Image("appIconForUI")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .foregroundColor(.blue)
                            Text("Sınav Rotası")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    self.isActive = true
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
