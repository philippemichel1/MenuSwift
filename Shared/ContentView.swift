//
//  ContentView.swift
//  Shared
//
//  Created by Philippe MICHEL on 25/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var montrerFenetre:Bool = false
    var body: some View {
        NavigationView {
           
            Text("Application principale")
                .padding()
            
                .navigationTitle("Exemple Menu")
            
                .toolbar {
                    ToolbarItem(placement:.bottomBar) {
                        ZStack {
                            Button(action: {
                                self.montrerFenetre.toggle()
                            }, label: {
                                Text("Menu")
                            })
                            if montrerFenetre {
                                ZStack(alignment: .center) {
                                    FenetreMenu(largeurFenetre: 175, hauteurFenetre: 105)
                                    VStack {
                                        AproposContenu(monTexte: "Mon menu", couleurTexte: .black)
                                        BoutonFermeture(fermetureFenetre: $montrerFenetre, couleurFond: .white, couleurTexte: .red)
                                    }
                                }
                            }
                        }
                        
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
