//
//  DetailView.swift
//  TestTask
//
//  Created by Nik Y on 06.02.2024.
//

import SwiftUI
import PomoschAPI
import CachedAsyncImage

struct DetailView: View {
    var ward: WardsPageQuery.Data.Wards.Edge.Node
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                CachedAsyncImage(url: URL(string: ward.publicInformation.photo.url), urlCache: .imageCache) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                    case .empty:
                        ProgressView()
                    case .failure(_):
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFill()
                    @unknown default:
                        ProgressView()
                    }
                }
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Text(ward.publicInformation.name.fullName)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Пол: \(genderString(ward.publicInformation.gender))")
                Text("Город: \(ward.publicInformation.city)")
                Text(ward.publicInformation.story)
                    .padding(.top, 5)
                
            }.padding()
        }
    }
    
    private func genderString(_ gender: GraphQLEnum<Gender>) -> String {
        switch gender {
        case .male:
            return "Муж."
        case .female:
            return "Жен."
        default:
            return "Неизвестно"
        }
    }
}
