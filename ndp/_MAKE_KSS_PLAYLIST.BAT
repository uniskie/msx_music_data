:DUMMY for($i=1;$i -eq 0;$i++) {echo DUMMY} <#
@rem *******************************************************************
@rem kssの先頭1曲だけ登録したプレイリストを作成
@rem - 出力ファイルは
@rem    - ndp_kss_playlist.m3u  ... SJIS
@rem    - ndp_kss_playlist.m3u8 ... UTF8-BOM
@rem - このファイルのあるフォルダとサブフォルダにあるkssファイルが対象
@rem - パスは絶対パスで記録
@rem - 表示名は相対パスで表示
@rem - WinAmp文字化け対策の為UTF-8 BOM付きのm3u8も出力
@rem *******************************************************************
@echo off
set ME=%~dpnx0
set listname=ndp_kss_playlist
cd "%~dp0"
chcp 65001
powershell -ExecutionPolicy RemoteSigned -Command "Invoke-Expression -Command (@('$listname=\"%listname%\"') + (Get-Content '%ME%') -join \"`n\")"
type %listname%.m3u8
rem chcp 932
rem type %listname%.m3u
pause
exit /b
#### ここまでバッチファイルの処理
#>
#### ここから PowerSHellの処理

Write-Host "# kss play list .m3u (UTF-8 with BOM)"
$m3u  = $listname + ".m3u"
$m3u8 = $listname + ".m3u8"

if(Test-Path $m3u) {
   Remove-Item $m3u 
}
if(Test-Path $m3u8) { 
   Remove-Item $m3u8
}

echo "# NDP kss playlist" | Out-File -Append -Encoding default $m3u
# UTF-8のプレイリストの場合、WINAMPは#コメントを受け付けないので、コメント出力しない。
# echo "# NDP kss playlist (UTF-8)" | Out-File -Append -Encoding utf8 $m3u8 
$fileList =  Get-ChildItem -File -Filter "*.kss" -Recurse
$loc = Get-Location
$root = Join-Path $loc ""
foreach($item in $fileList) {
    #$basename = [System.IO.Path]::GetFileNameWithoutExtension($item)
    $basename = [System.IO.Path]::GetFileName($item)
    $path = $item.FullName
    $rel = $path.Substring($root.Length)
    $name = $rel.Replace('\','/')
    echo "$path::KSS,0,$name" | Out-File -Append -Encoding utf8 $m3u8
    echo "$path::KSS,0,$name" | Out-File -Append -Encoding default $m3u
}
Write-Host $root
