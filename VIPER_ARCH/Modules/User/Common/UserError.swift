//
//  UserError.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

enum UserError: Error, CustomStringConvertible {
    case unknownError
    var description: String { "Something went wrong..." }
}
