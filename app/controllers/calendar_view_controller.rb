class CalendarViewController < UIViewController
 def init
    super 
    self.title = "Calendar"
    setUpTabBarItem
    self
  end


  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    self.view.backgroundColor = UIColor.whiteColor
  end

def setUpTabBarItem
  tab_bar_item = UITabBarItem.alloc.initWithTitle("", image:nil, tag:1)
  tab_bar_item.setFinishedSelectedImage(UIImage.imageNamed("icnCalendar"), withFinishedUnselectedImage:UIImage.imageNamed("icnCalendar"))
  self.tabBarItem = tab_bar_item
end 


end