% figure
% hold on
% for i = 1:9
% H = importdata(strcat(strcat('H_t_', num2str(i)),'.txt'));
% plot(H(:, 2), H(:, 1),'LineWidth',2, 'DisplayName', strcat('Радиус скругления = ', num2str(i)))
% xlabel('Время')
% ylabel('Высота купола')
% end
% legend({},'Location','southeast', 'FontSize',14)
H = importdata('H_t_ball.txt');
plot(H(:, 2), H(:, 1),'c','LineWidth',2);
xlabel('Время')
ylabel('Высота купола')