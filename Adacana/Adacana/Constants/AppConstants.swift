//
//  AppConstants.swift
//  Vijaysapplication8

import Foundation

struct AppConstants {
    static let serverURL: String = "https://nodedemo.dhiwise.co"

    enum URL {
        static let register: String = "/device/auth/register"
        static let login: String = "/device/auth/login"
        static let me: String = "/device/api/v1/user/me"
    }
}
