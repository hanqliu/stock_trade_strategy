filename='C:\\Users\\Lenovo\\Desktop\\group project\\����\\000004.SZ.xlsx';
data=xlsread(filename,'B1:F103');
for i = 8:103
    close=data(i-7:i-1,4);
    closet=close';
    stdv=std(closet);
    BUYLINE=data(i-2,4)+stdv;
    SELLLINE=data(i-2,4)-stdv;
    if data(i-1,4)>=BUYLINE
        disp('����');
    elseif data(i-1,4)<=SELLLINE
        disp('����');
    else
        disp('��������');
    end
end
%��000004.SZΪ�� 
%���Լ����վ�ֵ0.000167 ��׼��0.0295
%�껯����9.24% �껯������0.090
%ѵ��������׼��0.0300 �վ�ֵ-0.00124
%�껯����-31.24% �껯������