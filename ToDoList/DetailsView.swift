   //
   //  DetailView.swift
   //  ToDoList
   //
   //  Created by Christopher Neily on 10/14/24.
   //

import SwiftUI

struct DetailsView: View {
   
   var passedValue: String
   @Environment(\.dismiss) private var dismiss
   
   var body: some View {
      VStack {
         Image(systemName: "swift")
            .resizable()
            .scaledToFit()
            .foregroundStyle(.orange)
         
         Text("You Are a Swifty Legend!\nAnd you passed over the value \(passedValue)")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
         
         Spacer()
         
         Button("Get Back!") {
            dismiss()
         }
         .buttonStyle(.borderedProminent)
      }
      .padding()
   }
}

#Preview {
   DetailsView(passedValue: "")
}
