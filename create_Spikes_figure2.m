function create_Spikes_figure2(time, data,ttxt,offset,ylimm)
%CREATEFIGURE(YMATRIX1)
%  YMATRIX1:  matrix of y data
% plots both voltage and pid


% Auto-generated by MATLAB on 03-Apr-2014 21:43:09
% Create multiple lines using matrix input to plot
% YMatrix1 = data.voltage;
YMatrix1 = data;
subplot(1,2,1)
for i = 1: size(YMatrix1,1)
plot(time, YMatrix1(i,:) + 0.2*(i-1));
hold on
end
hold on

% Create title
title(ttxt);

% Create xlabel
xlabel('time (sec)');
ylim([-.2 1.1])
xlim([0 max(time)])

YMatrix2 = data.PID;
subplot(1,2,2)
%  Auto-generated by MATLAB on 03-Apr-2014 21:43:09
% Create multiple lines using matrix input to plot
for i = 1: size(YMatrix2,1)
plot(time, YMatrix2(i,:) + offset*(i-1));
hold on
end
plot(time,mean(YMatrix2,1)+.8,'r')
hold off

% Create title
title(ttxt);

% Create xlabel
xlabel('time (sec)');
ylim(ylimm)
xlim([0 max(time)])

