<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">

    <!-- reset -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

    <!-- fontawesome css: https://fontawesome.com -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

    <style>
        * {
            box-sizing: border-box;
        }

        h1 {
            font-size: 40px;
            font-weight: 700;
            letter-spacing: 10px;
            text-align: center;
            margin-bottom: 70px;
        }

        #wrap {
            width: 60%;
            margin: 100px auto;
            font-family: 'Single Day', cursive;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
        }

        .card-container .card {
            width: 30.3%;
            margin-right: 3%;
            height: 400px;
            margin-bottom: 100px;
            border-radius: 20px;
            box-shadow: 0 15px 0 #999;
            overflow: hidden;
            transition: 0.5s;
            border: 2px solid transparent;
        }

        .card-container .card:last-child {
            margin-right: 0;
        }

        .card-container .card .card-title-wrapper {
            color: #333;
        }

        .card-container .card:nth-child(3n) .card-title-wrapper {
            background: aquamarine;
        }

        .card-container .card:nth-child(3n - 1) .card-title-wrapper {
            background: violet;
        }

        .card-container .card:nth-child(3n - 2) .card-title-wrapper {
            background: dodgerblue;
        }

        .card-container .card .card-title-wrapper .card-title {
            width: 50%;
            font-size: 28px;
            font-weight: 700;
            padding: 15px;
            text-align: center;
            margin: 0 auto;

            display: flex;
            justify-content: center;
            align-items: center;

        }

        .card-container .card .card-title-wrapper .time-view-wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 5px 10px;
        }

        .card-container .card .card-title-wrapper .time-view-wrapper>div {
            width: fit-content;
            border-radius: 10px;
            background: #fff;
            padding: 3px 5px;
            margin-bottom: 10px;
        }


        .card-container .card .card-title-wrapper .time-view-wrapper i {
            margin-right: 4px;
        }

        .card-container .card .card-content p {
            font-size: 18px;
            line-height: 1.4;
            text-align: justify;
            padding: 40px 25px;
        }

        #card-down {
            box-shadow: none;
            transform: translateY(15px);
        }

        .card-container .card-hover.card {
            border: 2px solid;
        }

        .card-container .card-hover.card:nth-child(3n) {
            border-color: aquamarine;
            box-shadow: 0 15px 0 aquamarine;
        }

        .card-container .card-hover.card:nth-child(3n - 1) {
            border-color: violet;
            box-shadow: 0 15px 0 violet;
        }

        .card-container .card-hover.card:nth-child(3n - 2) {
            border-color: dodgerblue;
            box-shadow: 0 15px 0 dodgerblue;
        }
    </style>

</head>

<body>

    <div id="wrap">

        <h1>꾸러기 게시판</h1>
        <div class="card-container">
            <section class="card">
                <div class="card-title-wrapper">
                    <h2 class="card-title">너 머냐공~~</h2>
                    <div class="time-view-wrapper">
                        <div class="time"><i class="far fa-clock"></i>2023-04-14 12:50</div>
                        <div class="view">
                            <i class="fas fa-eye"></i>
                            <span class="view-count">15</span>
                        </div>
                    </div>
                </div>
                <div class="card-content">
                    <p>
                        abcsdfjklaskfjdklasjfldjsafldlajfsf
                        sdjflaksjfdlksajflsakjflsdakjfjaskldf
                        sljdkfsajlfdsjflksjlfksdajflskdajfdsakl
                        sdjflsajflksdajfflsajfldsjflsjalfdjsaflk
                        sajdflksajfdlsajflsdjlfkjslfjdafsjdlk
                    </p>
                </div>
            </section>
            
        </div>

    </div>



    <script>
        function removeDown(e) {
            const $targetCard = e.target.closest('.card');
            $targetCard.removeAttribute('id', 'card-down');
        }

        function removeHover(e) {
            const $targetCard = e.target.closest('.card');
            $targetCard.classList.remove('card-hover');
        }

        const $cardContainer = document.querySelector('.card-container');

        $cardContainer.onmouseover = e => {
            const $targetCard = e.target.closest('.card');
            $targetCard.classList.add('card-hover');
        }

        $cardContainer.onmousedown = e => {
            const $targetCard = e.target.closest('.card');
            $targetCard.setAttribute('id', 'card-down');
        };

        $cardContainer.onmouseup = removeDown;

        $cardContainer.addEventListener('mouseout', removeDown);
        $cardContainer.addEventListener('mouseout', removeHover);
    </script>

</body>

</html>