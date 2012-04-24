var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var answer = Math.floor(Math.random() * 101);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}

function gameLogic(){
  var input = document.getElementById( "guess" );
  var guess = parseFloat( input.value );
  if(guess==answer && guessesLeft>0){
    updateView("THE GALACTIC EMPIRE SALUTES YOU!");
    biWinning();
  }else if(guess<answer && guessesLeft>0){
    valuer("TOO LOW!");
  }else if(guess>answer && guessesLeft>0){
    valuer("TOO HIGH!");
  }else{
    updateView("<b>BOO YOU WHORE!</b>");
  }
  gLeft();
}
function updateView(text){
  $('p#explanation').empty();
  $('p#explanation').append(text);
 }

  function biWinning(){
  	var name=prompt("Please enter your name:");
  	  populateHighScores(Array([guessesLeft, name]));
  }

  function valuer(text){
  	alert(text);
    guessesLeft = guessesLeft-1 ;
  }

  function gLeft(){
    $('h2#score span#guessesLeft').empty();
    $('h2#score span#guessesLeft').append(guessesLeft);
  }

