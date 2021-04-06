import Foundation
import Combine
/// i/o
enum ___VARIABLE_productName:identifier___Intent {
	case startedUp
}

enum ___VARIABLE_productName:identifier___ViewResult {
	case startUp
}

struct ___VARIABLE_productName:identifier___ViewState {
	let text: String
}

enum ___VARIABLE_productName:identifier___ViewEffect {
	case someEffect
}

/// View Model
class ___VARIABLE_productName:identifier___ViewModel {
	/// - Input
	let intents = PassthroughSubject<___VARIABLE_productName:identifier___Intent, Never>()

	public func processIntent(intent: ___VARIABLE_productName:identifier___Intent) {
		intents.send(intent)
	}
	/// - Side effects
	lazy var results = intents.flatMap { _ in
		return Just<___VARIABLE_productName:identifier___ViewResult>(.startUp)
	}

	/// - Output
	lazy var viewState = results.compactMap { (viewResult) -> ___VARIABLE_productName:identifier___ViewState in
		switch viewResult {
		case .startUp:
		return ___VARIABLE_productName:identifier___ViewState(text: "View State from the view model.")
		}
	}

	lazy var viewEffects = results.compactMap { (___VARIABLE_productName:identifier___ViewResult) -> ___VARIABLE_productName:identifier___ViewEffect? in
		return nil
	}
}

