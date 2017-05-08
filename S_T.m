figure
hold on
for i = 1:9
S = importdata(strcat(strcat('S_t_', num2str(i)),'.txt'));
plot(S(:, 3), S(:, 1) - S(:, 2),'LineWidth',2, 'DisplayName', strcat('Радиус скругления = ', num2str(i)))
xlabel('Время')
ylabel('Толщина заготовки')
end
legend({}, 'FontSize',14)