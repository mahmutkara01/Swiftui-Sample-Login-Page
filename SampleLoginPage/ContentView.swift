//
//  ContentView.swift
//  SampleLoginPage
//
//  Created by mahmut kara on 21.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            Image("pizza")
                .imageScale(.large)
                .frame(width: 100,height: 50)
            
            Text("Create Account")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Email",text: $email)
                .padding()
                .foregroundColor(Color.black)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10.0)
                .padding(.horizontal)
                .frame(height: 75)
            
            SecureField("Password",text: $password)
                .padding()
                .foregroundColor(Color.black)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10.0)
                .padding(.horizontal)
            
            
            VStack {
                Button(action: {
                    print("Email: \(email) - Password: \(password)")
                }, label: {
                    Text("Create Account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 325, height: 55)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            )}.frame(height: 70)
            
            Text("Already have an account?")
                .padding(.vertical,10)
            
            VStack(spacing:13){
                SocialLoginButton(image: Image("google"), text: Text("Sign in with Google"))
                SocialLoginButton(image: Image("facebook"), text: Text("Sign in with Facebook"))
                SocialLoginButton(image: Image("microsoft"), text: Text("Sign in with Microsoft"))
                
            }.padding(.vertical,20)
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        Button(action: {
            print("socialLogin Clicked")
        }) {
            HStack(spacing: 10) {
                image
                    .resizable()
                    .frame(width: 30,height: 30)
                    .foregroundColor(.white)

                text
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal,15)
                Spacer()
            }
            .padding(20)
            .frame(width: 300,height: 60)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(15)
        }
    }
}
