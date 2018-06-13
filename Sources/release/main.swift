import Commander
import WorkflowSteps

enum ReleaseType: String, ArgumentConvertible {
    case beta, final

    var description: String { return rawValue }
}

extension ReleaseType {
    init(parser: ArgumentParser) throws {
        guard let value = parser.shift(), let _ = ReleaseType(rawValue: value) else {
            throw ArgumentError.missingValue(argument: nil)
        }

        self.init(rawValue: value)!
    }
}

let main = command(
    Argument<ReleaseType>("releaseType", description: "beta or final")
    //TODO: Add argument for release number
) { releaseType in
    switch releaseType {
    case .beta:
        print("beta")
    case .final:
        print("final")
    }
}

main.run()
