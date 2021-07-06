//
//  ProfileHost.swift
//  Test
//
//  Created by ifechukwu daniel; on 05/07/2021.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    @EnvironmentObject var modelData :ModelData
    
    var body: some View {
        VStack(alignment: .leading , spacing:10){
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        draftProfile = modelData.profile
                    editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            }
            else {
              ProfileEditor(profile: $draftProfile)
                .onAppear {
                    draftProfile = modelData.profile
                }
                .onDisappear {
                    modelData.profile = draftProfile
                }
            }
            
        }.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
