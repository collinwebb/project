var palindromicMap = function (sentence) {
  var words = sentence.split(" ");
  var truthMap = words.map(function (word) {
    return word === word.split("").reverse().join("");
  });
  
  console.log(truthMap);
};


palindromicMap("stash and pop on this level");
