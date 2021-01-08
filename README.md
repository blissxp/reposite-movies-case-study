# Setup

Requirements: Docker, Node

Run `docker-compose` up to start the app

# Stack

The frontend is built with React for the frontend with [Ant Design]https://ant.design/docs/react/introduce) as a UI library.

The backend is built with express and postgres.

## Database

The database has 3 tables, `movies` , `moviesGenres`, and `genres`.

The `movies` table has columns: `id`, `genreId`, `title`, `year`, `runtime`, `director`, `actors`,`plot`, and `posterUrl`.

The `moviesGenres` table has columns: `moviesId` and `genreIds`

The `genres` table has columns `id` and `genreName`

# Movie App

## Tasks

You'll be creating a `/movies` API endpoint that returns a JSON array of items in the following format:

```
    {
        id: 1,
        title: "Beetlejuice",
        year: "1988",
        runtime: "92",
        genres: ["Comedy", "Fantasy"],
        director: "Tim Burton",
        actors: "Alec Baldwin, Geena Davis, Annie McEnroe, Maurice Page",
        plot:
        'A couple of recently deceased ghosts contract the services of a "bio-exorcist" in order to remove the obnoxious new owners of their house.',
        posterUrl:
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwODE3MDE0MV5BMl5BanBnXkFtZTgwNTk1MjI4MzE@._V1_SX300.jpg",
    },
    {
        id: 2,
        title: "The Cotton Club",
        year: "1984",
        runtime: "127",
        genres: ["Crime", "Drama", "Music"],
        director: "Francis Ford Coppola",
        actors: "Richard Gere, Gregory Hines, Diane Lane, Lonette McKee",
        plot:
        "The Cotton Club was a famous night club in Harlem. The story follows the people that visited the club, those that ran it, and is peppered with the Jazz music that made it so famous.",
        posterUrl:
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODAyNzA4OV5BMl5BanBnXkFtZTcwNzYwNTIzNA@@._V1_SX300.jpg",
    },
    {
        id: 3,
        title: "The Shawshank Redemption",
        year: "1994",
        runtime: "142",
        genres: ["Crime", "Drama"],
        director: "Frank Darabont",
        actors: "Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler",
        plot:
        "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
        posterUrl:
        "https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX300.jpg",
    }
```

1. Get paginated movie data from the API. Each call to the api should return 10 movies at a time.

2. In the MoviesList component display the movies in list format. Each movie should be in a card component and include an image with the `posterUrl` and all the text information.

3. Include a pagination component which will update the page number and make another call to the API.

4. In the MoviesFilter component, build a dropdown that includes all the genres and filters the MoviesList component when a user selects a genre. When a genre is selected, the pagination component should be reset to page 1.

### Optionally:

- Create a second page for single movies. When a user clicks on a movie card, the app should route to that page with all the details of the movie.
