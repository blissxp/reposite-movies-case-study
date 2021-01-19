"use strict";

const express = require("express");
// https://node-postgres.com/api/client
const pg = require("pg");
const retry = require("retry");
const cors = require("cors");

const operation = retry.operation({ retries: 3 });

// https://www.npmjs.com/package/retry
operation.attempt(function (attempt) {
	var client = new pg.Client(
		host: 'localhost',
		port: 5432,
		database: 'movies',
		user: 'movies',
		password: 'test',
		debug: true
	);

	client.connect(function (e) {
		client.end();
		if (operation.retry(e)) {
			return;
		}
		if (!e) console.log("Hello Postgres!");
	});
});

// Constants
const PORT = 5000;

// App
const app = express();

app.use(cors());

app.get("/api/server", (req, res) => {
	res.send({ hello: "world" });
});

/**
 * Build endpoint /movies
 *
 * Should GET a paginated list of movies with
 *
 * @returns {array} list of movies
 * **/

/**
 * Build endpoint /genres
 *
 * @returns {array} list of genres
 *
 * **/

app.listen(PORT);
console.log("Running on http://localhost:" + PORT);
