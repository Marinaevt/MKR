figure
hold on
tt = [];
for i = 1:9
H = importdata(strcat(strcat('H_t_0_', num2str(i)),'.txt'));
plot(H(:, 2), H(:, 1),'LineWidth',1, 'DisplayName', strcat('Величина трения = 0.', num2str(i)))
tt = [tt; max(H(:, 2))];
xlabel('Время', 'FontSize',18)
ylabel('Высота купола', 'FontSize',18)
H = importdata(strcat(strcat('H_t_0_', num2str(i)),'5.txt'));
plot(H(:, 2), H(:, 1),'LineWidth',1, 'DisplayName',  strcat(strcat('Величина трения = 0.', num2str(i)), '5'))
tt = [tt; max(H(:, 2))];
xlabel('Время', 'FontSize',18)
ylabel('Высота купола', 'FontSize',18)

end
% for i = 1:9
% H = importdata(strcat(strcat('H_t_0_', num2str(i)),'5.txt'));
% plot(H(:, 2), H(:, 1),'LineWidth',1, 'DisplayName',  strcat(strcat('Величина трения = 0.', num2str(i)), '5'))
% xlabel('Время', 'FontSize',18)
% ylabel('Высота купола', 'FontSize',18)
% end
H = importdata('H_t_1.txt');
plot(H(:, 2), H(:, 1),'LineWidth',1, 'DisplayName',  'Величина трения = 1')
legend({},'Location','southeast', 'FontSize',14)
tt = [tt; max(H(:, 2))];
figure
bar([0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1], tt);
%xlim([0 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1 1.1])
set(gca,'xtick',[0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1]);
xlabel('Коэффициенты трения', 'FontSize',18)
ylabel('Время формовки', 'FontSize',18)
% H = importdata('H_t_ball.txt');
% plot(H(:, 2), H(:, 1),'c','LineWidth',2);
% xlabel('Время', 'FontSize',18)
% ylabel('Высота купола', 'FontSize',18)