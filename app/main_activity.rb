class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    initApp
    open_tabs
  end
  def initApp
    Api.init(self)
    Assets.init(self)
  end
  def open_tabs
    Assets.sync do
      puts 'syncd'
    end
  end
end
