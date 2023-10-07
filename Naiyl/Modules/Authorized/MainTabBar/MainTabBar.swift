//
//  MainTabBar.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct MainTabBarView: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            TabView(selection: $selectedTab) {
                HomeCoordinator().view()
                    .tag(0)
                
                FavoritesCoordinator().view()
                    .tag(1)
                
                ProfileCoordinator().view()
                    .tag(2)
            }
            
            BaseContainer(backgroundColor: AppColors.getColor(.primaryBlack)) {
                HStack {
                    ForEach(TabbedItems.allCases, id: \.self) { item in
                        Button {
                            withAnimation {
                                selectedTab = item.rawValue
                                HapticService.generateHaptic(.light)
                            }
                        } label: {
                            CustomTabItem(
                                imageName: item.imageName,
                                selectedImageName: item.selectedImageName,
                                title: item.title,
                                isActive: selectedTab == item.rawValue
                            )
                        }
                        .disabled(selectedTab == item.rawValue)
                    }
                }
                .padding(10)
            }
            .frame(height: 70)
            .cornerRadius(35)
            .padding(.horizontal, 36)
        }
    }
    
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}

