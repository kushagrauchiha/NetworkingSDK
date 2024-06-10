import Foundation

public struct MovieDetails: Codable {
    let id: Int
    let title: String
    let overview: String
    let release_date: String
    let runtime: Int
    let vote_average: Double
    let vote_count: Int
    let backdrop_path: String?
}
