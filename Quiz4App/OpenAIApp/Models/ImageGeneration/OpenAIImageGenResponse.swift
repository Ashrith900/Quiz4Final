

import Foundation

struct OpenAIImageGenResponse: Decodable {
    let created: Int
    let data: [OpenAIImageGenData]
}

struct OpenAIImageGenData: Decodable {
    let url: String
}
