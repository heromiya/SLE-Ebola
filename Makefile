maps/$(ROI)_$(XMIN)_$(YMIN)_$(XMAX)_$(YMAX).$(FILE).png: template.map
        mkdir -p `dirname $@`
        shp2img -m $< -o tmp.map.png -e $(XMIN) $(YMIN) $(XMAX) $(YMAX) -l "$(FILE) Admin"
        convert -pointsize 16 -gravity north -font fonts/OpenSans-Regular.ttf -annotate 0 "$(FILE)" -fill white tmp.map.png $@
