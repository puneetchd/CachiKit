import Foundation

public class ResultMetrics: Codable {
    public let analyzerWarningCount: Int?
    public let errorCount: Int?
    public let testsCount: Int?
    public let testsFailedCount: Int?
    public let warningCount: Int?
    
    private enum CodingKeys: String, CodingKey {
        case analyzerWarningCount
        case errorCount
        case testsCount
        case testsFailedCount
        case warningCount
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.analyzerWarningCount = try container.decodeValueIfPresent(Int.self, forKey: .analyzerWarningCount)
        self.errorCount = try container.decodeValueIfPresent(Int.self, forKey: .errorCount)
        self.testsCount = try container.decodeValueIfPresent(Int.self, forKey: .testsCount)
        self.testsFailedCount = try container.decodeValueIfPresent(Int.self, forKey: .testsFailedCount)
        self.warningCount = try container.decodeValueIfPresent(Int.self, forKey: .warningCount)
    }
}
