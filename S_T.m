figure
hold on
for i = 1:9
S = importdata(strcat(strcat('S_t_', num2str(i)),'.txt'));
plot(S(:, 3), S(:, 1) - S(:, 2),'LineWidth',2, 'DisplayName', strcat('������ ���������� = ', num2str(i)))
xlabel('�����', 'FontSize',18)
ylabel('������� ���������', 'FontSize',18)
end
legend({}, 'FontSize',14)