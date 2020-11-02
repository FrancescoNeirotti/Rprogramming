# Debugghiamo dai

#come with R, no externl package.


invisible(x) #do not return in autoprinting mode. Just returning the value
              #without printing it.


traceback() #print the function call stack
debug()     #flags the function for debug mode: suspend extecution and you can step line by line
browser()   #broswe around the debug fuction
trace()     #put a debugging code into a fuction specific place
recover()   #change the default behaviour of stopping twards console. recover stop and freeze the function and you can act.


mean(pippo)
traceback() #dove è successo l'errore? NB MOSRT RECENT!

lm(pippo - pluto)
traceback()

debug(lm)           #n per successivi passaggi
lm(pippo - pluto)


options(error = recover) #quando esce error mi apre il recover, scelgo cosa e mi parte il debug con broswer









