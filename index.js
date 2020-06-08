const fs = require("fs");
const peg = require("pegjs");
const parser = require("./meta");

const snippet = fs.readFileSync(process.argv[2]);
console.log(parser.parse(snippet.toString()));
