numeric area_border_errors;
area_border_errors = 0;
string current_scrap, current_src;


vardef buildcycle(text ll) =
  save ta_, tb_, k_, i_, pp_; path pp_[];
  k_=0;
  for q=ll: pp_[incr k_]=q; endfor
  i_=k_;
  for i=1 upto k_:
    (ta_[i], length pp_[i_]-tb_[i_]) =
      pp_[i] intersectiontimes reverse pp_[i_];
    if ta_[i]<0:
      message("[Error: area borders "& area_border[i] &" and "&
         area_border[i_] &" don't intersect in scrap " & current_scrap &
         " (file " & current_src & ")]");
      area_border_errors := area_border_errors + 1;
    fi
    i_ := i;
  endfor
  for i=1 upto k_: subpath (ta_[i],tb_[i]) of pp_[i] .. endfor
    cycle
enddef;



beginfig(1);



current_scrap := "SP-Enclos-1@enclos";
current_src := "Data/enclos.th2 [88]";
string area_border[];
area_border[1] := "l9-2092-2134";

draw (buildcycle(((-69.754537,70.369920)
 .. controls (-63.581222,40.740194) and (-50.000561,18.518031) .. (-37.654313,-14.815331)
 .. controls (-25.308064,-48.148693) and (-10.492428,-97.531502) .. (11.729953,-98.765751)
 .. controls (33.952333,-100.000000) and (75.927853,-97.530277) .. (75.927677,-86.419112)
 .. controls (75.927501,-75.307953) and (47.531392,-19.752493) .. (36.419941,-2.468605)
 .. controls (25.308491,14.815281) and (5.553854,87.654293) .. (-20.372172,93.827152)
 .. controls (-46.298154,100.000000) and (-75.927853,99.999645) .. (-69.754537,70.369920)
)));



current_scrap := "SP-Enclos-1@enclos";
current_src := "Data/enclos.th2 [92]";
string area_border[];
area_border[1] := "l8-1188-4560";

draw (buildcycle(((23.373324,-95.857713)
 .. controls (38.166104,-91.715516) and (75.444671,-64.496571) .. (71.302559,-46.745162)
 .. controls (67.160537,-28.994136) and (58.284173,78.105952) .. (28.106398,82.839961)
 .. controls (-2.071387,87.573971) and (-50.592491,100.000000) .. (-59.468293,91.124006)
 .. controls (-68.344090,82.248018) and (-75.444671,73.963725) .. (-73.077725,56.211853)
 .. controls (-70.710780,38.459982) and (-36.982291,-42.013707) .. (-31.064865,-58.581466)
 .. controls (-25.147476,-75.149118) and (8.580474,-100.000000) .. (23.373324,-95.857713)
)));
endfig;
end;
