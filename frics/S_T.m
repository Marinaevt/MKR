% figure
% hold on
% for i = 1:9
% S = importdata(strcat(strcat('S_t_', num2str(i)),'.txt'));
% plot(S(:, 3), S(:, 1) - S(:, 2),'LineWidth',2, 'DisplayName', strcat('������ ���������� = ', num2str(i)))
% xlabel('�����', 'FontSize',18)
% ylabel('������� ���������', 'FontSize',18)
% end
% legend({}, 'FontSize',14)

figure
hold on
tt = [];
for i = 1:9
H = importdata(strcat(strcat('S_t_0_', num2str(i)),'.txt'));
S = H(:, 1) - H(:, 2);
plot(H(:, 3), S,'LineWidth',1, 'DisplayName', strcat('�������� ������ = 0.', num2str(i)))
tt = [tt; max(H(:, 3))];
xlabel('�����', 'FontSize',18)
ylabel('������� ���������', 'FontSize',18)
H = importdata(strcat(strcat('S_t_0_', num2str(i)),'5.txt'));
S = H(:, 1) - H(:, 2);
plot(H(:, 3), S,'LineWidth',1, 'DisplayName',  strcat(strcat('�������� ������ = 0.', num2str(i)), '5'))
tt = [tt; max(H(:, 3))];
xlabel('�����', 'FontSize',18)
ylabel('������� ���������', 'FontSize',18)

end


H = importdata('S_t_1.txt');
S = H(:, 1) - H(:, 2);
plot(H(:, 3), S,'LineWidth',1, 'DisplayName',  '�������� ������ = 1')
legend({},'Location','northeast', 'FontSize',14)
tt = [tt; max(H(:, 3))];

