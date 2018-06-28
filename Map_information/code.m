A=table2array(Untitled);
A(:,1)=A(:,1)-6999;
i=1;
A_=zeros(1000,3);
A_(:,1)=1:1000;
for j=1:1000
    if A_(j,1)==A(i,1)
        A_(j,2:3)=A(i,2:3);
        i=i+1;
    end
end
