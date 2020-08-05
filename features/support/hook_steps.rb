Before do
  @login_page = LoginPage.new
  @movie_page = MoviePage.new
  @sideBar = SideBarview.new
end

Before("@login") do
  @login_page.go
  @login_page.with("tony@stark.com","pwd123")
end