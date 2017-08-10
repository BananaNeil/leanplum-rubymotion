class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'leanplum_test'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    $window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    $window.rootViewController = navigationController
    $window.makeKeyAndVisible

    Leanplum.setDeviceId(ASIdentifierManager.sharedManager.advertisingIdentifier.UUIDString)
    Leanplum.setAppId(ENV['APP_ID'], withDevelopmentKey: ENV['KEY'])


    LeanplumUIEditor.sharedEditor.allowInterfaceEditing

    $top_screen = UIViewController.alloc.initWithNibName(nil, bundle: nil)
    $top_screen = ProMotion::ViewController.new
    $top_screen.view.backgroundColor = UIColor.whiteColor
    navigationController.pushViewController($top_screen, animated: true)

    true
  end
end
