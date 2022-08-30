//
//  SwiftUIView.swift
//  NC2-TextLevelClassifier
//
//  Created by Seik Oh on 2022/08/29.
//

import SwiftUI
import NaturalLanguage
import CoreML

struct AddContentView: View {
    @State private var content = ""
    @State private var placeholderText = "Type in your text \nor Tap 'Scan Text' to add content"
    @State var result = ""
    
    var body: some View {
        let mlModel = try! TextLevelClassifierModel(configuration: MLModelConfiguration()).model
        let CEFRLevelPredictor = try! NLModel(mlModel: mlModel)
        VStack {
            VStack{
                Text("CEFR-Based Text Level Scanner")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Scan the text to know how difficult the text is!")
                    .foregroundColor(.gray)
            }
            .onTapGesture {
                self.endTextEditing()
            }
            ScrollView() {
                HStack{
                    Spacer()
                    ScanButton(text: $content)
                        .frame(width: 100, height: 40, alignment: .center)
                        .padding(.bottom, 0.0)
                        .padding(.trailing)
                }
                .padding(.trailing, 0.0)
                ZStack{
                    ZStack {
                        if self.content.isEmpty {
                            TextEditor(text:$placeholderText)
                                .font(.body)
                                .foregroundColor(.gray)
                                .border(.blue)
                                .frame(height: 350, alignment: .leading)
                                .padding(.top, 0.0)
                                .padding(.horizontal)
                        }
                        TextEditor(text: $content)
                            .font(.body)
                            .opacity(self.content.isEmpty ? 0.25 : 1)
                            .border(.blue)
                            .frame(height: 350, alignment: .leading)
                            .padding(.horizontal)
                    }
                }
                .onTapGesture {
                    self.endTextEditing()
                }
                Button(action: {
                    self.content = ""
                }) {
                    Text("Clear all Text")
                }
                .foregroundColor(.red)
                Divider()
                    .frame(width: 250, height: 3, alignment: .center)
                
                if self.content.isEmpty {
                    Text("**Scan Text** to get\nthe difficulty level of your text")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                else{
                    Text("The difficulty level of your text is")
                        .font(.title3)
                    Text(CEFRLevelPredictor.predictedLabel(for: content)!)
                        .font(.title)
                        .padding(.top, 1.0)
                }
            }
        }
    }
}

extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                        to: nil, from: nil, for: nil)
    }
}

struct AddContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddContentView()
    }
}
