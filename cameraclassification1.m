

%camera = webcam;
net = alexnet;


   % image = camera.snapshot;
   image = imread('LaptopTest1.jpg');
    image = imresize(image,[227 227]);
    classifier = classify(net,image);
    position = [10 33 213 183];
    image = insertObjectAnnotation(image,'rectangle',position,char(classifier));
    imshow(image);
%      title(char(classifier));
predict(classifier,image)
    
