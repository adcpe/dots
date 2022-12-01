function plasma_restart -d='Restart Plasma, quietly'
    kquitapp5 plasmashell && kstart5 plasmashell >/dev/null 2>&1
end
