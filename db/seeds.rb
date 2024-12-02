users = []

10.times do |i|
  users << { email: "#{i}@test.fr", encrypted_password: "password"}
end
p "ok"
User.insert_all(users)

Member.destroy_all
MovieComment.destroy_all
MovieEvent.destroy_all
Event.destroy_all
Group.destroy_all
Movie.destroy_all
User.destroy_all
movies = []

10.times do |i|
  movies << {
    name: "Film #{i}",
    synopsis: "Description films",
    poster_url: "https://google.fr"
  }
end

Movie.insert_all(movies)

group = Group.create(
  name: "Groupe Test",
  )

event = Event.create(
  user: User.first,
  group: group,
  date: Time.now,
  name: "Event seed"
)

5.times do |i|
  event.group.users << User.find(i + 2)
end
