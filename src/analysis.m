function [y1, y2] = analysis(w,a)
    fs = a ;        % 傅里叶变换的抽样频率
    y1 = zeros(1,7) ;   %求7最大7次谐波
    y2 = zeros(1,7) ;
    NFFT = 2^nextpow2(length(w)) ;
    Y = fft(w,NFFT)/length(w) ;
    g = fs/2*linspace(0,1,NFFT/2+1) ;
    p = 2*abs(Y(1:NFFT/2+1)) ;
    plot(g,p) ;
    
    d = floor(NFFT/fs) ;   %把误差1Hz化成对应的点数
    for k=2:length(p) - 1 
        if( p(k)>0.02 && p(k)>p(k-1) && p(k)>p(k+1) )
            y1(1) = g(k) ;  %存储基频
            y2(1) = p(k) ;  %存储几波幅值
            break ;
        elseif( p(k)>0.015 && p(k)>p(k-1) && p(k)>p(k+1) )  %如果没有找到，就把幅值限制改为0.015 继续寻找
            y1(1) = g(k) ;  
            y2(1) = p(k) ;
        end
    end
    
    for t=2:7
        for i = t*(k-d):t*(k+d)     %误差允许的范围内寻找t次谐波点
            if( p(k)>0.02 && p(i)>0.05*p(k) && p(i)>p(i-1) && p(i)>p(i+1) )
                y2(t) = p(i)/y2(1) ;    %谐波幅值归一化
                y1(t) = g(i) ;
                break
            elseif( p(k)>0.015 && p(k)>0.05*p(k) && p(i)>p(i-1) && p(i)>p(i+1) )
                y2(t) = p(i)/y2(1) ;
                y1(t) = g(i) ;  
            end
        end
    end
        
end

