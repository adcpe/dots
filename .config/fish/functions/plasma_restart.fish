function plasma_restart -d 'Restart Plasma, quietly'
    killall plasmashell && kstart plasmashell >/dev/null 2>&1
end
