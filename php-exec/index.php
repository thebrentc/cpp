<!DOCTYPE html>
<html lang="en">
<head>
<title>index.php</title>
</head>
<body>
<h1>Index</h1>

<p>To run server: `php -S localhost:8000`</p>

<code>
	$output = exec('./hello');
	echo $output;
</code>

<p>
	<?php
		$output = exec('./hello');
		echo $output;
	?>
</p>

</body>
</html>