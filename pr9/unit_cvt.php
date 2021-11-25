<html>

<head>
  <meta charset="utf-8">
  <title>단위 변환기</title>
  <style>
    table{
      border: 3px solid red;
      border-collapse : collapse;
      width: 400px;
      text-align: center;
    }
    tr, td{
      border: 1px solid red;
      border-collapse : collapse;
    }
    p{
      font-weight: bolder;
      font-size: 20px;
    }
  </style>
</head>
<body>
  <?php
  $num =$_POST["num"];
  $unit = $_POST["unit"];
  if ($unit == "미터(m)"){
    $m = round($num, 4);
    $in = round($num * 39.370079, 4);
    $ft = round($num * 3.28084, 4);
    $yd = round($num * 1.093613, 4);
  }
  elseif ($unit == "인치(in)"){
    $m = round($num * 0.0254, 4);
    $in = round($num, 4);
    $ft = round($num * 0.083333, 4);
    $yd = round($num * 0.027778, 4);
  }
  elseif ($unit == "피트(ft)"){
    $m = round($num * 0.3048, 4);
    $in = round($num * 12, 4);
    $ft = round($num, 4);
    $yd = round($num * 0.333333, 4);
  }
  elseif ($unit == "야드(yd)"){
    $m = round($num * 0.9144, 5);
    $in = round($num * 36, 5);
    $ft = round($num * 3, 5);
    $yd = round($num, 4);
  }
  ?>
  <p name = "title">단위 변환기 : <?= $num?> <?= $unit?></p>
  <table>
      <tr>
        <td>
          <?= $m?> 미터(m)
        </td>
        <td>
          <?= $in?> 인치(in)
        </td>
      </tr>
      <tr>
        <td>
          <?= $ft?> 피트(ft)
        </td>
        <td>
          <?= $yd?> 야드(yd)
        </td>
      </tr>
  </table>

</body>

</html>