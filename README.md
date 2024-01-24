# Piano Tuning Helper

a cross-platform app to guide piano tuning

also a place for me to try out some react-native / react-js cross breeding  

## Running
_assumes you have an android emulator ready to go_
```bash
$ npm install
$ npm run start
$ npm run android
```

i assume that you can run `$ npm run ios` for iPhone, but i haven't tried yet

## Roadmap
- [X] draw piano
- [X] highlight pressed key
- [X] display key name
- [ ] coincident partials UX (pick first key, pick second key from options)
- [ ] play coincident partial mp3s
- [ ] walk through tuning steps

### Other Tasks
- [X] read getting started w/ react-native tutorial
- [X] refresh tuning theory
- [ ] generate theoretical coincident partials via supercollider
- [ ] record theoretical coincident partials to mp3s

once everything is working, test cross-platform-ness + get working on web too

## Coincident Partials
- F - G#  | 1047.684 - 1038.260 | 9.424
- F - A   | 873.070 - 880.000   | 6.930
- F - A#  | 698.456 - 699.246   | 0.790
- F - C   | 523.842 - 523.252   | 0.590
- F - D   | 873.070 - 880.995   | 7.925
- F# - A  | 1109.982 - 1100.000 | 9.982
- F# - A# | 924.985 - 932.328   | 7.343
- F# - B  | 739.988 - 740.826   | 0.838
- F# - C# | 554.991 - 554.366   | 0.625
- F# - D# | 924.985 - 933.381   | 8.396
- G - A#  | 1175.988 - 1165.410 | 10.578
- G - B   | 979.990 - 987.768   | 7.778
- G - C   | 783.992 - 784.878   | 0.886
- G - D   | 587.994 - 587.330   | 0.664
- G - E   | 979.990 - 988.884   | 8.894
- G# - B  | 1245.912 - 1234.710 | 11.202
- G# - C  | 1038.260 - 1046.504 | 8.244
- G# - C# | 830.608 - 831.549   | 0.941
- G# - D# | 622.956 - 622.254   | 0.702
- G# - F  | 1038.260 - 1047.684 | 9.424
- A - C   | 1320.000 - 1308.130 | 11.870
- A - C#  | 1100.000 - 1108.732 | 8.732
- A - D   | 880.000 - 880.995   | 0.995
- A - E   | 660.000 - 659.256   | 0.744
- A# - C# | 1398.492 - 1385.915 | 12.577
- A# - D  | 1165.410 - 1174.660 | 9.250
- A# - D# | 932.328 - 933.381   | 1.053
- A# - F  | 699.246 - 698.456   | 0.790
- B - D   | 1481.665 - 1468.325 | 13.327
- B - D#  | 1234.710 - 1244.508 | 9.798
- B - E   | 987.768 - 988.884   | 1.116
- C - D#  | 1569.756 - 1555.635 | 14.121
- C - E   | 1308.130 - 1318.512 | 10.382
- C - F   | 1046.504 - 1047.684 | 1.180
- C# - E  | 1663.098 - 1648.140 | 14.958
- C# - F  | 1385.915 - 1396.912 | 10.997
- D - F   | 1761.990 - 1746.140 | 15.850