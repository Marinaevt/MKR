% figure
% hold on
% for i = 1:9
% H = importdata(strcat(strcat('H_t_', num2str(i)),'.txt'));
% plot(H(:, 2), H(:, 1),'LineWidth',2, 'DisplayName', strcat('������ ���������� = ', num2str(i)))
% xlabel('�����', 'FontSize',18)
% ylabel('������ ������', 'FontSize',18)
% end
% legend({},'Location','southeast', 'FontSize',14)
H = importdata('H_t_ball.txt');
plot(H(:, 2), H(:, 1),'c','LineWidth',2);
xlabel('�����', 'FontSize',18)
ylabel('������ ������', 'FontSize',18)