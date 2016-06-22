% ****************************************************************************
% (NATURAL) VISIBILITY GRAPH MOTIF PROFILE 
% 
% This code can be redistributed and/or modified under the terms of the 
% GNU General Public License as published by the Free Software Foundation, 
% either version 3 of the License, or (at your option) any later version.
%  
% This program is distributed by the author in the hope that it will be 
% useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%  
% 
% Please cite:
% 
% [1] Sequential visibility graph motifs
%     Jacopo Iacovacci and Lucas Lacasa
%     Physical Review E 93(4) 2016: 042309
% 
% [2] Sequential motif profile of natural visibility graphs
%     Jacopo Iacovacci and Lucas Lacasa
%     arXiv:1605.02645 (2016)
%
%  
% (c) Jacopo Iacovacci (mriacovacci@hotmail.it)
% *************************************************************************


function Z4= NVG_motifs(s)

% This code takes in input a vector s (time series) and extracts the natural VG motif profile
% Z4 (see papers).

T=numel(s);

Z4=zeros(1,6);


for i=1:1:T-3
    
    
    if( (s(i+3)<=(2*s(i+2)-s(i+1)))&&(s(i+2)<=(2*s(i+1)-s(i))) )
        
        
        Z4(1)=Z4(1)+1;
        
    end
    
    
    
    if((s(i+3)<=(1.5*s(i+2)-0.5*s(i)))&&(s(i+2)>(2*s(i+1)-s(i))) )
        
        
        Z4(2)=Z4(2)+1;
        
    end
    
    
    
    if( (s(i+3)>(2*s(i+2)-s(i+1)))&&(s(i+3)<=(3*s(i+1)-2*s(i)))&&(s(i+2)<=(2*s(i+1)-s(i))) )
        
        Z4(3)=Z4(3)+1;
        
    end
    
    
    if( (s(i+3)>(1.5*s(i+2)-0.5*s(i)))&&(s(i+3)<=(2*s(i+2)-s(i+1)))&&(s(i+2)>(2*s(i+1)-s(i)))   )
        
        
        Z4(4)=Z4(4)+1;
        
    end
    
    
    
    if( (s(i+3)>(3*s(i+1)-2*s(i)))&&(s(i+2)<=(2*s(i+1)-s(i))) )
        
        
        Z4(5)=Z4(5)+1;
        
    end
    
    
    
    if( (s(i+3)>(2*s(i+2)-s(i+1)))&&(s(i+2)>(2*s(i+1)-s(i)))  )
        
        
        Z4(6)=Z4(6)+1;
        
    end
    
    
end


for i=1:1:6
    
    Z4(i)=Z4(i)/(T-3);
    
end

end
     



