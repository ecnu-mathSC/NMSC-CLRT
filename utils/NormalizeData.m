function [ProcessData]=NormalizeData(X)

[nFea,nSmp] = size(X);
ProcessData = zeros(nFea,nSmp);
for i = 1:nSmp
     ProcessData(:,i) = X(:,i) ./ max(1e-12,norm(X(:,i)));
end