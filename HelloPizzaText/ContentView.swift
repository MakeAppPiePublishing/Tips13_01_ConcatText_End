//
//  ContentView.swift
//  HelloPizzaText
//
//  Created by Steven Lipton on 10/23/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 13 (Q1 2021) video 01
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn about concatention of text Views in SwiftUI including in-line graphics. 
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    let hello = Text("Hello ")
    let pizza = Text("pizza ").foregroundColor(.red).bold()
    let love = Text("love ")
    let marg = Text(Image("marg"))
    let wave = Text(Image(systemName:"hand.wave.fill"))
    var body: some View {
        VStack {
            (wave + hello + pizza + wave + wave + hello + pizza + wave).font(.largeTitle)
            Image("marg").resizable().scaledToFit()
            marg.baselineOffset(-25) + Text(" I ") + love.italic() + pizza
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
