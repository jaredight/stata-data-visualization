

twoway function y=normalden(x,18,6), range(0 36) xtitle("{it: SAT score}") ytitle("Density") title("Population Distribution") droplines(18,12,6,24,30) xlabel(0 6 12 18 24 30 36)
graph save "Graph" "C:\Users\jaredmw2\Downloads\pop-dist.gph", replace

twoway function y=normalden(x,18,1.2), range(12 24) xtitle("{it: mean SAT score}") ytitle("Density") title("Sampling Distribution of Means") droplines(18,16.8,19.2,15.6,20.4) xlabel(18 `" "18" "0" "' 16.8 `" "16.8" "-1" "' 19.2 `" "19.2" "1" "' 15.6 `" "15.6" "-2" "' 20.4 `" "20.4" "2" "' 14.4 `" "14.4" "-3" "' 21.6 `" "21.6" "3" "' 12 `" "M" "Z-stat" "') 

graph save "Graph" "C:\Users\jaredmw2\Downloads\sample-dist.gph", replace

cd C:\Users\jaredmw2\Downloads
graph combine "pop-dist" "sample-dist", rows(2)
graph save "Graph" "C:\Users\jaredmw2\Downloads\z test.gph", replace
graph export "C:\Users\jaredmw2\Downloads\z test.png", as(png) name("Graph")

///---------------------------------------------------------------------
///other useful things

twoway function y=tden(20,x), range(-2.09 2.09) color(dknavy) || ///
function y=tden(20,x), range(-4 -2.09) recast(area) color(dknavy) || ///
function y=tden(20,x), range(2.09 4) recast(area) color(dknavy) ///
xtitle("{it: x}") ///
ytitle("Density") title("Critial Values for {it: t}-distribution with 20 df") ///
subtitle("Two-tailed test and {&alpha}=.05") ///
legend(off) xlabel(-2.09 0 2.09)


 xlabel(18 16.8 19.2 15.6 `" "first" "group" "' 20.4) 
xlabel(18"mid" 16.8 "low" 19.2 "low" 15.6 "low" 20.4 "low")


graph twoway function y=normalden(x,18,6), range(0 36) color(dknavy) xlabel(0 6 12 18 24 30 36) legend(off) || ///
function y=normalden(x,18,6), range(0 6) recast(area) color(dknavy) || ///
function y=normalden(x,18,6), range(30 36) recast(area) color(dknavy) ///
xtitle("{it: x}") ///
ytitle("Density") title("Standard Normal Distribution") ///
subtitle("") ///
xlabel(0 6 12 18 24 30 36)
graph save "Graph" "C:\Users\jaredmw2\Downloads\sample-dist.gph", replace