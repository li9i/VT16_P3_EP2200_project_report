close all;
clear;
figure

p = 0.1;

lamda_1 = linspace(0, 1.18);
lamda_2 = linspace(0, 0.59);
lamda_3 = linspace(0, 0.9);

t_1 = 5 * (1-p)^5 ./ (2 * (1-p)^5 - lamda_1);
t_2 = (0.9^5 - lamda_2).^(-1) + (0.9^4 - lamda_2).^(-1) + (0.9^3 - lamda_2).^(-1) ...
    + (0.9^2 - lamda_2).^(-1) + (1.8 - lamda_2).^(-1);
t_3 = 0.9 ./ (1.8 - lamda_3) + 3.6 ./ (0.9 - lamda_3);

plot(lamda_1, t_1);
hold on
plot(lamda_2, t_2);
plot(lamda_3, t_3);
grid