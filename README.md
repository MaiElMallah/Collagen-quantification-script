Masson’s Trichrome Staining Image Analysis

Image Analysis
(1)	 Download the MATLAB Script “Collagen_Quantification_Script_6.m”
(2)	 Open MATLAB Script. 
(3)	 Edit line 2 (in purple) to locate where each edited image is saved (will need to go file by file)
a.	Example: /Users/davina/Desktop/ST002/e1606 tg mt_0004.tif
(4)	 Ensure line 84 is set to x = 1
(5)	 Click “Run”
a.	6 panels should appear, breaking the image down into different colored sections
i.	Each panel should automatically be labelled 1-6
ii.	There may be 3 blue panels, 2 red panels, and 1 white panel
1.	This distribution may change
(6)	 Back in the script - Scroll to “%% Threshold” section (line 32)
a.	Locate the 6 lines that say “blue_mask = mask2”
i.	Lines: 36, 40, 44, 48, 52, 56
ii.	The “blue” and mask number will differ per line
b.	Identify which panels are primarily blue, red, and white
(7)	 Change the mask numbers … 
a.	for blue_mask, blue2_mask, and blue3_mask to correlate with the 3 blue panels
b.	for red_mask and red2_mask to correlate with the 2 red panels
c.	for white_mask to correlate with the 1 white panel
d.	Note: the distribution of panels may be different. There may be 3 red, 2 blue, 1 white. You don’t need to change the names, but in this case, make the 3 blue_masks correlate with the 3 red panels and the 2 red_masks correlate with the 2 blue panels.
(8)	 Ensure there are no repeated mask numbers
(9)	 Change line 84 to x = 3 (for faster running)
(10)	 Click “Run”
a.	Close the 6 panel images, as you will not be needing them anymore
(11)	 In the workspace panel, identify “zblue_percentage_T”, “zred_percentage_T”, and “zwhite_percentage_T” (at the very bottom) 
(12)	 Record these proportions into the appropriate line on the excel sheet
a.	Note: if there were 3 red panels and 2 blue panels, zblue represents the % image of the red and zred represents the % image of the blue
(13)	 Repeat steps 17-26 for all remaining edited images
