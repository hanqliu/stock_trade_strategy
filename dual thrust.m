%dual thrust����ʵ��--���ڵ�ֻ��Ʊ
%������Ҫ����һ��ѡ�ɲ���
%���Կ�����T+1����
%ͨ��ʹ��ǰһ�����̼���Ϊ�ο��۸������ǰ��ƫ��
%��ģ����96�������յ�����
filename='C:\\Users\\Lenovo\\Desktop\\group project\\����\\000001.SZ.xlsx';
data=xlsread(filename,'B1:F103');
for i = 8:103
    HH=max(data(i-7:i-2,2));
    LC=min(data(i-7:i-2,4));
    HC=max(data(i-7:i-2,4));
    LL=min(data(i-7:i-2,3));
    RANGE=max(HH-LC,HC-LL);
    BUYLINE=data(i-2,4)+0.3*RANGE;
    SELLLINE=data(i-2,4)-0.3*RANGE;
    disp(i-7);
    if data(i-1,4)>=BUYLINE
        disp('����');
    elseif data(i-1,4)<=SELLLINE
        disp('����');
    else
        disp('��������');
    end
end
%��000001.SZΪ�� ��׼�0.0143 �վ�ֵ 0.00299
%�껯������75.34%
%�껯���ձ���3.32
