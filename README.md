# XCTUTest-TAU 
# Pre-requisite 

In order to follow this course, you will need 
 * macOS High Sierra or Mojave 
 * Xcode 10+
 * iPhone XR Simulator (come up with Xcode) 
 * Github Account(Optional)
 * Applitools API Key (Optional) 
 
 P.S: Please use the `iPhone XR` or similar size simulator for this course to avoid keyboard overlapping issues. If you use a smaller simulator like `iPhone 6` or `iPhone 5s` you might encounter keyboard overlapping issue.

xcodebuild -list Command

1) CLone repo to your local

2) COmmand Line - 

/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -workspace ./TAU.xcodeproj/project.xcworkspace -scheme TAU -destination "platform=iOS Simulator,OS=14.5,name=iPhone 12 Pro Max" clean build test CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO

3) CI Pipeline - .travis.yml