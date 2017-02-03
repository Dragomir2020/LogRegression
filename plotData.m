function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

for i=1:1:size(y);
    if y(i) ==1
        %The student was admitted
        plot(X(i,1),X(i,2),'k+','MarkerFaceColor','b','LineWidth',2);
    else 
        %The student was not admitted
         plot(X(i,1),X(i,2),'ko','MarkerFaceColor','y');  
    end
end
xlabel('Exam 1 Score');
ylabel('Exam 2 Score');
legend({'Admitted','Not Admitted'},'FontWeight','Bold','yo');
% =========================================================================



hold off;

end
