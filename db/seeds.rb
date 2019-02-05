Actor.destroy_all
Episode.destroy_all
ActorEpisode.destroy_all
Show.destroy_all

stella = Show.create(title: "Stella", description: "A sketch comedy show that follows the absurd adventures of Michael, Michael and David.")
whas = Show.create(title: "Wet Hot American Summer: First Day of Camp", description: "Follows the counselors and campers on their first day at Camp Firewood in the summer of 1981.")

mib = Actor.create(name: "Michael Ian Black", photo: "https://m.media-amazon.com/images/M/MV5BMTUwNDEyMzgyMF5BMl5BanBnXkFtZTgwNjg2ODU0NjE@._V1_SY1000_CR0,0,805,1000_AL_.jpg")
dw = Actor.create(name: "David Wain", photo: "https://m.media-amazon.com/images/M/MV5BOWQxMTY1YjUtN2JlNC00ZjI1LWE5MGUtNzE1ZmI1MDNiY2Q2L2ltYWdlXkEyXkFqcGdeQXVyNjQyNTE2MA@@._V1_.jpg")
ms = Actor.create(name: "Michael Showalter", photo: "https://m.media-amazon.com/images/M/MV5BMTU4MTE1MDIwM15BMl5BanBnXkFtZTgwNTk0ODE5MDI@._V1_SY1000_CR0,0,774,1000_AL_.jpg")
pilot = Episode.create(title: "Pilot", runtime: 30, date: Date.parse("June 28, 2005"), show: stella)
campaign = Episode.create(title: "Campaign", runtime: 30, date: Date.parse("July 5, 2005"), show: stella)
op = Episode.create(title: "Office Party", runtime: 30, date: Date.parse("July 12, 2005"), show: stella)
ca = Episode.create(title: "Campers Arrive", runtime: 30, date: Date.parse("July 31, 2015"), show: whas)
lunch = Episode.create(title: "Lunch", runtime: 30, date: Date.parse("July 31, 2015"), show: whas)
activities = Episode.create(title: "Activities", runtime: 30, date: Date.parse("July 31, 2015"), show: whas)

ActorEpisode.create(actor: mib, episode: ca)
ActorEpisode.create(actor: ms, episode: ca)
ActorEpisode.create(actor: ms, episode: lunch)
ActorEpisode.create(actor: mib, episode: activities)
ActorEpisode.create(actor: ms, episode: activities)
