Piecoras::Application.routes.draw do
  match "/", :to => "piecoras#home"
  match "/menu", :to => "piecoras#menu"
  match "/events", :to => "piecoras#events"
  match "/occasions", :to => "piecoras#occasions"
  match "/about", :to => "piecoras#about"
  match "/gallery", :to => "piecoras#gallery"
end
