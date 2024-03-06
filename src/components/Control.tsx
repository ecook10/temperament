import { ReactNode } from "react";
import { Button, Text, View } from "react-native"

export type ControlMode = "manual" | "guided"

const CenterContainer = ({ children }: { children: ReactNode }) =>
  <View style={{ height: "100%", flexDirection: "column", justifyContent: "center", alignItems: "center", gap: 8 }}>
    {children}
  </View>

const Header = ({ text }: { text: string }) =>
  <Text style={{ fontSize: 18, fontWeight: "800" }}>{text}</Text>

const ModeControl = ({ setMode }: { setMode: (mode?: ControlMode) => void }) => {
  return (
    <CenterContainer>
      <Header text="Select Mode" />
      <View style={{ flexDirection: "row", gap: 20 }}>
        <Button title="Manual" color="black" onPress={() => setMode("manual")} />
        <Button title="Guided" color="black" onPress={() => setMode("guided")} />
      </View>
    </CenterContainer>
  )
}

// TODO display selection w/ audio controls
const ManualControl = ({ setMode }: { setMode: (mode?: ControlMode) => void }) => {
  return (
    <CenterContainer>
      <Header text="Manual Mode" />
      <Button title="Switch to Guided" color="black" onPress={() => setMode("guided")} />
    </CenterContainer>
  )
}

// TODO step through selections w/ audio controls
const GuidedControl = ({ setMode }: { setMode: (mode?: ControlMode) => void }) => {
  return (
    <CenterContainer>
      <Header text="Step 0: Build Me" />
      <Button title="Switch to Manual" color="black" onPress={() => setMode("manual")} />
    </CenterContainer>
  )
}

const Control = ({ mode, setMode }: { mode?: ControlMode; setMode: (mode?: ControlMode) => void }) => {
  let content = <ModeControl setMode={setMode} />
  if (mode === "manual") content = <ManualControl setMode={setMode} />
  else if (mode === "guided") content = <GuidedControl setMode={setMode} />

  return (
    <View style={{ height: "100%", width: "100%", flexDirection: "row", justifyContent: "center", alignItems: "center" }}>
      {content}
    </View>
  )
}

export default Control;
