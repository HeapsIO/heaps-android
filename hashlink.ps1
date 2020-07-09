Invoke-WebRequest https://github.com/HaxeFoundation/hashlink/releases/latest/download/hl-$args[0]-win.zip -OutFile hl.zip
Expand-Archive hl.zip -DestinationPath .
Move-Item hl-* $HOME/hashlink
Remove-Item hl.zip
