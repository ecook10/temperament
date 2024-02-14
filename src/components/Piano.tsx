import React, { useState } from 'react';
import { View, useWindowDimensions } from 'react-native';
import Sound from "react-native-sound";
import Svg, { Rect, Text } from 'react-native-svg';

Sound.setCategory('Playback');

type KeyName = "A" | "B" | "C" | "D" | "E" | "F" | "G";

type BlackKeyShiftType = "right" | "left" | "center"

type KeyDef = {
  name: KeyName;
  sharpShift?: BlackKeyShiftType;
}

const WHITE_KEY_RELATIVE_WIDTH = 10;

const BLACK_KEY_RELATIVE_WIDTH = 5;
const BLACK_KEY_HEIGHT_FACTOR = 0.5;

const BLACK_KEY_SHIFT_FACTOR = 0.07;

const WhiteKeyDefs: KeyDef[] = [
  { name: "A", sharpShift: "right" },
  { name: "B", sharpShift: undefined },
  { name: "C", sharpShift: "left" },
  { name: "D", sharpShift: "right" },
  { name: "E", sharpShift: undefined },
  { name: "F", sharpShift: "left" },
  { name: "G", sharpShift: "center" },
];

type IntervalDef = { up: string[], down: string[] };
const TuningIntervals: Record<string, IntervalDef> = {
  "A": {
    up: ["C", "C#", "D", "E"],
    down: ["F", "F#"]
  },
  "A#": {
    up: ["C#", "D", "D#", "F"],
    down: ["F", "F#", "G"]
  },
  "B": {
    up: ["D", "D#", "E"],
    down: ["F#", "G", "G#"]
  },
  "C": {
    up: ["D#", "E", "F"],
    down: ["A", "F", "G", "G#"]
  },
  "C#": {
    up: ["E", "F"],
    down: ["A", "A#", "G#"]
  },
  "D": {
    up: ["F"],
    down: ["A", "A#", "B", "F", "G"]
  },
  "D#": {
    up: [],
    down: ["A#", "F#", "G#"]
  },
  "E": {
    up: [],
    down: ["A", "B", "C", "C#", "G"]
  },
  "F": {
    up: ["C", "D", "G#"],
    down: ["A#", "C", "C#", "D", "G#"]
  },
  "F#": {
    up: ["A", "A#", "B", "C#", "D#"],
    down: []
  },
  "G": {
    up: ["A#", "B", "C", "D", "E"],
    down: []
  },
  "G#": {
    up: ["B", "C", "C#", "D#", "F"],
    down: []
  }
}

const getPositionFactor = (sharpShift?: BlackKeyShiftType) => {
  switch (sharpShift) {
    case "left":
      return 0.75 - BLACK_KEY_SHIFT_FACTOR
    case "right":
      return 0.75 + BLACK_KEY_SHIFT_FACTOR
    case "center":
      return 0.75
    default:
      return 0;
  }
}

type KeyProps = {
  keyLabel: string;
  keyIndex: number;
  pianoViewHeight: number;
  sharpShift?: BlackKeyShiftType;
  onClick?: () => void;
  isFirstSelection?: boolean
}

const Key = ({
  keyLabel,
  keyIndex,
  pianoViewHeight,
  sharpShift,
  onClick,
  isFirstSelection
}: KeyProps) => {
  const x = (keyIndex + getPositionFactor(sharpShift)) * WHITE_KEY_RELATIVE_WIDTH;
  const width = !sharpShift ? WHITE_KEY_RELATIVE_WIDTH : BLACK_KEY_RELATIVE_WIDTH
  const height = pianoViewHeight * (!sharpShift ? 1 : BLACK_KEY_HEIGHT_FACTOR);

  let fill = !sharpShift ? "white" : "black";
  if (isFirstSelection) fill = "red";
  else if (!onClick) fill = !sharpShift ? "lightgray" : "darkgray"

  console.log("RENDER Key", keyLabel, x, width, height, sharpShift)
  return (
    <>
      <Rect
        x={x}
        y={0}
        width={width}
        height={height}
        fill={fill}
        stroke="black"
        strokeWidth="0.5"
        onPress={onClick}
      />
      <Text
        x={x + (width / 2)}
        y={height - (pianoViewHeight * (!sharpShift ? 0.12 : 0.03))}
        fill={!sharpShift ? "black" : "white"}
        fontSize="2"
        textAnchor="middle"
      >
        {keyLabel}
      </Text>
    </>
  )
}

