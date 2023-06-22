<?php

// 関数ファイル読み込み
include('function.php');

// DB接続用関数を実行
$pdo = db_connect();

// SQL作成&実行
$sql = "SELECT * FROM dev13_diary WHERE 1";
$stmt = $pdo->prepare($sql);

try {
    $status = $stmt->execute();
} catch (PDOException $e) {
    echo json_encode(["sql error" => "{$e->getMessage()}"]);
    exit();
}

// SQL実行の処理
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$output = '';
foreach ($result as $record)
    $output .= "
    <h3 class=\"mb-4 text-center text-lg font-bold text-gray-800 md:mb-8 lg:text-2xl\">今日の出来事</h3>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">今日、あなたの中で印象に残った出来事</h4>
        <p class=\"md:mb-8\">{$record["today_events"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">印象に残ったきっかけは</h4>
        <p class=\"md:mb-8\">{$record["events_impression"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">どんな気持ちや感情が生まれました 
</h4>
        <p class=\"md:mb-8\">{$record["events_emotions"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">この感情に点数をつけると何点？ 
</h4>
        <p class=\"md:mb-8\">{$record["events_points"]}点</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">点数をつけた理由は？？ 
</h4>
        <p class=\"md:mb-8\">{$record["events_points_reason"]}</p>
    </div>
    <h3 class=\"mb-4 text-center text-lg font-bold text-gray-800 md:mb-8 lg:text-2xl\">今日の1枚</h3>
    <div>
    <div class=\"h-64 overflow-hidden rounded-lg bg-gray-100 shadow-lg md:h-auto md:mb-8\">
        <img src=\"https://images.unsplash.com/photo-1610465299996-30f240ac2b1c?auto=format&q=75&fit=crop&w=600&h=750\" loading=\"lazy\" alt=\"Photo by Martin Sanchez\" class=\"h-full w-full object-cover object-center\" />
    </div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">この写真から、頭の中に浮かぶ言葉は何？</h4>
        <p class=\"md:mb-8\">{$record["photo_keyword"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">その言葉が浮かんだ理由は？</h4>
        <p class=\"md:mb-8\">{$record["photo_keyword_reason"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">この言葉から、どんな感情や気持ちが生まれました？</h4>
        <p class=\"md:mb-8\">{$record["photo_emotions"]}</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">この感情に点数をつけると何点？</h4>
        <p class=\"md:mb-8\">{$record["photo_points"]}点</p>
    </div>
    <div>
        <h4 class=\"mb-2 inline-block text-sm text-gray-800 sm:text-base font-bold\">点数をつけた理由は？</h4>
        <p class=\"md:mb-8\">{$record["photo_points_reason"]}</p>
    </div>

";
?>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>記録</title>
</head>

<body>
    <div class="bg-white py-6 sm:py-8 lg:py-12">
        <div class="mx-auto max-w-screen-2xl px-4 md:px-8">
            <h2 class="mb-2 text-center text-2xl font-bold text-gray-800 md:mb-2 lg:text-3xl">2023年0月0日</h2>

            <div class="mx-auto max-w-lg">
                <?= $output  ?>
            </div>
        </div>
    </div>


</body>


</html>