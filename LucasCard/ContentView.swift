//
//  ContentView.swift
//  LucasCard
//
//  Created by Lucas Lacerda on 30/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Lucas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 1)
                )
                Text("Lucas Lacerda")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                Divider()
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 50)
                        .overlay(
                            HStack{
                                Image(systemName: "phone.fill")
                                    .foregroundColor(.green)
                                Text("+55 31 995721453")
                            }
                        )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
