import "./App.css";
import "antd/dist/antd.css";
import moviesData from "./movies.js";
import { MoviesFilter, MoviesList } from "./components";

console.log(moviesData);

function App() {
  return (
    <div className="App">
      <MoviesList></MoviesList>
      <MoviesFilter></MoviesFilter>
    </div>
  );
}

export default App;
