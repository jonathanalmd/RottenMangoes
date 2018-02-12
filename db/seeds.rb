# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


movies = Movie.create!(
  [
    { 
      title: 'Last Samurai', 
      director: 'Edward Zwick', 
      runtime_in_minutes: 154,
      description: 'Samurai is a 2003 American epic period drama war film directed and co-produced by Edward Zwick, who also co-wrote the screenplay with John Logan and Marshall Herskovitz. The film stars Tom Cruise, who also co-produced, with Timothy Spall, Ken Watanabe, Billy Connolly, Tony Goldwyn, Hiroyuki Sanada, Koyuki, and Shin Koyamada in supporting roles.',
      poster_image_url: 'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Last_Samurai.jpg',
      release_date: '2003-11-20'
    },
    { 
      title: 'Logan', 
      director: 'James Mangold', 
      runtime_in_minutes: 137,
      description: 'American superhero film, produced by Marvel Entertainment, TSG Entertainment and The Donners Company, and distributed by 20th Century Fox.[3][4] It is the tenth installment in the X-Men film series, as well as the third and final Wolverine solo film following X-Men Origins: Wolverine (2009) and The Wolverine (2013). The film, which takes inspiration from Old Man Logan by Mark Millar and Steve McNiven, follows an aged Wolverine and an extremely ill Professor X defending a young mutant named Laura from the villainous Reavers and Alkali-Transigen led by Donald Pierce and Zander Rice, respectively.',
      poster_image_url: 'https://upload.wikimedia.org/wikipedia/pt/2/2d/Filme_Logan_2017.jpg',
      release_date: '2017-02-17'
    },
    { 
      title: 'The Wolverine', 
      director: 'James Mangold', 
      runtime_in_minutes: 126,
      description: 'Wolverine is a 2013 superhero film featuring the Marvel Comics character Wolverine. The film, distributed by 20th Century Fox, is the sixth installment in the X-Men film series. Hugh Jackman reprises his role from previous films as the title character, with James Mangold directing a screenplay written by Scott Frank and Mark Bomback, based on the 1982 limited series Wolverine by Chris Claremont and Frank Miller. In the film, which follows the events of X-Men: The Last Stand, Logan travels to Japan, where he engages an old acquaintance in a struggle that has lasting consequences. Stripped of his healing factor, Wolverine must battle deadly samurai while struggling with guilt over Jean Greys death.',
      poster_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/7/74/The_Wolverine_posterUS.jpg/220px-The_Wolverine_posterUS.jpg',
      release_date: '2013-07-26'
    }

  ]
)

actors = Actor.create!(
  [
    {
      firstname: 'Jony', 
      lastname: 'Ddev'
    }, 
    {
      firstname: 'Tom', 
      lastname: 'Cruise'
    },
    {
      firstname: 'Timothy', 
      lastname: 'Spall'
    },
    {
      firstname: 'Ken', 
      lastname: 'Watanabe'
    },
    {
      firstname: 'Billy', 
      lastname: 'Connolly'
    },
    {
      firstname: 'Tony', 
      lastname: 'Goldwyn'
    },
    {
      firstname: 'Hiroyuki', 
      lastname: 'Sanada'
    },
    {
      firstname: 'Koyuki', 
      lastname: 'Kato'
    },

    {
      firstname: 'Hugh',
      lastname: 'Jackman'
    },
    {
      firstname: 'Patrick',
      lastname: 'Stewart'
    },
    {
      firstname: 'Boyd',
      lastname: 'Holbrook'
    },
    {
      firstname: 'Stephen',
      lastname: 'Merchant'
    },
    {
      firstname: 'Richard',
      lastname: 'Grant'
    },
    {
      firstname: 'Dafne',
      lastname: 'Keen'
    },

    {
      firstname: 'Will Yun',
      lastname: 'Lee'
    },
    {
      firstname: 'Famke',
      lastname: 'Janssen'
    }
  ]
)


contracts = Contract.create!(
  [
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Jony', lastname: 'Ddev').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Tom', lastname: 'Cruise').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Timothy', lastname: 'Spall').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Ken', lastname: 'Watanabe').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Billy', lastname: 'Connolly').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Tony', lastname: 'Goldwyn').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Hiroyuki', lastname: 'Sanada').id
    },
    {
      movie_id: Movie.find_by(title: 'Last Samurai').id,
      actor_id: Actor.find_by(firstname: 'Koyuki', lastname: 'Kato').id
    },


    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Jony', lastname: 'Ddev').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Hugh', lastname: 'Jackman').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Patrick', lastname: 'Stewart').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Boyd', lastname: 'Holbrook').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Stephen', lastname: 'Merchant').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Richard', lastname: 'Grant').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Dafne', lastname: 'Keen').id
    },

    {
      movie_id: Movie.find_by(title: 'The Wolverine').id,
      actor_id: Actor.find_by(firstname: 'Jony', lastname: 'Ddev').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Hugh', lastname: 'Jackman').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Hiroyuki', lastname: 'Sanada').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Will Yun', lastname: 'Lee').id
    },
    {
      movie_id: Movie.find_by(title: 'Logan').id,
      actor_id: Actor.find_by(firstname: 'Famke', lastname: 'Janssen').id
    }
  ]
)



