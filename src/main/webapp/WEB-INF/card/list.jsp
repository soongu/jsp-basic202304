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

    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/list.css">

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