//
//  File.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Foundation

// MARK: - Show
struct Show: Decodable {
    let id: Int
    let url: String
    let name, type, language: String
    let genres: [String]?
    let status: String?
    let runtime, averageRuntime: Int?
    let premiered: String?
    let officialSite: String?
    let schedule: Schedule?
    let rating: Rating?
    let weight: Int?
    let network: Network?
    let externals: Externals?
    let image: Image
    let summary: String
    let updated: Int?
    let links: Links?
}

// MARK: - Externals
struct Externals: Decodable {
    let tvrage, thetvdb: Int?
    let imdb: String?
}

// MARK: - Image
struct Image: Decodable {
    let medium, original: String
}

// MARK: - Links
struct Links: Decodable {
    let linksSelf, previousepisode: Previousepisode
}

// MARK: - Previousepisode
struct Previousepisode: Decodable {
    let href: String
}

// MARK: - Network
struct Network: Decodable {
    let id: Int
    let name: String
    let country: Country
}

// MARK: - Country
struct Country: Decodable {
    let name, code, timezone: String
}

// MARK: - Rating
struct Rating: Decodable {
    let average: Double?
}

// MARK: - Schedule
struct Schedule: Decodable {
    let time: String
    let days: [String]
}

