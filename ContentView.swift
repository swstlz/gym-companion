import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("What program are you training today?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading, .trailing])
                
                Spacer()
                
                VStack(spacing: 20) {
                    NavigationLink(destination: WorkoutDetailView(workoutType: "Cardio")) {
                        Text("Cardio")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: WorkoutDetailView(workoutType: "Strength")) {
                        Text("Strength")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: WorkoutDetailView(workoutType: "Flexibility")) {
                        Text("Flexibility")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: WorkoutDetailView(workoutType: "Balance")) {
                        Text("Balance")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.purple)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Gym Companion")
        }
    }
}

struct WorkoutDetailView: View {
    var workoutType: String
    
    var body: some View {
        Text("Details for \(workoutType) workout")
            .font(.largeTitle)
            .padding()
    }
}

#Preview {
    ContentView()
}
