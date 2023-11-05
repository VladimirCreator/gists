/* Read Me
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | Тестовое задание №5 | PriceSection.swift | Initially Modified: 09:01 PM Fri 8 Sep 2023
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | Тестовое задание №5 | PriceSection.swift |      Last Modified: 09:16 PM Fri 8 Sep 2023
   /Views/Shared/Sections/PriceSection.swift
   Fri 8 Sep 2023
     09:36 PM | /Views/Shared/ -> /Views/Shared/Sections/ | (+)
     #file
*/

import SwiftUI

internal struct PriceSection: View {
    internal let minimalPrice: UInt
    internal let priceForIt: String
    internal let priceForItStrategy: (UInt) -> String

    internal var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 8.0) {
            Text(priceForItStrategy(minimalPrice))
                .font(.system(size: 30.0))
                .fontWeight(.semibold)

            Text(priceForIt)
                .font(.system(size: 16.0))
                .foregroundColor(.x828796)
        }
    }
}