% 주어진 변수 설정
A = 1;
f = 10;
t = 0:0.001:0.2; % 0부터 0.4까지 0.001 간격으로
t = t(t > 0 & t < 0.2); % 0초 초과 0.4초 미만 필터링


% (a) k = 1,3인 경우
n = [1, 3];
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end
figure; % 새로운 그래프 창을 연다
plot(t, s);
title('k = 1, 3인 경우의 s(t)');
xlabel('시간 (t)');
ylabel('s(t)');

% (b) k = 1,3,5인 경우
n = [1, 3, 5];
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end
figure;
plot(t, s);
title('k = 1, 3, 5인 경우의 s(t)');
xlabel('시간 (t)');
ylabel('s(t)');

% (c) k = 1,3,5,7,9인 경우
n = [1, 3, 5, 7, 9];
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end
figure;
plot(t, s);
title('k = 1, 3, 5, 7, 9인 경우의 s(t)');
xlabel('시간 (t)');
ylabel('s(t)');

% (d) k = 1,3,5,7,9,...,97,99인 경우
n = 1:2:99;
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end
figure;
plot(t, s);
title('k = 1, 3, 5, 7, 9,..., 97, 99인 경우의 s(t)');
xlabel('시간 (t)');
ylabel('s(t)');
