% Ohjelmalla plot_help voit tulostella käyriä, kunhan syötät 0.0 arvojen
% tilalle vastaavat simuloimasi tai bertoolilla laskemasi arvot sekä olet
% muokannut ohjelmaa tarpeeseesi sopivaksi.
%
    % You can use this Matlab code for plotting, provided that you replace 
    % the 0.0 values to the values you have simulated or calculated 
    % by Bertool. You also have to modifie the program to fit your needs.
%
% Kun olet syöttänyt oikeat arvot ja muokannut ohjelmaa tarpeesi mukaan
% sekä tallettanut sen, niin aja se kirjoittamalla Matlabin komentoriville
% plot_help.

    % When you have entered the right values and done all other changes,
    % you should save it. Then write plot_help at the Matlab prompt.
    % Remember also to use the right Current Folder.

% Muista varmistaa, että olet valinnut oikean (eli sen missä tiedostosi
% ovat) kansion "Current Folder" -valintaikkunasta tai olet muuten
% huolehtinut asiasta antamalla tarvittavat komennot. Versio 3.7.2023


Eb_No=[0 1 2 3 4 5 6 7];
% Eb/No-arvot on syötetty muuttujaan Eb_No valmiiksi.
    % Eb/No-values are already there.


BER=[0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
% Korvaa 0.0-arvot mittaamillasi.
    % Write here the values you have recorded instead of 0.0.

%SER=[0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
% Tätä et tarvitse vielä kohdassa 2.1. 
% Ota %-merkki pois, kun haluat käyttää tätä; muista syöttää arvot (ja tee
% myös alempana olevat muutokset).
    % You do not need this in 2.1 yet.
    % Take the %-symbol out, if you want to use this. Enter values in and
    % make also changes mentioned below.

%bertool_result=[0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
% Kun haluat ottaa tämän käyttöön, niin poista %-merkki ja syötä arvot,
% jotka sait bertoolilla (ja tee myös alempana olevat muutokset).
    % Take the %-symbol out, if you want to use this. Enter bertool 
    % values in and make also changes mentioned below.


figure(1) %Ensimmäinen kuva, First picture
semilogy(Eb_No,BER,'--sr','LineWidth',2) % Piirtää kuvan, Plot the picture
title('Simulated BER as the function of Eb/No') % Kuvan otsikon nimi, Title
xlabel('Eb/No [dB]') % X-akselin nimi, Name of the X-axis
ylabel('BER') % Y-akselin nimi, Name of the Y-axis
grid on % Tekee kuvaan lukemista helpottavan apuviivaston, Grid on
legend('Simulated BPSK') % Nimeää käyrän, Curve name


% Kun haluat piirtää samaan kuvaan myös teoreettisen käyrän, niin käytä
% silloin alla olevia komentoja (rivit 67-73). Niistä pitää toki ensin
% poistaa %-merkit rivin a l u s t a ! 
% Muista myös ottaa %-merkki riviltä 38 bertool=[...]-komennon alusta pois
% sekä syöttää sinne oikeat (esim. bertoolilla saamasi) arvot.

    % If you want to draw the theoretical curve in the same picture,
    % activate commands below (lines 67-73), that is take the first
    % %-symbols out. Take also %-symbol out from line 38 and enter values
    % in there.
   

%figure(2) % Toinen kuva, Another picture
%semilogy(Eb_No,BER,'--sr', Eb_No, bertool_result,'-ob','LineWidth',2)
%title('Proper title') % Find the proper title name
%xlabel('Eb/No [dB]') % X-akselin nimi, Name of the X-axis
%ylabel('BER/SER') % Find the proper name for the Y-axis
%grid on % Tekee kuvaan lukemista helpottavan viivaston, Grid on
%legend('signal_1','signal_2') % Find the proper names for the curves



% Muuttamalla komentoihin haluamasi vektorit (esim. SER), saat helposti
% tulostettua myös kohdan 2.2 käyrät jne.
    % You can use this for example task 2.2 - just make proper changes.

% Näitä komentoja käyttäen voit sitten helposti tulostaa samaan kuvaan myös
% useamman käyrän, kunhan muokkaat komentoja sopivasti. Lisäksi esim.
% määrittelyillä --pg ja --dk saat tehtyä toisen värisiä yms. käyriä.

    % By using these commands you can also easily print more curves in the 
    % same picture, as long as you modify the commands appropriately. 
    % In addition, for example, the definition --pg and --dk you can 
    % create a different color, etc. curves.

% Version 29.6.2023