ffmpeg -i input1.mp4 -vf scale=w=480:h=360:force_original_aspect_ratio=decrease tmp1.mp4
ffmpeg -i input2.mp4 -vf scale=w=480:h=360:force_original_aspect_ratio=decrease tmp2.mp4
ffmpeg -i tmp1.mp4 -i tmp2.mp4 -filter_complex "[0:v:0] [0:a:0] [1:v:0] [1:a:0] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output1.mp4
