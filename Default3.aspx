var audio = new Audio("http://dp0169.free.fr/Musique/Air/Air%20-%20Talkie%20Walkie/02%20Cherry%20Blossom%20Girl.mp3");

$(".play").click(function () {
    audio.play();
})

$(".pause").click(function () {
    audio.pause();
})