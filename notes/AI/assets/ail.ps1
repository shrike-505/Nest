$files = Get-ChildItem -Path . -Filter "�κ���ϰ*.docx" | Where-Object {
    $_.Name -match '^�κ���ϰ([1-9]\d*)\.docx$'
}

foreach ($file in $files) {
    if ($file.Name -match '^�κ���ϰ([1-9]\d*)\.docx$') {
        $number = $matches[1]
        $outputName = "3230105892_������_��${number}�οκ���ϰ.typ"

        pandoc $file.FullName -f docx -t typst -o $outputName
        
        Write-Host "��ת��: $($file.Name) -> $outputName"

        Remove-Item $file.FullName
    }
}

Write-Host "`nת����ɣ������� $($files.Count) ���ļ�"