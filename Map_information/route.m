function P_ =route(startNode,endNode)
load('node7000.mat')%�m�[�h7000�ԑ�����ԃ����N�̂ݒ��o�����f�[�^node_(847*6 table :link�ԍ��@�n�_�m�[�h�@�I�_�m�[�h�@�n�_x�@�n�_y ���� )
load('nodeXY.mat')
x= table2array(node_(:,2:3));%�n�_�I�_�m�[�h(double)
xx=x-6999;%�m�[�h��1000�ɂ���
weight =table2array(node_(:,6));%����(double)
G = graph(xx(:,1),xx(:,2),weight);%�O���t�쐬
h=plot(G,'XData',A_(:,2),'YData',A_(:,3));

P = shortestpath(G,startNode-6999,endNode-6999);%�o�H�T��
P_=P+6999;%���̃m�[�h�ɖ߂�
highlight(h,P,'NodeColor','g','EdgeColor','g')

end