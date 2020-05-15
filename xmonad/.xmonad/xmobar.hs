Config { font = "xft:DejaVu Sans Mono for Powerline:size=9"
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = Top
       , lowerOnStart = True
       , commands = [ 
		   -- Run Network "wlp2s0" ["-L","0","-H","32","--normal","green","--high","red"] 10
                      Run MultiCpu ["-t","Cpu: <total0>%|<total1>%|<total2>%|<total3>%","-L","50","-H","85","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Date "<fc=#93a1a1>%a %b %_d %Y %H:%M</fc>" "date" 10
                    , Run DiskIO [("/", "IO: <total>"), ("sda4", "<total>")] [] 10
                    , Run StdinReader
                    , Run Battery ["-t" , "Batt: <acstatus> (<left>%)", "-L","0","-H","32"] 50
                    , Run Mpris2 "spotify" ["-t", "<artist> - [<composer>] <title>"] 10
                    ]
       , sepChar = "%"
       , pickBroadest = False 
       , alignSep = "}{"
       , template = "%StdinReader% }{ %battery% %multicpu% %memory% %diskio% %date%"
       }
