import React, { useState } from 'react';
import { ColorValue } from 'react-native';
import Svg, { Rect } from 'react-native-svg';

const BLACK_KEY_OFFSETS = [1, 2, 4, 5, 6]
const BLACK_KEY_SHIFTS: Record<number,number> = {
  1: -10,
  2: 10,
  4: -10,
  5: 0,
  6: 10
}

const WhiteKey = ({ offset }: { offset: number }) => {
  const [color, setColor] = useState<ColorValue>("white")
  return (
    <Rect
      y={offset * 100}
      width="500"
      height="100"
      stroke="black"
      strokeWidth="1"
      fill={color}
      onPressIn={() => setColor("blue")}
      onPress={() => setColor("white")}
    />
  );
}

const BlackKey = ({ offset }: { offset: number }) => {
  const [color, setColor] = useState<ColorValue>("black")
  return (
    <Rect
      y={offset * 100 - 30 + BLACK_KEY_SHIFTS[offset%7]}
      width="300"
      height="60"
      stroke="black"
      strokeWidth="1"
      fill={color}
      onPressIn={() => setColor("blue")}
      onPress={() => setColor("black")}
    />
  )
}

export default () => (
  <Svg height="100%" width="100%" viewBox="-270 0 760 1400">
    {Array(14).fill(null).map((_, i) => <WhiteKey offset={i} key={i} />)}
    {BLACK_KEY_OFFSETS.map(x => <BlackKey offset={x} key={x} />)}
    {BLACK_KEY_OFFSETS.map(x => <BlackKey offset={x+7} key={x+7} />)}
  </Svg>
);
