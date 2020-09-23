clear all; close all; clc;

%% F����������Ӧ��Ƶ��
f(1) = 349.23;	% (1-F)
f(2) = 392;		% (2-G)
f(3) = 440;		% (3-A)
f(4) = 466.16;	% (4-bB)
f(5) = 523.25;	% (5-C)
f(6) = 597.33;	% (6-D)
f(7) = 659.25;	% (7-E)
f(8) = 698.45;	% (i-F)

%% �������ȺͲ�����
A  = 1;
fs = 8e+3;

%fs = fs/2 ;  % ���߰˶�
%fs = fs*2 ;  %���Ͱ˶�
%% ÿ�ĵĳ���ʱ��
tpb = 0.5;
t0 = 0:(1/fs):(tpb/2);	% ����
t1 = 0:(1/fs):tpb;		% һ��
t2 = 0:(1/fs):(2*tpb);	% ����
t = {t0, t1, t2};

%% ͣ��ʱ��
tps = 0.05;  
pause_seq = zeros(1, fs*tps);

%% ������
% len  = 8;
% note = [f(5), f(5), f(6), f(2), f(1), f(1), f(6)/2, f(2)];
% beat = [2, 1, 1, 3, 2, 1, 1, 3];
% beat = beat*0.25 ;
%% �໨��
% len  = 22;
% note = [f(5), f(5), f(3), f(2), f(3), f(6)/2, f(2), f(3), f(5), f(3), f(2), f(5), f(5), f(3), f(2), f(3), f(5)/2, f(2), f(3), f(5), f(2), f(1)];
% beat = [1 1 1 1 1 2 1 1 1 1 3 1 1 1 1 1 2 1 1 1 1 3];

%% �㶨����
% music_seq1 = [];
% for k = 1:len
% 	fk = note(k);
% 	tk = t{beat(k)};
%     seq = A*sin(2*pi*fk*tk) ;
% 	music_seq1 = [music_seq1, seq, pause_seq]; %#ok<AGROW>
% end
%  sound(music_seq1/max(music_seq1));
%  plot(music_seq1) ;
 %% part1.��2�� ���߰���
%  time = fs*beat ;
%  N =length(time) ;
%  east = zeros(1,N) ;
%  n=1 ;
%  for num = 1:N
%      t = 1/fs:1/fs:(time(num))/fs ;
%      P = zeros(1,time(num)) ;
%      L = (time(num))*[0 1/5 333/1000 333/500 1] ;
%      
%      T = [0 1.5 1 1 0] ;
%      s = 1 ;
%      b = 1:1:time(num) ;
%      for k=1:4
%          
%          P(s:L(k+1)-1) = (T(k+1)-T(k))/(L(k+1)-L(k))*(b(s:L(k+1)-1)-L(k+1)*ones(1,L(k+1)-s))+T(k+1)*ones(1,L(k+1)-s) ;
%          s = L(k+1) ;
%      end
%      east(n:n+time(num)-1) = sin(2*pi*note(num)*t).*P(1:time(num)) ;
%      n = n+time(num) ;
%  end
%  sound(east, 8000) ;
%  plot(east) ;
%  
%  
 
%2. ָ��˥������  ��̫����
 
% music_seq1 = [];
% for k = 1:len
% 	fk = note(k);
% 	tk = t{beat(k)};
%     seq = A*sin(2*pi*fk*tk).* exp(-3*pi*tk) ;
%     (0.9677.^(fk*tk));
%     (1 - fk*tk /(2*pi*tk)) ;
% 	music_seq1 = [music_seq1, seq, pause_seq]; %#ok<AGROW>
% end
% sound(music_seq1/max(music_seq1));
%  plot(music_seq1) ;
%  
%    fname = '������.wav';        % �趨�ļ����� ע���ʽ
%   audiowrite(fname, music_seq1/max(music_seq1), fs);     % ����ļ�
%% part1.��3�� ���߰˶�

