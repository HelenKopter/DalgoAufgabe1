function [Arraysum]=allsenlistwithoutspace
d=fopen('allsenlist.txt');
data=textscan(d,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s');
Arraysum=[];

 data1= data{2};
 data2= data{3};
 data3= data{4};
 data4= data{5};
 data5= data{6};
 data6= data{7};
 data7= data{8};
 data8= data{9};
 data9= data{10};
 data10= data{11};
 data11= data{12};
 data12= data{13};
 data13= data{14};
 data14= data{15};
 data15= data{16};

 array=[data{1} [data1 data2 data3 data4 data5 data6 data7 data8 data9 data10 data11 data12 data13 data14 data15]]



% for kk=2:17
%     data{kk};
%     for rr=1:160
%         wort= data{kk}{rr};
%         new{kk}{rr}= wort;
%         rr=rr+1;
%     end
%     kk=kk+1;
% end


fclose(d);
end