<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width">
    <link rel="icon" sizes="196x196" href="bunny.png">
	<title>Guess number 1 to 5</title>
    <script src="./libs/phaser.min.js"></script>
    <script src="Boot.js"></script>
    <script src="Preloader.js"></script>
    <script src="StartMenu.js"></script>
    <script src="Game.js"></script>
	<style>
		body {
			padding: 0;
			margin: 0;
			background-color: #000000;
		}
	</style>
</head>

<body>
    <div id="gameContainer"></div>
    <script type="text/javascript">
        window.onload = function() {
            var game = new Phaser.Game(540, 960, Phaser.AUTO, 'gameContainer');
            game.state.add('Boot', GuessNumber.Boot);
            game.state.add('Preloader', GuessNumber.Preloader);
           	game.state.add('StartMenu', GuessNumber.StartMenu);
           	game.state.add('Game', GuessNumber.Game);
            game.state.start('Boot');
        }
    </script>
</body>
</html>