
#                                       Device Tree for Doogee X5PRO (8.0 , 3.18.19+)

![X5PRO](https://ae01.alicdn.com/kf/HTB11K0yLVXXXXXGXFXXq6xXFXXXs/%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9-original-Doogee-X5-Doogee-X5-Pro-Android-5-1-5-0-HD-1280-720-%D0%A7%D0%B5%D1%82%D1%8B%D1%80%D0%B5%D1%85%D1%8A%D1%8F%D0%B4%D0%B5%D1%80%D0%BD%D1%8B%D1%85.jpg)

| Характеристики |                      |
| ---------------|:--------------------:|
| CPU:           | MT6735m, 4x1Ghz, x64 |
| GPU:           | Mali T720, 1x600Mhz  |
| RAM:           | 2Gb LPDDR3           |
| ROM:           | 16Gb                 |
| Display:       | 1280x720, IPS, 5'    |
| OS:            | 8.0, x32           |
| Shipped OS:    | 5.1, 6.0 (x32)       |

Баги и недочеты:
+ ?

Что работает:
+ Неизвестно (Перезагрузка в режим FASTBOOT)


Что бы добавить дерево и вендор в проект введите:
> ``` git clone -b oreo-8.0 https://github.com/SeriniTY320/android_device_x5pro device/doogee/x5pro && git clone https://github.com/SeriniTY320/android_vendor_x5pro.git vendor/doogee/x5pro ```

Перед ```git clone``` нужно указать бранч, к примеру ```-b LS14.1``` - скачает дерево под LineageOS 14.1

Внимание! Перед сборкой необходимо применить патчи!
> ` cd devices/doogee/x5pro/patches && ./check-patches.sh && ./apply-patches.sh `
