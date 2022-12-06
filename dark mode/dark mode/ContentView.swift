//
//  ContentView.swift
//  dark mode
//
//  Created by maryam almijlad on 06/12/2022.
//

import SwiftUI
struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}


//struct ContentView: View {
//@Environment(\.colorScheme) var Darkmode
   // @Environment(\.dismiss) var dismiss

//var body: some View {
        //Text(Darkmode == .dark ? " dark mode on" : " light mode on")
                //}
            //}
            //Button{
            //    isDark.toggle()
            //  }label: {
            
            //     Text("dark")
            //  }
            //}.preferredColorScheme(isDark ? .light: .dark)
            


    
    //struct ContentView_Previews: PreviewProvider {
       // static var previews: some View {
           // dark_mode()
      //  }
    //}

