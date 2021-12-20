# CLEAR Mobile Verification SDK for iOS

Bring the power of CLEAR to your iOS application! The SDK handles both UI and underlying service calls to securely verify a user's identity.

## Requirements

* Swift 5.0+
* iOS 12.0+
* Xcode 13.0+

## Getting Started

To set up a partnership, reach out to developersupport@clearme.com. The following credentials must be provided to you by CLEAR during onboarding to use the SDK:

* Client ID
* API Key

## Installation

### Swift Package Manager

1. Open Xcode project
2. Navigate to `File`->`Add Packages`
3. Add package URL https://github.com/clearsecureidentity/clear-ios-sdk.git
4. Select dependency rule and project. `Up to Next Major Version` is recommended
5. Select `Add Package`
6. Ensure `ClearMeSDK` is selected and added to the correct target
7. Select `Add Package` again

### Manual

1. Navigate to the [releases page](https://github.com/clearsecureidentity/clear-ios-sdk/releases) on GitHub
2. Find the desired release version (latest is recommended)
3. Select and download `ClearMeSDK.xcframework`, `ClearFaceCapture.xcframework`, `ClearUI.xcframework`, `Lottie.xcframework`, and `TrustKit.xcframework`
4. Add these frameworks to the Xcode project. Be sure to check `Copy items if needed`
5. Ensure all frameworks are visible in `Build Phases`->`Link Binary With Libraries`
6. Add all frameworks to `Build Phases`->`Embed Frameworks`

## Class Structure

The SDK exposes the following public classes. Details of each are described in the `Usage` section below.

- `ClearSDK`
- `ClearEnvironment`
- `ClearVerificationSessionDelegate`
- `ClearVerificationUseCase`
- `ClearVerificationIdentifierInput`
- `ClearVerificationEmailInput`
- `ClearVerificationSuccess`
- `ClearVerificationError`
- `ClearVerificationView`

## Usage

### 1. Initialize SDK

`ClearSDK` is the root class of the SDK. An application must initialize this class using the `Client ID` and `API Key` provided by CLEAR during onboarding.

```swift
ClearSDK.initialize(clientId: CLIENT_ID, apiKey: API_KEY, environment: .integration)
```

##### ClearEnvironment

The SDK uses two environments for different purposes.
* `integration`: Used during development, debugging and integration testing.
* `production` Used for active application releases. Change initialization to use this environment after proper usage is verified.

### 2. Create an instance of ClearVerificationView

`ClearVerificationView` is a public UI component that automatically trigger the verification flow when tapped.

```swift
let clearView = ClearVerificationView(delegate: self)
```

### 3. Conform to the ClearVerificationSessionDelegate Protocol

The `ClearVerificationSessionDelegate` protocol provides configuration details to `ClearVerificationView`, and handles the results of a verification sessions.

```swift
/// A set of methods which provides data required to set-up a verification flow and returns the results of a completed session.

public protocol ClearVerificationSessionDelegate: AnyObject {
    /// Provides a view controller to host the CLEAR verification UI flow
    var hostViewController: UIViewController { get }

    /// Provides the intended use case for a given verification session
    var useCase: ClearVerificationUseCase { get }

    /// Provides the verification input type used to identify the member on which to perform an identity verification
    var identifierInput: ClearVerificationIdentifierInput? { get }

    /// Provides the result of a verification session in the form of a success or error.
    /// A successful verification also provides an `authCode` and a `memberAsid`,
    /// where an error will provide the reason for the error.
    func verificationDidComplete(result: Result<ClearVerificationSuccess, ClearVerificationError>)
}
```

##### ClearVerificationUseCase

A `ClearVerificationUseCase` represents the variety of use-cases that your app can declare as the purpose for a given verification session. Since you can implement multiple session instances throughout your app, it is also possible to support more than one use case. Although it is only possible to have one use case for each session. Your `ClearVerificationSessionDelegate` should provide an intended use case, which will update the associated `ClearVerificationView` descriptive label to match the descriptive intent of that use case.

```swift
public enum ClearVerificationUseCase {
    /// Member identity verification and data sharing consent
    case verifyWith

    /// Partner authorization for account creation
    case signupWith

    /// Partner authorization for login
    case loginWith

    /// Venue and event admission using CLEAR (currently not supported)
    case accessWith

    /// Pay using the card on file with CLEAR (currently not supported)
    case payWith
}
```

##### ClearVerificationIdentifierInput

A `ClearVerificationIdentifierInput` represents the initial parameters that determine the entry point for an identity verification flow. As such, there are two ways a partner app can specify initial verification input:

1. `.email(ClearVerificationEmailInput)`: specifies a first-time identity verification via email
2. `.memberAsid("1234")`: specifies a returning identity verification, thereby bypassing the email collection screen and immediately forwarding a user to the camera screen for face capture

```swift
/// Represents the two different kinds of identification input to determine the entry point for an identity verification flow.
public enum ClearVerificationIdentifierInput {
    case email(input: ClearVerificationEmailInput)
    case memberAsid(String)
}
```

##### ClearVerificationEmailInput

`ClearVerificationEmailInput` represents a variety of email configuration options required by the `ClearVerificationIdentifierInput` `.email()` option:

1. `.editableEmail(nil)`: specifies a first-time identity verification, presenting an empty editable email input field
2. `.editableEmail(Email("hi@clearme.com"))`: specifies a first-time identity verification, presenting a pre-populated editable email input field (i.e. "hi@clearme.com")
3. `.staticEmail(Email("hi@clearme.com"))`: specifies a first-time identity verification, presenting a pre-populated non-editable email input field (i.e. "hi@clearme.com")
4. `.suppressedEmail(Email("hi@clearme.com"))`: specifies a first-time identity verification, though bypassing the email collection screen to the camera screen for face capture

##### ClearVerificationSuccess

A `ClearVerificationError` represents a successful verification result that includes an `authCode` and a `memberAsid`. The `memberAsid` is an app-scoped member identifier that can be used instead of an email for a returning user flow. The `authCode` can be exchanged for an access token in order to request additional information about a CLEAR member.

```swift
public struct ClearVerificationSuccess {
    /// Code that can be exchanged for an access token
    public let authCode: String

    /// App-scoped member identifier
    public let memberAsid: String
}
```

##### ClearVerificationError

A `ClearVerificationError` represents the various errors that can be returned from a session when a verification is unsuccessful.

```swift
public enum ClearVerificationError: Error {
    /// The member email provided is invalid
    case invalidEmail

    /// The user failed to grant required permissions to the camera
    case cameraSetupFailed

    /// Member has exceeded the maximum number of allowed attempts (currently 10 per hour)
    case accountLocked

    /// Member has failed assurance
    case failedAssurance

    /// Member has either cancelled or abandoned the session
    case userAbandoned
}
```

### 4. Request Authorization for Camera Usage

The SDK uses the device camera to validate members. Configure your App's `Info.plist` file to include the `NSCameraUsageDescription`. Provide a meaningful message that explains why your application is requesting this access.

**Skipping this step will result in a crash.**

### 5. Add App Attest Capability/Entitlement

The SDK uses Apple's [DeviceCheck](https://developer.apple.com/documentation/devicecheck/establishing_your_app_s_integrity) Framework to reduce fraudulent use of services.

**iOS 14+** deployment targets must perform the following:

1. Add the capability `App Attest` to your app in the developer portal

   1. Navigate to [Apple Developer Portal](https://developer.apple.com/)
   2. Select `Certificates, Identifiers & Profiles` and find your application under `Identifiers`
   3. Select the application
   4. Select `App Attest` under `Capabilities`


2. Add `App Attest Entitlement` to Xcode project

   1. Open the Xcode project
   2. Select the desired target
   3. Select `Signing & Capabilities` -> `+ Capability`
   4. Select `App Attest`. This should add a `.entitlements` file
   5. Select the `.entitlements` file to view
   6. Update the value of `App Attest Environment` from `development` -> `production`  

Step #2 is required for `App Attestation` to run successfully for `Debug` environment/schemes. More about [Device Check Framework](https://developer.apple.com/documentation/devicecheck), [App Attest Service](https://developer.apple.com/documentation/devicecheck/dcappattestservice) and [App Attest Environment](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_devicecheck_appattest-environment)

## Sample Usage

`ClearVerificationView` cannot be used directly in Interface Builder due to Xcode limitations for embedded binaries. However, a container view could be added to the view hierarchy with `ClearVerificationView` as a subview.

```swift
import UIKit
import ClearMeSDK

class VerificationViewController: UIViewController, ClearVerificationSessionDelegate {
    @IBOutlet private var verificationViewContainer: UIView!
    private lazy var clearVerificationView: ClearVerificationView = {
        let view = ClearVerificationView(delegate: self)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup and Layout ClearVerificationView
        verificationViewContainer.addSubview(clearVerificationView)
        NSLayoutConstraint.activate([
            clearVerificationView.topAnchor.constraint(equalTo: verificationViewContainer.topAnchor),
            clearVerificationView.leadingAnchor.constraint(equalTo: verificationViewContainer.leadingAnchor),
            clearVerificationView.trailingAnchor.constraint(equalTo: verificationViewContainer.trailingAnchor),
            clearVerificationView.bottomAnchor.constraint(equalTo: verificationViewContainer.bottomAnchor),
        ])
    }

    // MARK: ClearVerificationSessionDelegate
    var hostViewController: UIViewController { self }

    var useCase: ClearVerificationUseCase { .verifyWith }

    var identifierInput: ClearVerificationIdentifierInput? { .email(input: .editableEmail(try? .init("email@address.com")))}

    func verificationDidComplete(result: Result<ClearVerificationSuccess, ClearVerificationError>) {
        switch result {
        case .success(let success):
            // authCode can be exchanged for an access token
            // memberAsid is the member's app-scoped identifier
            print("auth code: \(success.authCode) | member asid: \(success.memberAsid)")
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
```

If Interface Builder is not used, simply add the instance of `ClearVerificationView` as a subview and set the constraints as required.

## License

Coming soon...
