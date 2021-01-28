/**
 * Build a list component that shows all the movies in a card using Antd's card component: https://ant.design/components/card/
 *
 * Include the posterUrl as an image on the card. Show all the text details in the card.
 *
 *
 */

import { Card } from 'antd';

import { useState, useEffect } from "react";

export const MoviesList = () => {
  const [ movies ] = useState([]);
  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("http://localhost:5000/api/movies");
      const body = await response.json();
      if (response.status !== 200) throw Error(body.message);

      console.log(body);
    };

    fetchData();
  }, []);
	return (
		<div> 
		    <h1>Movies List</h1>;
					{movies.map(movie => 
						<Card>
							 {movie}
						</Card>
					)}
		</div>
	) 

};
