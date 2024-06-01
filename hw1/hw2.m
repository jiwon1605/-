% 주어진 변수 설정
A = 1;
f = 10;
ts = 1/1000; % 샘플링 간격
t = 0:ts:10; % 0부터 10까지 ts 간격으로
t = t(t > 0 & t < 10);

% k = 1, 3인 경우
n = [1, 3];
s = zeros(size(t));
for k = n
    s = s + (4./pi) .* sin(2.*pi.*k.*f.*t)./k;
end

% FFT 계산
y = fft(s);

% FFT 결과를 중심으로 이동
yshift = fftshift(y);

% 주파수 축 계산
N = length(t); % 샘플의 개수
df = 1/(N*ts); % 주파수 해상도
f = -1/(2*ts) : df : 1/(2*ts)-df; % 주파수 벡터 생성

% 주파수 스펙트럼 그리기
figure;
plot(f, abs(yshift));
title('k = 1, 3인 경우의 s(t) 주파수 스펙트럼');
xlabel('주파수 (Hz)');
ylabel('|S(f)|');

% 주어진 변수 설정
A = 1;
f = 10; % 기본 주파수
ts = 1/1000; % 샘플링 간격
t = 0:ts:10-ts; % 0부터 10까지 ts 간격으로, 10을 포함하지 않음

% k = 1, 3, 5인 경우의 s(t) 함수 생성
n = [1, 3, 5];
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end

% FFT 계산
y = fft(s);

% FFT 결과를 중심으로 이동
yshift = fftshift(y);

% 주파수 축 계산
N = length(t); % 샘플의 개수
df = 1/(N*ts); % 주파수 해상도
fAxis = -1/(2*ts) : df : 1/(2*ts)-df; % 주파수 벡터 생성

% 주파수 스펙트럼 그리기
figure;
plot(fAxis, abs(yshift));
title('k = 1, 3, 5인 경우의 s(t) 주파수 스펙트럼');
xlabel('주파수 (Hz)');
ylabel('|S(f)|');

% 주어진 변수 설정
A = 1;
f = 10; % 기본 주파수
ts = 1/1000; % 샘플링 간격
t = 0:ts:10-ts; % 0부터 10까지 ts 간격으로, 10을 포함하지 않음

% k = 1, 3, 5, 7, 9인 경우의 s(t) 함수 생성
n = [1, 3, 5, 7, 9];
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end

% FFT 계산
y = fft(s);

% FFT 결과를 중심으로 이동
yshift = fftshift(y);

% 주파수 축 계산
N = length(t); % 샘플의 개수
df = 1/(N*ts); % 주파수 해상도
fAxis = -1/(2*ts) : df : 1/(2*ts)-df; % 주파수 벡터 생성

% 주파수 스펙트럼 그리기
figure;
plot(fAxis, abs(yshift));
title('k = 1, 3, 5, 7, 9인 경우의 s(t) 주파수 스펙트럼');
xlabel('주파수 (Hz)');
ylabel('|S(f)|');

% 주어진 변수 설정
f = 10; % 기본 주파수
ts = 1/1000; % 샘플링 간격
t = 0:ts:10-ts; % 0부터 10까지 ts 간격으로, 10을 포함하지 않음

% k = 1, 3, 5, 7, 9,..., 97, 99인 경우의 s(t) 함수 생성
n = 1:2:99;
s = zeros(size(t));
for k = n
    s = s + (4/pi) * sin(2*pi*k*f*t)/k;
end

% FFT 계산
y = fft(s);

% FFT 결과를 중심으로 이동
yshift = fftshift(y);

% 주파수 축 계산
N = length(t); % 샘플의 개수
df = 1/(N*ts); % 주파수 해상도
fAxis = -1/(2*ts) : df : 1/(2*ts)-df; % 주파수 벡터 생성

% 주파수 스펙트럼 그리기
figure;
plot(fAxis, abs(yshift));
title('k = 1, 3, 5, 7, 9,..., 97, 99인 경우의 s(t) 주파수 스펙트럼');
xlabel('주파수 (Hz)');
ylabel('|S(f)|');
