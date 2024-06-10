# NetworkingSDK

This SDK handle `GET` operations for Latest, Popular and MovieDetails from TMDB.

## Public Method Signatures
- `public func fetchPopularMovies(page: Int = 1) -> AnyPublisher<[Movie], Error>`
- `public func fetchLatestMovies(page: Int = 1) -> AnyPublisher<[Movie], Error>`
- `public func fetchMovieDetails(movieId: Int, completion: @escaping (Result<MovieDetails, Error>) -> Void)`

### Movie Struct

The Movie struct is used to decode the properties of the `fetchPopular` and `fetchLatest` API .

```swift
public struct MovieResponse: Codable {
    public let page: Int
    public let results: [Movie]
    public let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
public struct Movie: Codable {
    public let adult: Bool
    public let backdropPath: String?
    public let genreIDS: [Int]
    public let id: Int
    public let originalTitle, overview: String
    public let popularity: Double
    public let posterPath, releaseDate, title: String?
    public let video: Bool
    public let voteAverage: Double
    public let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

}
```

### Movie Details Struct

The Movie Details struct is used to decode the properties of the `fetchMovieDetails` API .

```swift
public struct MovieDetails: Codable {
    public let id: Int
    public let title: String
    public let overview: String
    public let release_date: String
    public let runtime: Int
    public let vote_average: Double
    public let vote_count: Int
    public let backdrop_path: String?
}
```

