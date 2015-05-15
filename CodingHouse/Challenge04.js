var superCounter = function (string) {
    var chars = string.length;
    var words = string.split(" ").length;
    var spaces = words - 1;

    var average = (chars - spaces) / words;

    var text = "There are " + words + " words, " + chars + " characters, " + average + " chars avg word length, " + spaces + " spaces.";
    console.log(text);
};


superCounter("Count me in");
