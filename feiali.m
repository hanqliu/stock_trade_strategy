filename='C:\\Users\\Lenovo\\Desktop\\group project\\����\\000001.SZ.xlsx';
data=xlsread(filename,'B1:F103');
%�ư����ļۻ��ڷ��Ӽ���������ʵ��
%����ǰһ�����յ���߼ۡ���ͼ�����������breakthrough��֧����holdline
for i=2:52
    holdline=data(i-1,3);
    breakthr=data(i-1,2);
    disp(i);
    if data(i,1)<breakthr&&data(i,1)>holdline
           disp('���շ��Ӽ��������ݣ�ѡ���ڳ���������ʱ��ͷ����Խ��֧����ʱ��ͷ����һģ����Ϊȱ�����Ӽ���������δ��ʵ��');
    elseif data(i,1)>=breakthr
        disp('���շ��Ӽ��������ݣ�����������ǰ��ͷ���������');
    else
        disp('���շ��Ӽ��������ݣ��ǹ�֧����ǰ��ͷ���������');
    end
end