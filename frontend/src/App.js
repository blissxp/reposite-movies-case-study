import "./App.css";
import { MoviesFilter, MoviesList } from "./components";


function App() {
  return (
    <div className="App">
      <MoviesList></MoviesList>
      <MoviesFilter></MoviesFilter>
    </div>
  );
}

export default App;
