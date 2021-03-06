function gtMap = autoDrawShapes(vList, mapSZ)

gtMap = zeros(mapSZ);

% plList = 1:length(vList);
% plList = plList(~isempty(vList));
plList = find(~cellfun(@isempty,vList));
for roiIDX=plList
    initPos = vList{roiIDX};
    roiMask = roipoly(gtMap, initPos(:,1), initPos(:,2));
%     polyRoiH = impoly(axHandler, initPos);
%     roiMask = createMask(polyRoiH);

    % update map
%     finished = all(roiMask(:)==0);
%     nReg = max(gtMap(:)) + double(~finished);
    gtMap(roiMask) = roiIDX;
end




