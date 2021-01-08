/**
 * Build a dropdown component using ant design's dropdown https://ant.design/components/dropdown/
 *
 * Populate the dropdown with the genres. When a user selects a genre, the  MoviesList should be filtered by that genre.
 */

import { useEffect } from "react";

export const MoviesFilter = () => {
  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("http://localhost:5000/api/server");
      const body = await response.json();
      if (response.status !== 200) throw Error(body.message);
      console.log(body);
    };

    fetchData();
  }, []);

  return <h1>Movies Filter</h1>;
};
