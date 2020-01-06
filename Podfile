project 'GoGo.xcodeproj'

# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def shared_pods
    pod 'Firebase/Core'
    pod 'Firebase/Auth'
    pod 'Firebase/Firestore'
    pod 'Firebase/Storage'
    pod 'IQKeyboardManagerSwift'
    pod 'Kingfisher', '~> 4.0'
    pod 'CodableFirebase'
    pod 'GoogleAppMeasurement'
   end

target 'GoGo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GoGo
  shared_pods
  pod 'Stripe'
  pod 'Alamofire'

end

target 'GoGo Admin' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GoGo Admin
  shared_pods
  pod 'CropViewController'


end
