var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var answer = Math.floor(Math.random() * 101)
var input = document.getElementById( "guess" );
var entry = parseFloat( input.value );

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
  if(guess==answer && guessesLeft>0){
    document.write("<b>THE GALACTIC EMPIRE SALUTES YOU!</b>");
    score += guessesLeft;
  }else if(guess<answer && guessesLeft>0){
    document.write("<b>TOO LOW!</b>");
    guessessLeft -=1;
  }else if(guess>answer && guessesLeft>0){
    document.write("<b>TOO HIGH!</b>");
    guessessLeft -=1;
  }else{
    document.write("<b>BOO YOU WHORE!</b>");
}
