

struct OpenAIImageGenBody: Encodable {
    let model: String
    let prompt: String
    let size: String
    let response_format: String?
}
