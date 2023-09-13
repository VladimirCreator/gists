/* Read Me
 -> History Entry | iPadOS 17.0 | Swift Playgrounds | Тестовое задание №5 | RoomViewModel.swift | Initially Modified: 04:45 PM Wed 13 Sep 2023
 -> History Entry | iPadOS 17.0 | Swift Playgrounds | Тестовое задание №5 | RoomViewModel.swift |      Last Modified: __:__ PM Wed 13 Sep 2023
   /ViewModel/RoomViewModel.swift
   Wed 13 Sep 2023
   04:01 PM | /View/ -> /View/General/ | (~)
   #folder
*/

import SwiftUI

internal class RoomViewModel: ObservableObject {

    @Published
    internal var room: Rooms = .zero // Initially Modified: 03:28 PM Tue 12 Sep 2023

    internal func fetch() async throws -> Void {
        //guard false else { return }
        guard let url = URL(string: ROOM_URL) else { return }

        let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))

        Task { @MainActor in
            let decoder: JSONDecoder = .init()
            self.room = try decoder.decode(Rooms.self, from: data)
        }
    }

}
