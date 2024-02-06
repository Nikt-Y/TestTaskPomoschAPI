//
//  WardRowView.swift
//  TestTask
//
//  Created by Nik Y on 06.02.2024.
//

import SwiftUI
import PomoschAPI
import CachedAsyncImage

struct WardRowView: View {
    var ward: WardsPageQuery.Data.Wards.Edge

    var body: some View {
        NavigationLink(destination: DetailView(ward: ward.node)) {
            HStack {
                CachedAsyncImage(url: URL(string: ward.node.publicInformation.photo.url), urlCache: .imageCache)
                { phase in
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
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(ward.node.publicInformation.name.firstName)
                    Text(ward.node.publicInformation.name.middleName ?? "___")
                }
            }
        }
    }
}
