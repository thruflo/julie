__buf << %Q`<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>` ; ;__buf << __decode_params(( title )) ; __buf << %Q` ­ julie.com</title>
	` ; ;__buf << __decode_params(( stylesheets '/css/site' )) ; __buf << %Q`
</head>
<body>
  ` ; ;__buf << %Q`
		<h2>Welcome to julie.com</h2>
		` ; ;__buf << __decode_params(( fields )) ; __buf << %Q`
		` ; ;__buf << __decode_params(( boxes  )) ; __buf << %Q`
  ` ; ;__buf << %Q`
	` ; ;__buf << __decode_params(( scripts %w(/js/site) )) ; __buf << %Q`
</body>
</html>
` ; ;