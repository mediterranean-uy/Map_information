function P_ =route(startNode,endNode)
load('node7000.mat')%ノード7000番台を結ぶリンクのみ抽出したデータnode_(847*6 table :link番号　始点ノード　終点ノード　始点x　始点y 長さ )
load('nodeXY.mat')
x= table2array(node_(:,2:3));%始点終点ノード(double)
xx=x-6999;%ノード数1000個にする
weight =table2array(node_(:,6));%長さ(double)
G = graph(xx(:,1),xx(:,2),weight);%グラフ作成
h=plot(G,'XData',A_(:,2),'YData',A_(:,3));

P = shortestpath(G,startNode-6999,endNode-6999);%経路探索
P_=P+6999;%元のノードに戻す
highlight(h,P,'NodeColor','g','EdgeColor','g')

end