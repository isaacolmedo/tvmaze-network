//
//  File.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Foundation

// MARK: - Show
public struct Show: Decodable {
    public let id: Int
    public let url: String
    public let name, type, language: String
    public let genres: [String]?
    public let status: String?
    public let runtime, averageRuntime: Int?
    public let premiered: String?
    public let officialSite: String?
    public let schedule: Schedule?
    public let rating: Rating?
    public let weight: Int?
    public let network: Network?
    public let externals: Externals?
    public let image: Image
    public let summary: String
    public let updated: Int?
    public let links: Links?
}

// MARK: - Externals
public struct Externals: Decodable {
    public let tvrage, thetvdb: Int?
    public let imdb: String?
}

// MARK: - Image
public struct Image: Decodable {
    public let medium, original: String
}

// MARK: - Links
public struct Links: Decodable {
    public let linksSelf, previousepisode: Previousepisode
}

// MARK: - Previousepisode
public struct Previousepisode: Decodable {
    public let href: String
}

// MARK: - Network
public struct Network: Decodable {
    public let id: Int
    public let name: String
    public let country: Country
}

// MARK: - Country
public struct Country: Decodable {
    public let name, code, timezone: String
}

// MARK: - Rating
public struct Rating: Decodable {
    public let average: Double?
}

// MARK: - Schedule
public struct Schedule: Decodable {
    public let time: String
    public let days: [String]
}

