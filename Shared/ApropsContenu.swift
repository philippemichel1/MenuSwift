//
//  AproposContenu.swift
//  MontrerApropos
//
//  Created by Philippe MICHEL on 26/11/2020.
//

import SwiftUI

struct AproposContenu: View {
    var monTexte:String
    var couleurTexte:Color
    var body: some View {
        Text(monTexte)
            .foregroundColor(couleurTexte)
    }
}

struct Contenu_Previews: PreviewProvider {
    static var previews: some View {
        AproposContenu(monTexte: "About", couleurTexte: .black)
            .previewLayout(.sizeThatFits)
    }
}
