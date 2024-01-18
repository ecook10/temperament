import React, { useState } from 'react';
import { View, useWindowDimensions } from 'react-native';
import Svg, { Rect, Text } from 'react-native-svg';

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

const Key = ({
  keyLabel,
  keyIndex,
  pianoViewHeight,
  sharpShift
}: {
  keyLabel: string;
  keyIndex: number;
  pianoViewHeight: number;
  sharpShift?: BlackKeyShiftType;
}) => {
  const x = (keyIndex + getPositionFactor(sharpShift)) * WHITE_KEY_RELATIVE_WIDTH;
  const width = !sharpShift ? WHITE_KEY_RELATIVE_WIDTH : BLACK_KEY_RELATIVE_WIDTH
  const height = pianoViewHeight * (!sharpShift ? 1 : BLACK_KEY_HEIGHT_FACTOR);
  console.log("RENDER Key", keyLabel, x, width, height, sharpShift)
  return (
    <>
      <Rect
        x={x}
        y={0}
        width={width}
        height={height}
        fill={!sharpShift ? "white" : "black"}
        stroke="black"
        strokeWidth="0.5"
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

  const startingKeyIndex = WhiteKeyDefs.findIndex(k => k.name === startingKeyName)
  const [startingOctave, setStartingOctave] = useState(0);

  const getKeyProps = (type: "white" | "black") => (keyIndex: number) => {
    const whiteKeyIndex = (keyIndex + startingKeyIndex) % WhiteKeyDefs.length;
    const { name, sharpShift } = WhiteKeyDefs[whiteKeyIndex];
    if (type === "black" && !sharpShift) return;
    const octave = startingOctave + Math.floor(keyIndex / WhiteKeyDefs.length);
    return {
      keyLabel: `${name}${type === "black" ? "#" : ""}${octave}`,
      keyIndex,
      pianoViewHeight,
      sharpShift: type === "black" ? sharpShift : undefined,
      key: `${type}-${keyIndex}`
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
          {whiteKeyProps.map(p => p && <Key {...p} />)}
          {blackKeyProps.map(p => p && <Key {...p} />)}
        </Svg>
      </View>
    </View>
  );
};

export default Piano;
