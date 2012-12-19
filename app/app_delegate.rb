
class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    
    return true if RUBYMOTION_ENV == 'test'  
  
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = appTabBarController
    @window.makeKeyAndVisible

    true
  end
  
def appTabBarController
  tab_bar_controllers = UITabBarController.new 
  tab_bar_controllers.viewControllers = [CalendarViewController.new, NewsViewsController.new , NextEventViewController.new]
  tab_bar_controllers.tabBar.backgroundImage  = UIImage.imageNamed "bgTabBar"
  tab_bar_controllers
end

end
