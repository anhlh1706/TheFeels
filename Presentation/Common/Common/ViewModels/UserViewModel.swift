//
//  UserViewModel.swift
//  Common
//
//  Created by Adriano Dias on 29/09/20.
//

import Domain
import RxDataSources

public struct UserViewModel: IdentifiableType, Equatable {

    let user: User

    public var identity: String {
        user.id.description
    }

    public var name: String {
        user.name
    }

    public var username: String {
        "@\(user.screenName)"
    }

    public var profileImageUrl: URL? {
        URL(string: user.profileImageUrl)
    }
}

public extension User {

    var asViewModel: UserViewModel {
        UserViewModel(user: self)
    }
}

public extension Array where Element == User {

    var asViewModels: [UserViewModel] {
        map({ $0.asViewModel })
    }
}

public struct UsersSection {

    public var header: String
    public var items: [Item]

    public init(header: String, items: [Item]) {
        self.header = header
        self.items = items
    }
}

extension UsersSection: AnimatableSectionModelType {

    public typealias Item = UserViewModel

    public var identity: String {
        return header
    }

    public init(original: UsersSection, items: [Item]) {
        self = original
        self.items = items
    }
}
