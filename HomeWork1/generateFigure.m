%return figure
%references : width and height of the figure
function figure = generateFigure(imgW,imgH)
    x = 0:pi/100:2*pi;
    %domain
    y1= sin(x); 
    y2= cos(x);
    y3 = x.^2;

    set(gcf,'Position',[300 50 imgW imgH]);
    %set position and size of figure
    plot(x,y1,'r-',x,y2,'g.',x,y3,'b-'); 
    %the figure
    axis([0,2*pi,-1,20]);   
    %set range of independent and dependent variables to print
    title('sin ,cos and x^2 curves');
    xlabel('X');
    ylabel('Y');
    text(2.8,0.5,'sin(x)');
    text(1.4,0.3,'cos(x)');
    
    print(gcf,'-dpng','res.png');   
    %print the figure to res.png
    figure = imread('res.png');    
    %read the img and set the return value

