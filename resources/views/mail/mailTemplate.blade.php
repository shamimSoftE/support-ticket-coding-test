<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mail Template</title>
</head>
<body>
    <div style="margin-top: 51px;">

        <h1 style="text-align: center; padding:9px;" >{{ $mailData['title'] }}.</h1>
        <br>
        <p style="margin: 9px; padding: 9px;">
            {{ $mailData['body'] }}
        </p>
        <br>
        <h5 style="text-align: center; padding:7px;">
            {{ $mailData['footer'] }}
        </h5>
    </div>
</body>
</html>