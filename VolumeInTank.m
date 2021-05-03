% Variables needed to solve this problem
% Specify the height of the water
% For submission, make sure  h = 20
h = 20;

diameterCyl = 25;
radiusCyl = diameterCyl/2;
heightCyl = 19;
radiusCone1 = 12.5;
diameterFrustumOriginal = 46;
radiusFrustumOriginal = diameterFrustumOriginal/2;
radiusConeOriginal = radiusFrustumOriginal - radiusCyl;
heightConeOriginal = 14;
radiusCone2 = ((h - heightCyl)/(heightConeOriginal/(radiusFrustumOriginal-radiusCyl))+radiusCyl);
heightConeNew = h - heightCyl;
radiusConeNew = heightConeNew/(radiusConeOriginal/heightConeOriginal);

% Compute the volume. Using conditional statments, first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v.

if h > 0 && h <= 33
    if h <= 19
        v = pi * radiusCyl^2 * h;
    else
        %v = (pi * radiusCyl^2 * heightCyl) + (pi * (radiusConeNew^2) * ((h - heightCyl) / 3));
        %v = (pi * radiusCyl^2 * heightCyl) + ((pi * (h - heightCyl)) * (radiusCyl^2 + (radiusCyl + 0.7500000002) + (radiusCyl * (radiusCyl + 7500000002)));
        %v = (pi * radiusCyl^2 * heightCyl) + ((1/3) * pi * heightConeNew * ((radiusConeNew + radiusCyl)^2 + radiusCyl^2 + ((radiusConeNew + radiusCyl) * radiusCyl)));
        %v = ((1/3) * pi * heightConeNew * ((radiusConeNew + radiusCyl)^2 + radiusCyl^2 + ((radiusConeNew + radiusCyl) * radiusCyl)))
        %v = ((1/3) * pi * heightConeNew * 357.5625) + (pi * radiusCyl^2 * heightCyl);
        v = (pi * radiusCyl^2 * heightCyl) + ((1/3) * pi * (h - heightCyl) * (radiusCone1^2 + radiusCone2^2 + (radiusCone1 * radiusCone2)));
    end
else
    disp ('Non-sensical input.');
end
fprintf('The volume of water in cubic meters is %f m^3', v)