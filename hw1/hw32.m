% 변수 설정
A = 1;
f = 10;
ts = 0.001; % 샘플링 간격 고정

% 전체 시간 변화 예시
tArray = [0.4, 1, 2]; % 다양한 전체 시간

for totalT = tArray
    t = 0:ts:totalT-ts; % 주어진 전체 시간으로 시간 벡터 재설정
    s = A + (4/pi) * sin(2*pi*1*f*t)/1; % 간략화된 s(t) 함수, k=1로 설정

    % FFT 계산
    y = fft(s);
    yshift = fftshift(y);
    
    % 주파수 축 계산
    N = length(t);
    df = 1/(N*ts);
    fAxis = -1/(2*ts) : df : 1/(2*ts)-df; % 수정: 주파수 축 계산 완성
    
    % 주파수 스펙트럼 그리기
    figure;
    plot(fAxis, abs(yshift));
    title(['전체 시간 = ', num2str(totalT), '초인 경우의 주파수 스펙트럼']);
    xlabel('주파수 (Hz)');
    ylabel('|S(f)|');
end
