ffmpeg -i input1.mp4 -vf scale=960:-2 tmp1.mp4
ffmpeg -i input2.mp4 -vf scale=960:-2 tmp2.mp4
ffmpeg -i tmp1.mp4 -i tmp2.mp4 -filter_complex "[0:v:0] [0:a:0] [1:v:0] [1:a:0] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output2.mp4
