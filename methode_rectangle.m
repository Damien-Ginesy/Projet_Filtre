function integrale=methode_rectangle(fmin,fmax,signal,abscisse)
debut = find(abscisse<=fmin);
fin= find(abscisse<=fmax);
signal_int=signal(debut(1):fin(1));
abs_int=abscisse(debut(1):fin(1));

taille=fin(1)-debut(1);
integrale=0;
for i=1:taille-1
    integrale=integrale+signal_int(i)*(abs_int(i+1)-abs(i));
end

end