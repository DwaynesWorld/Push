import Foundation

/// A Nimble matcher that succeeds when the actual expression evaluates to an
/// error from the specified case.
///
/// Errors are tried to be compared by their implementation of Equatable,
/// otherwise they fallback to comparison by _domain and _code.
public func matchError<T: Error>(_ error: T) -> Predicate<Error> {
  return Predicate.define { actualExpression in
    let actualError = try actualExpression.evaluate()

    let failureMessage = FailureMessage()
    setFailureMessageForError(
      failureMessage,
      postfixMessageVerb: "match",
      actualError: actualError,
      error: error
    )

    var matches = false
    if let actualError = actualError, errorMatchesExpectedError(actualError, expectedError: error) {
      matches = true
    }

    return PredicateResult(bool: matches, message: failureMessage.toExpectationMessage())
  }
}

/// A Nimble matcher that succeeds when the actual expression evaluates to an
/// error from the specified case.
///
/// Errors are tried to be compared by their implementation of Equatable,
/// otherwise they fallback to comparision by _domain and _code.
public func matchError<T: Error & Equatable>(_ error: T) -> Predicate<Error> {
  return Predicate.define { actualExpression in
    let actualError = try actualExpression.evaluate()

    let failureMessage = FailureMessage()
    setFailureMessageForError(
      failureMessage,
      postfixMessageVerb: "match",
      actualError: actualError,
      error: error
    )

    var matches = false
    if let actualError = actualError as? T, error == actualError {
      matches = true
    }

    return PredicateResult(bool: matches, message: failureMessage.toExpectationMessage())
  }
}

/// A Nimble matcher that succeeds when the actual expression evaluates to an
/// error of the specified type
public func matchError<T: Error>(_ errorType: T.Type) -> Predicate<Error> {
  return Predicate.define { actualExpression in
    let actualError = try actualExpression.evaluate()

    let failureMessage = FailureMessage()
    setFailureMessageForError(
      failureMessage,
      postfixMessageVerb: "match",
      actualError: actualError,
      errorType: errorType
    )

    var matches = false
    if actualError as? T != nil {
      matches = true
    }

    return PredicateResult(bool: matches, message: failureMessage.toExpectationMessage())
  }
}