%  note = note*2 ;   %%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%  time = fs*beat ;
%  N =length(time) ;
%  east = zeros(1,N) ;
%  n=1 ;
%  for num = 1:N
%      t = 1/fs:1/fs:(time(num))/fs ;
%      P = zeros(1,time(num)) ;
%      L = (time(num))*[0 1/5 333/1000 333/500 1] ;
%      
%      T = [0 1.5 1 1 0] ;
%      s = 1 ;
%      b = 1:1:time(num) ;
%      for k=1:4
%          
%          P(s:L(k+1)-1) = (T(k+1)-T(k))/(L(k+1)-L(k))*(b(s:L(k+1)-1)-L(k+1)*ones(1,L(k+1)-s))+T(k+1)*ones(1,L(k+1)-s) ;
%          s = L(k+1) ;
%      end
%      east(n:n+time(num)-1) = sin(2*pi*note(num)*t).*P(1:time(num)) ;
%      n = n+time(num) ;
%  end
%  sound(east, 8000) ;
%  plot(east) ;
%  

%% part1.��3�� ���Ͱ˶�

%  note = note/2 ;  %%%%%%%%%%%%%%%%%%%%%%%%%%
%   time = fs*beat ;
%  N =length(time) ;
%  east = zeros(1,N) ;
%  n=1 ;
%  for num = 1:N
%      t = 1/fs:1/fs:(time(num))/fs ;
%      P = zeros(1,time(num)) ;
%      L = (time(num))*[0 1/5 333/1000 333/500 1] ;
%      
%      T = [0 1.5 1 1 0] ;
%      s = 1 ;
%      b = 1:1:time(num) ;
%      for k=1:4
%          
%          P(s:L(k+1)-1) = (T(k+1)-T(k))/(L(k+1)-L(k))*(b(s:L(k+1)-1)-L(k+1)*ones(1,L(k+1)-s))+T(k+1)*ones(1,L(k+1)-s) ;
%          s = L(k+1) ;
%      end
%      east(n:n+time(num)-1) = sin(2*pi*note(num)*t).*P(1:time(num)) ;
%      n = n+time(num) ;
%  end
%  sound(east, 8000) ;
%  plot(east) ;
%  
%% part 1.��4�� г������
%     
%  time = fs*beat ;
%  N =length(time) ;
%  east = zeros(1,N) ;
%  n=1 ;
%  for num = 1:N
%      t = 1/fs:1/fs:(time(num))/fs ;
%      P = zeros(1,time(num)) ;
%      L = (time(num))*[0 1/5 333/1000 333/500 1] ;
%      
%      T = [0 1.5 1 1 0] ;
%      s = 1 ;
%      b = 1:1:time(num) ;
%      for k=1:4
%          P(s:L(k+1)-1) = (T(k+1)-T(k))/(L(k+1)-L(k))*(b(s:L(k+1)-1)-L(k+1)*ones(1,L(k+1)-s))+T(k+1)*ones(1,L(k+1)-s) ;
%          s = L(k+1) ;
%      end
%      m = [1 0.3 0.2] ;
%      ss = zeros(1, length(t)) ;
%      for i=1:length(m)
%          ss = ss+m(i)*sin(2*i*pi*note(num)*t) ;
%      end
%      east(n:n+time(num)-1) = sin(2*pi*note(num)*t).*P(1:time(num)) ;
%      n = n+time(num) ;
%  end
%  sound(east, 8000) ;
%  plot(east) ;

