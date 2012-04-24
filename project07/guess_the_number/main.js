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
    updateView("<b>THE GALACTIC EMPIRE SALUTES YOU!</b>");
    score += guessesLeft;
  }else if(guess<answer && guessesLeft>0){
    updateView("<b>TOO LOW!</b>");
    guessessLeft -=1;
  }else if(guess>answer && guessesLeft>0){
    updateView("<b>TOO HIGH!</b>");
    guessessLeft -=1;
  }else{
    updateView("<b>BOO YOU WHORE!</b>");
  }

  function updateView(text){
  	$('p#explanation').append(text);
  }

}