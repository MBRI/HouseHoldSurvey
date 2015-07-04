function [Q]=weight(X,Y)
% wieht for each city
% X is the cities code
% Y is the year
Q=zeros(size(X,1),1);
W=dataset();
% Choosed Cityies' code
if Y>64
    W.Sh= [{'0001'};{'0301'};{'0401'};{'1002'};{'0603'};{'1601'};{'0902'};{'2202'};{'1801'};{'0903'};{'0303'};{'2301'};{'1503'};{'0608'};{'0105'};{'1105'};{'1904'};{'0207'};{'2002'};{'1204'};{'1402'};{'0707'};{'1905'};{'2307'};{'2305'};{'0808'};{'0502'};{'0212'};{'1304'};{'0916'};{'2105'}];
elseif Y>74
      W.Sh=[{'0001'};{'2401'};{'0401'};{'1002'};{'0603'};{'1601'};{'0902'};{'2202'};{'1801'};{'0903'};{'0303'};{'2301'};{'1503'};{'0608'};{'0105'};{'1105'};{'1904'};{'0207'};{'2002'};{'1204'};{'1402'};{'0707'};{'2311'};{'2501'};{'2305'};{'0808'};{'0502'};{'0212'};{'1304'};{'0916'};{'2105'}] ;
elseif Y>79
      W.Sh=[{'0001'};{'2401'};{'0401'};{'1002'};{'0603'};{'1601'};{'0902'};{'2202'};{'1801'};{'0903'};{'0303'};{'2301'};{'1503'};{'0608'};{'0105'};{'1105'};{'1904'};{'0207'};{'2002'};{'1204'};{'1402'};{'0707'};{'2603'};{'2501'};{'2305'};{'0808'};{'0502'};{'2705'};{'1304'};{'0916'};{'2105'}] ;
elseif Y>86
      W.Sh=[{'0001'};{'2401'};{'0401'};{'1002'};{'0603'};{'1601'};{'2802'};{'2202'};{'1801'};{'2901'};{'0303'};{'2301'};{'1503'};{'0608'};{'0105'};{'1105'};{'1904'};{'0207'};{'2002'};{'1204'};{'1402'};{'0707'};{'2603'};{'2501'};{'2305'};{'0808'};{'0502'};{'2705'};{'1304'};{'0916'};{'2105'}] ;
else % befor 64
       W.Sh= [{'0001'};{'0301'};{'0401'};{'1002'};{'0603'};{'1601'};{'0902'};{'2202'};{'1801'};{'0903'};{'0303'};{'2301'};{'1503'};{'0608'};{'0105'};{'1105'};{'1904'};{'0207'};{'2002'};{'1204'};{'1402'};{'0707'};{'1905'};{'2307'};{'2305'};{'0808'};{'0502'};{'0212'};{'1304'};{'0916'};{'2105'}];
end

% Wight of each city
if Y>80
    W.D=[0.0216308000000000;0.0148707240000000;0.0217006480000000;0.0748482280000000;0.0348473310000000;0;0;0;0;0;0.0633557380000000;0.383440752000000;0;0;0.0237839830000000;0.0141369300000000;0;0;0;0;0;0.0517232940000000;0.0236948040000000;0.0373255280000000;0.0511377020000000;0.0214320800000000;0.0297935120000000;0;0.0223599540000000;0.0899867470000000;0.0199312450000000;];
else
    W.D=[0.0197282160000000;0.0143502450000000;0.0212563720000000;0.0695468170000000;0.0309999490000000;0.00484877000000000;0;0.0120831150000000;0.00638363100000000;0;0.0491383280000000;0.332611940000000;0.0105442320000000;0;0.0243369680000000;0.0133471180000000;0.0107833550000000;0.0105087730000000;0.00615538300000000;0.0106190230000000;0.00851846000000000;0.0432934330000000;0.0165367730000000;0.0354455620000000;0.0665895810000000;0.0197989840000000;0.0260001060000000;0.0107066270000000;0.0191617680000000;0.0881506300000000;0.0185558400000000;];
end

    for i=1:size(X,1)
         a=W.D(strcmp(X(i),W.Sh));
         if ~isempty(a)
               Q(i)=a;
         end
    end