%% part1.��5�� �е���
% len = 37 ;
% note = [f(1)*2, f(2)*2,f(3)*2,f(3)*2,f(3)*2,f(3)*2,f(3)*2,f(5),f(5),f(3)*2,f(2)*2,f(2)*2,f(2)*2,f(5)*2,f(5)*2,f(7),f(7),f(1)*2,f(1)*2,f(1)*2,f(1)*2,f(1)*2,f(3),f(3),f(1)*2,f(7),f(7),f(7),f(3)*2,f(3)*2] ;%,f(6),f(5),f(6),f(6),f(6),f(1)*2,f(7)] ;
% beat = [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3] ;%.2,2,2,2,2,2,3] ;
% beat = beat/4 ;
% note = note*0.9 ;
% 
%  time = fs*beat ;
%  N =length(time) ;
%  east = zeros(1,N) ;
%  n=1 ;
%  for num = 1:N
%      t = 1/fs:1/fs:(time(num))/fs ;
%      P = zeros(1,time(num)) ;
%      L = (time(num))*[0 1/5 333/1000 333/500 1] ;
%      
%      T = [0 1.5 1 1 0] ;
%      s = 1 ;
%      b = 1:1:time(num) ;
%      for k=1:4
%          P(s:L(k+1)-1) = (T(k+1)-T(k))/(L(k+1)-L(k))*(b(s:L(k+1)-1)-L(k+1)*ones(1,L(k+1)-s))+T(k+1)*ones(1,L(k+1)-s) ;
%          s = L(k+1) ;
%      end
%      m = [1 0.3 0.2] ;
%      ss = zeros(1, length(t)) ;
%      for i=1:length(m)
%          ss = ss+m(i)*sin(2*i*pi*note(num)*t) ;
%      end
%      east(n:n+time(num)-1) = sin(2*pi*note(num)*t).*P(1:time(num)) ;
%      n = n+time(num) ;
%  end
%  sound(east, 8000) ;
%  plot(east) ;
%  
%  fname = '�е���_1.wav';        % �趨�ļ����� ע���ʽ
%  audiowrite(fname, east, fs);     % ����ļ�

%%  2.(1) ֻ����audioread
% x = audioread('fmt.wav ') ;
% sound(x) ;

%% 2.(2) realwave wave2proc

% load('Guitar.mat') ;
% len= length(realwave) ;
% add = resample(realwave, 10,1) ;
% avg = zeros(1,len) ;
% for i= 1:10
%     avg = avg + (add((i-1)*len+1:i*len))' ;
% end
% add = [avg, avg, avg, avg, avg, avg, avg, avg, avg, avg] ;
% avg = resample(add/10, 1, 10) ;
% figure ;
% subplot(3,1,1) ;  plot(wave2proc) ; title('wave2proc') ;
% subplot(3,1,2) ;  plot(avg) ;  title('avg') ;
% subplot(3,1,3) ;  plot(avg-wave2proc') ;  title('avg-waveproc') ;

%% 2.��3��flourier
% load 'Guitar.mat'
% wave2proc = repmat(wave2proc, 25, 1) ;
% NFFT = 2^nextpow2(length(wave2proc)) ;
% Y = fft(wave2proc, NFFT)/ length(wave2proc) ;
% g = fs/2*linspace(0, 1, NFFT/2+1) ;
% plot(g, 2*abs(Y(1:NFFT/2+1))) 
% ylabel('��ֵ') ;
% xlabel('Ƶ��') ;

%% part3.(4) �������������������
wave = audioread('fmt.wav') ;
N = length(wave) ;
% �ڵ�����
time = floor([0.096 0.267 1.767 2.234 2.706 3.146 3.606 4.056 4.520 5.030 5.749 5.978 7.015 7.709 7.923 8.028 8.490 8.959 9.454 9.852 10.125 10.356 10.565 10.822 11.292 11.741 12.284 12.741 13.269 13.758 14.315 14.939 15.432]/16.384*N) ;
fs = N/16.384 ;     %ȷ�����ݵĳ�������Ƶ��
n = length(time) ;
for k=1:n 
    if k==1
        temp = wave([1:time(k)-1] );
    else 
        temp = wave(time(k-1):time(k)-1) ;  %����k���������ݴ���temp����
    end
    
    temp = repmat(temp, 1000, 1) ;      % ��ÿ�������Ĵ������ֱ𱣴�  F��Ƶ��  U����ֵ
    [F(k,1:7) U(k,1:7)] = analysis(temp, fs) ;
end

% 






















