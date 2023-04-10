

import Foundation

struct OpenAICompletionsBody: Encodable {
    let model: String
    let prompt: String
    let max_tokens: Int
    let temperature: Float?
}
