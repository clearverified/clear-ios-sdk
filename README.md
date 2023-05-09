# CLEAR iOS SDK

Bring the power of CLEAR's web verification service to your iOS application!

## Requirements

* Swift 5+
* iOS 12+
* Xcode 13+

## Getting Started

To set up a partnership, reach out to developersupport@clearme.com. A `clientIdentifier` must be provided during onboarding before using the SDK.

## Installation

### Swift Package Manager

1. Open Xcode.
2. Navigate to `File`->`Add Packages`.
3. Add package https://github.com/clearsecureidentity/clear-ios-sdk.git.
4. Select a dependency rule. `Up to Next Major Version` is recommended.
5. Select `Add Package`.
6. Ensure `Clear` is selected and added to the correct target.
7. Select `Add Package` again.

### Manual

1. Navigate to [releases](https://github.com/clearsecureidentity/clear-ios-sdk/releases).
2. Select the latest version.
3. Download `Clear.xcframework.zip`.
4. Unzip the framework.
5. Add the framework to your Xcode project. Be sure to check `Copy items if needed`.
6. Ensure the framework is visible in `Build Phases`->`Link Binary With Libraries`.
7. Add the framework to `Build Phases`->`Embed Frameworks`.

## Usage

### 1. Import the Module

```swift
import Clear
```

### 2. Initialize the Root Class

`CLEAR` is the root class of the SDK. An application must initialize this using a `CLEAR.Configuration` struct before using any functionality. This will usually happen in `AppDelegate` or `SceneDelegate`. The struct contains the following required values:

* `environment`: Set to `integration` while onboarding. Change to `production` after proper functionality is verified.
* `clientIdentifier`: A client specific value given during onboarding.
* `scope`: A space-delimited string of all desired user properties.

Optional Values:
* `callbackScheme`: Defaults to the bundle identifier of the client application. In most cases this will not change. When supplying a custom value, `://auth` is appended automatically.

```swift
// Initialize using an example scope.
let configuration = CLEAR.Configuration(environment: .integration, clientIdentifier: "my-client-id", scope: "email given_name")
CLEAR.initialize(with: configuration)
```

### 3. Create a VerificationView

`VerificationView` is a UI component that triggers the web verification process when tapped.

```swift
// Initialize VerificationView from inside a view controller.
let verificationView = VerificationView(delegate: self)
view.addSubview(verificationView)
```

### 4. Conform to VerificationDelegate

`VerificationDelegate` provides additional configuration details, and sends back the result of verification.

```swift
extension ViewController: VerificationDelegate {

    /// The view controller that will launch the verification process.
    var hostViewController: UIViewController { self }

    /// Called when the verification process is complete.
    func verificationDidComplete(withResult result: Result<CLEAR.Response, CLEAR.Error>) {

        switch result {
        // Handle a successful result accordingly.
        case .success(let result): print(result.authorizationCode)
        // Handle a unsuccessful result accordingly.
        case .failure(let error): print(error.errorDescription)
        }
    }
}
```

## Result

### Successful Verification

After a successful verification, a `CLEAR.Response` struct is returned in the `verificationDidComplete(withResult:)` delegate method. This struct contains an `authorizationCode`, which can be used to request additional information about a CLEAR member.

### Unsuccessful Verification

After an unsuccessful verification, a `CLEAR.Error` enum is returned in the `verificationDidComplete(withResult:)` delegate method. This enum contains one of the possible error cases:
            
* **cancelled**: The operation was cancelled.

* **invalidVerificationPath**: The configuration is invalid.

* **missingHostViewController**: A *hostViewController* must be supplied.

* **stateGenerationFailed**: Failed to generate a *state* value.

* **sessionFailed**: Something has gone wrong with the session.

* **missingRedirectResponse**: No redirect URL was found in the response.

* **missingAuthorizationCode**: The authorization code was not found.

* **stateIntegrityFailed**: There was an internal state integrity error.

* **unknown**: An unexpected error occurred.

## License

Coming soon...
