clearvars; clc; close all;

n = ["Eurasian Beaver";
     "European Bison";
     "Grey Seal"
     "Geoffroy's Bat"
     "Iberian Wild Goat";
     "Grey Wolf";
     "Southern Chamois";
     "Chamois";
     "Golden Jackal";
     "Eurasian Lynx";
     "Alpine Ibex";
     "Wild Boar";
     "Red Deer";
     "Eurasian Otter";
     "Western Roe Deer";
     "Iberian Lynx";
     "Wolverine";
     "Ringed Seal";
     "Eurasian Badger";
     "Harbour Seal";
     "Loggerhead Turtle";
     "Brown Bear";
     "Humpback Whale";
     "Pine Marten";
     "Eurasian Elk"];
m = readmatrix("Prob2.csv");
startNums = m(:, 3);
years = m(:, 4:5);
yearsFix = ["";
            ""];
endNums = m(:, 6);

for i = 1:size(years)
    temp = convertCharsToStrings(strcat(num2str(years(i, 1)),'-', num2str(years(i, 2))));
    temp = convertCharsToStrings(strcat(n(i, 1),': ', temp));
    yearsFix(i, 1) = temp;
end

endNums = endNums.*100

bar(yearsFix, endNums);
title("Change in Mammal Populations");
xlabel("Mammals: Start and End Year")
ylabel("Change in Population by Percent")
fontsize(30, "points");
box off;