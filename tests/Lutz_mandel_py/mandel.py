# https://medium.com/swlh/visualizing-the-mandelbrot-set-using-python-50-lines-f6aa5a05cf0f

from PIL import Image
import colorsys
import math
import os # file handling
import time # assessing performance

for num_runs in range(1):

    start = time.time()
    # os.remove("output.png")
    #frame parameters
    width_pix = 800 # pixels, 1000, 800
    height_pix = 600
    max_iters = 75 # 500
    #aspectRatio = 4/3 # 16/9
    ppm_max_colors = 15 # 15, 255
    x_coord = -0.5 # centers image of interest within frame
    y_coord = 0
    x_range = 4 # 3.4
    y_range = 3
 
    iters_count = 0
    #height_pix = round(width_pix / aspectRatio)
    
    min_x = x_coord - (x_range / 2)
    #print("min_x: ", min_x)
    #max_x = x_coord + (x_range / 2)
    #min_y = y_coord - (y_range / 2)
    max_y = y_coord + (y_range / 2)

    img = Image.new('RGB', (width_pix, height_pix), color = 'black')
    pixels = img.load()

    ppm_header = ["P3\n", str(width_pix), ' ', str(height_pix), "\n", str(ppm_max_colors), "\n" ]
    file = open(f'{width_pix}' + '_' + f'{height_pix}' + '_' + f'{max_iters}' + '.ppm', 'w')
    file.writelines(ppm_header)

    dist_list =[]
    x_list = []
    y_list = []
    esc_list =[]
    a_comp_list =[]
    b_comp_list =[]

    esc_cnt = 0
    
    #def logColor(distance, base, const, scale):
    #    color = -1 * math.log(distance, base)
    #    rgb = colorsys.hsv_to_rgb(const + scale * color,0.8,0.9)
    #    return tuple(round(i * 255) for i in rgb)

    #def powerColor(distance, exp, const, scale):
    #    color = distance**exp
    #    rgb = colorsys.hsv_to_rgb(const + scale * color, 1 - 0.6 * color, 0.9)
    #    return tuple(round(i * 255) for i in rgb)
    
    def color_4bit(distance):
        #print(distance)
        dist_str = (str(distance)[2:8]).ljust(8, '0')
        #print(dist_str)
        red = round(float(dist_str[0:2]) / 100 * 15)
        #print('red: ', red)
        green = round(float(dist_str[2:4]) / 100 * 15)
        #print('green: ', green)
        blue = round(float(dist_str[4:6]) / 100 * 15)
        #print('blue: ', blue)
        rgb = (red, green, blue)
        return tuple(rgb)


    for row in range(height_pix):
        #print("row", row)
        for col in range(width_pix):
            #print("col", col)
            #print("pre_x_coord: ", x_coord)
            x_coord = min_x + col * x_range / width_pix
            #print("post_x_coord: ", x_coord, "\n")
            x_list.append(x_coord)
            y_coord = max_y - (row * y_range / height_pix)
            y_list.append(x_coord)
            #print("post_y_coord: ", y_coord)
            old_x = x_coord
            old_y = y_coord
            #print("old_y", old_y)

            for iters in range(max_iters + 1):
                iters_cnt = iters #_cnt + 1
                #print("for", iters)
                a_comp = (x_coord * x_coord) - (y_coord * y_coord) #real component of z^2
                a_comp_list.append(a_comp)
                b_comp = 2 * x_coord * y_coord #imaginary component of z^2
                b_comp_list.append(b_comp)
                x_coord = a_comp + old_x #real component of new z
                x_list.append(x_coord)
                y_coord = b_comp + old_y #imaginary component of new z
                y_list.append(y_coord)

                #print("y_coord", y_coord)

                escape = (x_coord * x_coord) + (y_coord * y_coord)
                esc_list.append(escape)
                #print("escape", escape)
                if escape > 4:
                    esc_cnt = esc_cnt + 1
                    break
                # end if
            # end for


            if iters_cnt < max_iters:
                #print("if", iters_cnt)
                distance = (iters_cnt + 1) / (max_iters + 1)
                #print(distance)
                dist_list.append(distance) # to determine min & max values
                #rgb = powerColor(distance, 0.2, 0.27, 1.0)
                rgb_4bit = color_4bit(distance)
                #print(rgb_4bit, '\n')
                #print(type(rgb_4bit))
                pixels[col, row] = rgb_4bit # rgb

                rgb_str_clean = str(rgb_4bit).replace(',', '').replace('(', '').replace(')', '')
                #rgb_str_clean = '2 4 8'
                rgb_line=[rgb_str_clean, "\n"]

            
            else:
                rgb_str_clean = '0 0 0'
                rgb_line=[rgb_str_clean, "\n"]
            # end if


            file.writelines(rgb_line)

            #index = row * width_pix + col + 1
           # print("{} / {}, {}%".format(index, width_pix * height_pix, round(index / width_pix / height_pix * 100 * 10) / 10))


    file.close
    end = time.time()
    elapsed = end - start
    print(elapsed)
    #img.save(str(width_pix) + "_" + str(height_pix) + "_" + str(max_iters) + '_' + str(round(elapsed, 2)) + '_output.png')
    print("run", num_runs + 1, "done")

    print("dist_min: ", min(dist_list))
    print("dist_max: ", max(dist_list))

    print("x_coord_min: ", min(x_list))
    print("x_coord_max: ", max(x_list))

    print("y_coord_min: ", min(y_list))
    print("y_coord_max: ", max(y_list))

    print("a_comp_min: ", min(y_list))
    print("a_comp_max: ", max(y_list))

    print("b_comp_min: ", min(y_list))
    print("b_comp_max: ", max(y_list))

    print("esc_cnt: ", esc_cnt)
    print("esc_min: ", min(esc_list))
    print("esc_max: ", max(esc_list))
# currently running this on WSL ubuntu so no opening images
#os.system('open output.png')