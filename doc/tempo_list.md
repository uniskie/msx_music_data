# TENPO毎の各音長tick数リスト

## 4分音符のtick数指定

4分音符のtick数指定で、 1～128 を指定した場合の、```TEMPO```と```各音長のTICK```リスト

> **Note**  
>  1tick  = 1frame = 1 vsync interrupt ≒ 1/60秒 (MSX NTSC)

|     | tempo   | L1  | L2  | L4  | L8   | L16   | L32    | L64    | OK    |
| --- | ------- | --- | --- | --- | ---- | ----- | ------ | ------ | ----- |
| 1   | 3600    | 4   | 2   | 1   | 0.5  | 0.25  | 0.125  | 0.0625 | L4    |
| 2   | 1800    | 8   | 4   | 2   | 1    | 0.5   | 0.25   | 0.125  | L8    |
| 3   | 1200    | 12  | 6   | 3   | 1.5  | 0.75  | 0.375  | 0.1875 | L4    |
| 4   | 900     | 16  | 8   | 4   | 2    | 1     | 0.5    | 0.25   | L16   |
| 5   | 720     | 20  | 10  | 5   | 2.5  | 1.25  | 0.625  | 0.3125 | L4    |
| 6   | 600     | 24  | 12  | 6   | 3    | 1.5   | 0.75   | 0.375  | L8    |
| 7   | 514.286 | 28  | 14  | 7   | 3.5  | 1.75  | 0.875  | 0.4375 | L4    |
| 8   | 450     | 32  | 16  | 8   | 4    | 2     | 1      | 0.5    | L32   |
| 9   | 400     | 36  | 18  | 9   | 4.5  | 2.25  | 1.125  | 0.5625 | L4    |
| 10  | 360     | 40  | 20  | 10  | 5    | 2.5   | 1.25   | 0.625  | L8    |
| 11  | 327.273 | 44  | 22  | 11  | 5.5  | 2.75  | 1.375  | 0.6875 | L4    |
| 12  | 300     | 48  | 24  | 12  | 6    | 3     | 1.5    | 0.75   | L16   |
| 13  | 276.923 | 52  | 26  | 13  | 6.5  | 3.25  | 1.625  | 0.8125 | L4    |
| 14  | 257.143 | 56  | 28  | 14  | 7    | 3.5   | 1.75   | 0.875  | L8    |
| 15  | 240     | 60  | 30  | 15  | 7.5  | 3.75  | 1.875  | 0.9375 | L4    |
| 16  | 225     | 64  | 32  | 16  | 8    | 4     | 2      | 1      | L64 * |
| 17  | 211.765 | 68  | 34  | 17  | 8.5  | 4.25  | 2.125  | 1.0625 | L4    |
| 18  | 200     | 72  | 36  | 18  | 9    | 4.5   | 2.25   | 1.125  | L8    |
| 19  | 189.474 | 76  | 38  | 19  | 9.5  | 4.75  | 2.375  | 1.1875 | L4    |
| 20  | 180     | 80  | 40  | 20  | 10   | 5     | 2.5    | 1.25   | L16   |
| 21  | 171.429 | 84  | 42  | 21  | 10.5 | 5.25  | 2.625  | 1.3125 | L4    |
| 22  | 163.636 | 88  | 44  | 22  | 11   | 5.5   | 2.75   | 1.375  | L8    |
| 23  | 156.522 | 92  | 46  | 23  | 11.5 | 5.75  | 2.875  | 1.4375 | L4    |
| 24  | 150     | 96  | 48  | 24  | 12   | 6     | 3      | 1.5    | L32   |
| 25  | 144     | 100 | 50  | 25  | 12.5 | 6.25  | 3.125  | 1.5625 | L4    |
| 26  | 138.462 | 104 | 52  | 26  | 13   | 6.5   | 3.25   | 1.625  | L8    |
| 27  | 133.333 | 108 | 54  | 27  | 13.5 | 6.75  | 3.375  | 1.6875 | L4    |
| 28  | 128.571 | 112 | 56  | 28  | 14   | 7     | 3.5    | 1.75   | L16   |
| 29  | 124.138 | 116 | 58  | 29  | 14.5 | 7.25  | 3.625  | 1.8125 | L4    |
| 30  | 120     | 120 | 60  | 30  | 15   | 7.5   | 3.75   | 1.875  | L8    |
| 31  | 116.129 | 124 | 62  | 31  | 15.5 | 7.75  | 3.875  | 1.9375 | L4    |
| 32  | 112.5   | 128 | 64  | 32  | 16   | 8     | 4      | 2      | L64 * |
| 33  | 109.091 | 132 | 66  | 33  | 16.5 | 8.25  | 4.125  | 2.0625 | L4    |
| 34  | 105.882 | 136 | 68  | 34  | 17   | 8.5   | 4.25   | 2.125  | L8    |
| 35  | 102.857 | 140 | 70  | 35  | 17.5 | 8.75  | 4.375  | 2.1875 | L4    |
| 36  | 100     | 144 | 72  | 36  | 18   | 9     | 4.5    | 2.25   | L16   |
| 37  | 97.2973 | 148 | 74  | 37  | 18.5 | 9.25  | 4.625  | 2.3125 | L4    |
| 38  | 94.7368 | 152 | 76  | 38  | 19   | 9.5   | 4.75   | 2.375  | L8    |
| 39  | 92.3077 | 156 | 78  | 39  | 19.5 | 9.75  | 4.875  | 2.4375 | L4    |
| 40  | 90      | 160 | 80  | 40  | 20   | 10    | 5      | 2.5    | L32   |
| 41  | 87.8049 | 164 | 82  | 41  | 20.5 | 10.25 | 5.125  | 2.5625 | L4    |
| 42  | 85.7143 | 168 | 84  | 42  | 21   | 10.5  | 5.25   | 2.625  | L8    |
| 43  | 83.7209 | 172 | 86  | 43  | 21.5 | 10.75 | 5.375  | 2.6875 | L4    |
| 44  | 81.8182 | 176 | 88  | 44  | 22   | 11    | 5.5    | 2.75   | L16   |
| 45  | 80      | 180 | 90  | 45  | 22.5 | 11.25 | 5.625  | 2.8125 | L4    |
| 46  | 78.2609 | 184 | 92  | 46  | 23   | 11.5  | 5.75   | 2.875  | L8    |
| 47  | 76.5957 | 188 | 94  | 47  | 23.5 | 11.75 | 5.875  | 2.9375 | L4    |
| 48  | 75      | 192 | 96  | 48  | 24   | 12    | 6      | 3      | L64 * |
| 49  | 73.4694 | 196 | 98  | 49  | 24.5 | 12.25 | 6.125  | 3.0625 | L4    |
| 50  | 72      | 200 | 100 | 50  | 25   | 12.5  | 6.25   | 3.125  | L8    |
| 51  | 70.5882 | 204 | 102 | 51  | 25.5 | 12.75 | 6.375  | 3.1875 | L4    |
| 52  | 69.2308 | 208 | 104 | 52  | 26   | 13    | 6.5    | 3.25   | L16   |
| 53  | 67.9245 | 212 | 106 | 53  | 26.5 | 13.25 | 6.625  | 3.3125 | L4    |
| 54  | 66.6667 | 216 | 108 | 54  | 27   | 13.5  | 6.75   | 3.375  | L8    |
| 55  | 65.4545 | 220 | 110 | 55  | 27.5 | 13.75 | 6.875  | 3.4375 | L4    |
| 56  | 64.2857 | 224 | 112 | 56  | 28   | 14    | 7      | 3.5    | L32   |
| 57  | 63.1579 | 228 | 114 | 57  | 28.5 | 14.25 | 7.125  | 3.5625 | L4    |
| 58  | 62.069  | 232 | 116 | 58  | 29   | 14.5  | 7.25   | 3.625  | L8    |
| 59  | 61.0169 | 236 | 118 | 59  | 29.5 | 14.75 | 7.375  | 3.6875 | L4    |
| 60  | 60      | 240 | 120 | 60  | 30   | 15    | 7.5    | 3.75   | L16   |
| 61  | 59.0164 | 244 | 122 | 61  | 30.5 | 15.25 | 7.625  | 3.8125 | L4    |
| 62  | 58.0645 | 248 | 124 | 62  | 31   | 15.5  | 7.75   | 3.875  | L8    |
| 63  | 57.1429 | 252 | 126 | 63  | 31.5 | 15.75 | 7.875  | 3.9375 | L4    |
| 64  | 56.25   | 256 | 128 | 64  | 32   | 16    | 8      | 4      | L64 * |
| 65  | 55.3846 | 260 | 130 | 65  | 32.5 | 16.25 | 8.125  | 4.0625 | L4    |
| 66  | 54.5455 | 264 | 132 | 66  | 33   | 16.5  | 8.25   | 4.125  | L8    |
| 67  | 53.7313 | 268 | 134 | 67  | 33.5 | 16.75 | 8.375  | 4.1875 | L4    |
| 68  | 52.9412 | 272 | 136 | 68  | 34   | 17    | 8.5    | 4.25   | L16   |
| 69  | 52.1739 | 276 | 138 | 69  | 34.5 | 17.25 | 8.625  | 4.3125 | L4    |
| 70  | 51.4286 | 280 | 140 | 70  | 35   | 17.5  | 8.75   | 4.375  | L8    |
| 71  | 50.7042 | 284 | 142 | 71  | 35.5 | 17.75 | 8.875  | 4.4375 | L4    |
| 72  | 50      | 288 | 144 | 72  | 36   | 18    | 9      | 4.5    | L32   |
| 73  | 49.3151 | 292 | 146 | 73  | 36.5 | 18.25 | 9.125  | 4.5625 | L4    |
| 74  | 48.6486 | 296 | 148 | 74  | 37   | 18.5  | 9.25   | 4.625  | L8    |
| 75  | 48      | 300 | 150 | 75  | 37.5 | 18.75 | 9.375  | 4.6875 | L4    |
| 76  | 47.3684 | 304 | 152 | 76  | 38   | 19    | 9.5    | 4.75   | L16   |
| 77  | 46.7532 | 308 | 154 | 77  | 38.5 | 19.25 | 9.625  | 4.8125 | L4    |
| 78  | 46.1538 | 312 | 156 | 78  | 39   | 19.5  | 9.75   | 4.875  | L8    |
| 79  | 45.5696 | 316 | 158 | 79  | 39.5 | 19.75 | 9.875  | 4.9375 | L4    |
| 80  | 45      | 320 | 160 | 80  | 40   | 20    | 10     | 5      | L64 * |
| 81  | 44.4444 | 324 | 162 | 81  | 40.5 | 20.25 | 10.125 | 5.0625 | L4    |
| 82  | 43.9024 | 328 | 164 | 82  | 41   | 20.5  | 10.25  | 5.125  | L8    |
| 83  | 43.3735 | 332 | 166 | 83  | 41.5 | 20.75 | 10.375 | 5.1875 | L4    |
| 84  | 42.8571 | 336 | 168 | 84  | 42   | 21    | 10.5   | 5.25   | L16   |
| 85  | 42.3529 | 340 | 170 | 85  | 42.5 | 21.25 | 10.625 | 5.3125 | L4    |
| 86  | 41.8605 | 344 | 172 | 86  | 43   | 21.5  | 10.75  | 5.375  | L8    |
| 87  | 41.3793 | 348 | 174 | 87  | 43.5 | 21.75 | 10.875 | 5.4375 | L4    |
| 88  | 40.9091 | 352 | 176 | 88  | 44   | 22    | 11     | 5.5    | L32   |
| 89  | 40.4494 | 356 | 178 | 89  | 44.5 | 22.25 | 11.125 | 5.5625 | L4    |
| 90  | 40      | 360 | 180 | 90  | 45   | 22.5  | 11.25  | 5.625  | L8    |
| 91  | 39.5604 | 364 | 182 | 91  | 45.5 | 22.75 | 11.375 | 5.6875 | L4    |
| 92  | 39.1304 | 368 | 184 | 92  | 46   | 23    | 11.5   | 5.75   | L16   |
| 93  | 38.7097 | 372 | 186 | 93  | 46.5 | 23.25 | 11.625 | 5.8125 | L4    |
| 94  | 38.2979 | 376 | 188 | 94  | 47   | 23.5  | 11.75  | 5.875  | L8    |
| 95  | 37.8947 | 380 | 190 | 95  | 47.5 | 23.75 | 11.875 | 5.9375 | L4    |
| 96  | 37.5    | 384 | 192 | 96  | 48   | 24    | 12     | 6      | L64 * |
| 97  | 37.1134 | 388 | 194 | 97  | 48.5 | 24.25 | 12.125 | 6.0625 | L4    |
| 98  | 36.7347 | 392 | 196 | 98  | 49   | 24.5  | 12.25  | 6.125  | L8    |
| 99  | 36.3636 | 396 | 198 | 99  | 49.5 | 24.75 | 12.375 | 6.1875 | L4    |
| 100 | 36      | 400 | 200 | 100 | 50   | 25    | 12.5   | 6.25   | L16   |
| 101 | 35.6436 | 404 | 202 | 101 | 50.5 | 25.25 | 12.625 | 6.3125 | L4    |
| 102 | 35.2941 | 408 | 204 | 102 | 51   | 25.5  | 12.75  | 6.375  | L8    |
| 103 | 34.9515 | 412 | 206 | 103 | 51.5 | 25.75 | 12.875 | 6.4375 | L4    |
| 104 | 34.6154 | 416 | 208 | 104 | 52   | 26    | 13     | 6.5    | L32   |
| 105 | 34.2857 | 420 | 210 | 105 | 52.5 | 26.25 | 13.125 | 6.5625 | L4    |
| 106 | 33.9623 | 424 | 212 | 106 | 53   | 26.5  | 13.25  | 6.625  | L8    |
| 107 | 33.6449 | 428 | 214 | 107 | 53.5 | 26.75 | 13.375 | 6.6875 | L4    |
| 108 | 33.3333 | 432 | 216 | 108 | 54   | 27    | 13.5   | 6.75   | L16   |
| 109 | 33.0275 | 436 | 218 | 109 | 54.5 | 27.25 | 13.625 | 6.8125 | L4    |
| 110 | 32.7273 | 440 | 220 | 110 | 55   | 27.5  | 13.75  | 6.875  | L8    |
| 111 | 32.4324 | 444 | 222 | 111 | 55.5 | 27.75 | 13.875 | 6.9375 | L4    |
| 112 | 32.1429 | 448 | 224 | 112 | 56   | 28    | 14     | 7      | L64 * |
| 113 | 31.8584 | 452 | 226 | 113 | 56.5 | 28.25 | 14.125 | 7.0625 | L4    |
| 114 | 31.5789 | 456 | 228 | 114 | 57   | 28.5  | 14.25  | 7.125  | L8    |
| 115 | 31.3043 | 460 | 230 | 115 | 57.5 | 28.75 | 14.375 | 7.1875 | L4    |
| 116 | 31.0345 | 464 | 232 | 116 | 58   | 29    | 14.5   | 7.25   | L16   |
| 117 | 30.7692 | 468 | 234 | 117 | 58.5 | 29.25 | 14.625 | 7.3125 | L4    |
| 118 | 30.5085 | 472 | 236 | 118 | 59   | 29.5  | 14.75  | 7.375  | L8    |
| 119 | 30.2521 | 476 | 238 | 119 | 59.5 | 29.75 | 14.875 | 7.4375 | L4    |
| 120 | 30      | 480 | 240 | 120 | 60   | 30    | 15     | 7.5    | L32   |
| 121 | 29.7521 | 484 | 242 | 121 | 60.5 | 30.25 | 15.125 | 7.5625 | L4    |
| 122 | 29.5082 | 488 | 244 | 122 | 61   | 30.5  | 15.25  | 7.625  | L8    |
| 123 | 29.2683 | 492 | 246 | 123 | 61.5 | 30.75 | 15.375 | 7.6875 | L4    |
| 124 | 29.0323 | 496 | 248 | 124 | 62   | 31    | 15.5   | 7.75   | L16   |
| 125 | 28.8    | 500 | 250 | 125 | 62.5 | 31.25 | 15.625 | 7.8125 | L4    |
| 126 | 28.5714 | 504 | 252 | 126 | 63   | 31.5  | 15.75  | 7.875  | L8    |
| 127 | 28.3465 | 508 | 254 | 127 | 63.5 | 31.75 | 15.875 | 7.9375 | L4    |
| 128 | 28.125  | 512 | 256 | 128 | 64   | 32    | 16     | 8      | L64 * |
