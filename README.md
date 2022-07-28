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

1. Open your Xcode project.
2. Navigate to `File`->`Add Packages`.
3. Add package URL https://github.com/clearsecureidentity/clear-ios-sdk.git.
4. Select a dependency rule. `Up to Next Major Version` is recommended.
5. Select `Add Package`.
6. Ensure `Clear` is selected and added to the correct target.
7. Select `Add Package` again.

### Manual

1. Navigate to the [releases page](https://github.com/clearsecureidentity/clear-ios-sdk/releases) on GitHub.
2. Locate the latest release version.
3. Select and download `Clear.xcframework`.
4. Add the framework to your Xcode project. Be sure to check `Copy items if needed`.
5. Ensure the framework is visible in `Build Phases`->`Link Binary With Libraries`.
6. Add the framework to `Build Phases`->`Embed Frameworks`.

## Usage

### 1. Initialize the SDK

`Clear` is the root class of the SDK. An application must initialize this class using a `Clear.Configuration` struct. This will usually happen in `AppDelegate` or `SceneDelegate`. The struct contains the following required values:

* `environment`: Set to `integration` while onboarding. Change to `production` after proper functionality is verified.
* `clientIdentifier`: A client specific value given during onboarding.
* `scope`: A space-delimited string of all desired user properties.

Optional Values:
* `callbackScheme`: Defaults to the bundle identifier of the client application. In most cases this will not change.

```swift
// Initialize using an example scope.
let configuration = Clear.Configuration(environment: .integration, clientIdentifier: "my-client-id", scope: "email given_name")
Clear.initialize(with: configuration)
```

### 2. Create a ClearVerificationView

`ClearVerificationView` is a UI component that triggers the web verification process when tapped.

```swift
// Initialize ClearVerificationView from inside a view controller.
let verificationView = ClearVerificationView(delegate: self)
view.addSubview(verificationView)
```

### 3. Conform to the ClearVerificationDelegate Protocol

`ClearVerificationDelegate` provides additional configuration details, and sends back the result of verification.

```swift
extension ViewController: ClearVerificationDelegate {

    /// The view controller that will launch the verification process.
    var hostViewController: UIViewController { self }

    /// Called when the verification process is complete.
    func verificationDidComplete(withResult result: Result<Clear.Response, Clear.Error>) {

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

After a successful verification, a `Clear.Response` struct is returned in the `verificationDidComplete(withResult:)` delegate method. This struct contains an `authorizationCode`, which can be used to request additional information about a CLEAR member.

### Unsuccessful Verification

After an unsuccessful verification, a `Clear.Error` enum is returned in the `verificationDidComplete(withResult:)` delegate method. This enum contains one of the possible error cases:
            
* **cancelled**: The operation was cancelled.

* **invalidConfiguration**: The configuration is invalid.

* **invalidHostViewController**: A *hostViewController* must be supplied.

* **stateGenerationFailed**: Failed to generate a *state* value.

* **sessionFailed**: Something has gone wrong with the session.

* **missingRedirectUrl**: No redirect URL was found in the response.

* **missingAuthorizationCode**: The authorization code was not found.

* **stateIntegrityFailed**: There was an internal state integrity error.

* **unknown**: An unexpected error occurred.

## License

Coming soon...
