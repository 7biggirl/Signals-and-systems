function [y1, y2] = analysis(w,a)
    fs = a ;        % ����Ҷ�任�ĳ���Ƶ��
    y1 = zeros(1,7) ;   %��7���7��г��
    y2 = zeros(1,7) ;
    NFFT = 2^nextpow2(length(w)) ;
    Y = fft(w,NFFT)/length(w) ;
    g = fs/2*linspace(0,1,NFFT/2+1) ;
    p = 2*abs(Y(1:NFFT/2+1)) ;
    plot(g,p) ;
    
    d = floor(NFFT/fs) ;   %�����1Hz���ɶ�Ӧ�ĵ���
    for k=2:length(p) - 1 
        if( p(k)>0.02 && p(k)>p(k-1) && p(k)>p(k+1) )
            y1(1) = g(k) ;  %�洢��Ƶ
            y2(1) = p(k) ;  %�洢������ֵ
            break ;
        elseif( p(k)>0.015 && p(k)>p(k-1) && p(k)>p(k+1) )  %���û���ҵ����Ͱѷ�ֵ���Ƹ�Ϊ0.015 ����Ѱ��
            y1(1) = g(k) ;  
            y2(1) = p(k) ;
        end
    end
    
    for t=2:7
        for i = t*(k-d):t*(k+d)     %�������ķ�Χ��Ѱ��t��г����
            if( p(k)>0.02 && p(i)>0.05*p(k) && p(i)>p(i-1) && p(i)>p(i+1) )
                y2(t) = p(i)/y2(1) ;    %г����ֵ��һ��
                y1(t) = g(i) ;
                break
            elseif( p(k)>0.015 && p(k)>0.05*p(k) && p(i)>p(i-1) && p(i)>p(i+1) )
                y2(t) = p(i)/y2(1) ;
                y1(t) = g(i) ;  
            end
        end
    end
        
end

