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
  updateView(answer);
  if(guess==answer && guessesLeft>0){
    updateView("<b>THE GALACTIC EMPIRE SALUTES YOU!</b>");
    updateScore(score);
    score += guessesLeft;
    biWinning();
  }else if(guess<answer && guessesLeft>0){
    valuer("TOO LOW!");
  }else if(guess>answer && guessesLeft>0){
    valuer("TOO HIGH!");
  }else{
    updateView("<b>BOO YOU WHORE!</b>");
  }

  function updateView(text){
  	$('p#explanation').append(text);
  }

  function biWinning(){
  	var name=prompt("Please enter your name:");
      if (name!=null && name!=""){
        populateHighScores(([score, name]));
      }
  }

  function valuer(text){
  	alert(text);
    guessessLeft -=1;
    updateScore(score);
  }

}