type KeySelection = {
  index: number;
  key: string;
}

const Piano = ({
  whiteKeyCount = 15,
  headerHeightPx = 100,
  startingKeyName = "C"
}: {
  whiteKeyCount?: number;
  headerHeightPx?: number;
  startingKeyName?: KeyName;
}) => {
  const window = useWindowDimensions();
  const pianoHeightPx = window.height - headerHeightPx;
  const pianoAspectRatio = window.width / pianoHeightPx;

  const pianoViewWidth = whiteKeyCount * WHITE_KEY_RELATIVE_WIDTH;
  const pianoViewHeight = pianoViewWidth / pianoAspectRatio;

  // TODO lock these to temperament octave
  const startingKeyIndex = WhiteKeyDefs.findIndex(k => k.name === startingKeyName)
  const [startingOctave, setStartingOctave] = useState(0);

  const [firstKeySelection, setFirstKeySelection] = useState<KeySelection>();

  const getKeyProps = (type: "white" | "black") => (keyIndex: number): KeyProps | undefined => {
    const whiteKeyIndex = (keyIndex + startingKeyIndex) % WhiteKeyDefs.length;
    const { name, sharpShift } = WhiteKeyDefs[whiteKeyIndex];
    if (type === "black" && !sharpShift) return;

    const key = `${name}${type === "black" ? "#" : ""}`
    const octave = startingOctave + Math.floor(keyIndex / WhiteKeyDefs.length);
    const isFirstSelection = firstKeySelection?.key === key;

    let onClick: (() => void) | undefined = undefined;
    if (!firstKeySelection) {
      onClick = () => setFirstKeySelection({ index: keyIndex, key })
    } else if (isFirstSelection) {
      onClick = () => setFirstKeySelection(undefined);
    } else {
      const intervals = TuningIntervals[firstKeySelection.key]
      let intervalKeys: string | undefined = undefined;
      if (intervals.up.includes(key)) intervalKeys = `${firstKeySelection.key}_${key}`
      else if (intervals.down.includes(key)) intervalKeys = `${key}_${firstKeySelection.key}`
      if (!!intervalKeys) {
        const soundFile = `partial_${intervalKeys.toLowerCase().replaceAll("#", "s")}.mp3`
        onClick = ()  => {
          console.log(`loading sound ${soundFile}`)
          // TODO display what's happening
          // TODO on second click play tempo clicks (or configure in main panel)
          const sound = new Sound(soundFile, Sound.MAIN_BUNDLE, error => {
            if (error) {
              console.log('failed to load the sound', error);
              return;
            }
            sound.play(success => {
              if (success) {
                console.log('successfully finished playing');
              } else {
                console.log('playback failed due to audio decoding errors');
              }
            })
          })
        }
      }
    }
    return {
      keyLabel: `${key}${octave}`,
      keyIndex,
      pianoViewHeight,
      sharpShift: type === "black" ? sharpShift : undefined,
      isFirstSelection,
      onClick,
    }
  }
  const keyIndices = Array(whiteKeyCount).fill(null).map((_, i) => i);
  const whiteKeyProps = keyIndices.map(getKeyProps("white"));
  const blackKeyProps = keyIndices.map(getKeyProps("black"));

  return (
    <View style={{ height: "100%", width: "100%", flexDirection: "column" }} >
      <View style={{ height: headerHeightPx, width: "100%", backgroundColor: "lightblue" }} />
      <View style={{ height: pianoHeightPx, width: "100%", position: "relative" }}>
        <Svg
          width="100%"
          height="100%"
          viewBox={`0 0 ${pianoViewWidth} ${pianoViewHeight}`}
        >
          {whiteKeyProps.map(p => p && <Key {...p} key={p.keyLabel} />)}
          {blackKeyProps.map(p => p && <Key {...p} key={p.keyLabel} />)}
        </Svg>
      </View>
    </View>
  );
};

export default Piano;
