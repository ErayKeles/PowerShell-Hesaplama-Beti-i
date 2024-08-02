$operand = Read-Host "Hesaplama işlemini girin (+, -, *, /, %, !)"

if ($operand -eq '!') {
    $number = Read-Host "Bir sayı girin"
    $result = 1
    for ($i = 1; $i -le $number; $i++) {
        $result *= $i
    }
    Write-Host "Sonuç: $result"
}
else {
    $number1 = Read-Host "Birinci sayıyı girin"
    $number2 = Read-Host "İkinci sayıyı girin"
    
    switch ($operand) {
        '+' { $result = [int]$number1 + [int]$number2 }
        '-' { $result = [int]$number1 - [int]$number2 }
        '*' { $result = [int]$number1 * [int]$number2 }
        '/' { $result = [int]$number1 / [int]$number2 }
        '%' { $result = [int]$number1 % [int]$number2 }
        default { Write-Host "Geçersiz işlem" }
    }
    Write-Host "Sonuç: $result"
}
