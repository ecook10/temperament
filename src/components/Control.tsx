import { ReactNode, useContext } from "react";
import { Button, Text, View } from "react-native";
import Icon from "react-native-vector-icons/MaterialCommunityIcons";
import { ControlMode, ControlStoreContext } from "../stores/control.store";
import { observer } from "mobx-react-lite";

const CenterContainer = ({ children }: { children: ReactNode }) => (
  <View
    style={{
      width: "100%",
      height: "100%",
      flexDirection: "column",
      justifyContent: "center",
      alignItems: "center",
      gap: 8,
    }}
  >
    {children}
  </View>
);

const Header = ({ text }: { text: string }) => (
  <Text style={{ fontSize: 18, fontWeight: "800" }}>{text}</Text>
);

const ButtonContainer = ({
  position,
  children,
}: {
  position: "left" | "right";
  children: ReactNode | ReactNode[];
}) => {
  return (
    <View
      style={{
        position: "absolute",
        top: 0,
        [position]: 0,
        margin: "auto",
        padding: 15,
        flexDirection: "row",
        gap: 10,
      }}
    >
      {children}
    </View>
  );
};

const IconButton = ({
  icon,
  onClick,
}: {
  icon: string;
  onClick: () => void;
}) => {
  return (
    <View
      onTouchEnd={onClick}
      style={{ backgroundColor: "black", borderRadius: 6, padding: 5 }}
    >
      <Icon name={icon} size={20} color="white" />
    </View>
  );
};

const NavigationButtons = ({ nextMode }: { nextMode: ControlMode }) => {
  const { setMode } = useContext(ControlStoreContext);
  return (
    <ButtonContainer position="left">
      <IconButton icon="swap-horizontal" onClick={() => setMode(nextMode)} />
    </ButtonContainer>
  );
};

const _AudioButtons = () => {
  const { playPartialAudio, playTempoAudio } = useContext(ControlStoreContext);
  return (
    <ButtonContainer position="right">
      <IconButton icon="metronome" onClick={playTempoAudio} />
      <IconButton icon="sine-wave" onClick={playPartialAudio} />
    </ButtonContainer>
  );
};
const AudioButtons = observer(_AudioButtons);

const _ModeControl = () => {
  const controlStore = useContext(ControlStoreContext);
  return (
    <CenterContainer>
      <Header text="Select Mode" />
      <View style={{ flexDirection: "row", gap: 20 }}>
        <Button
          title="Manual"
          color="black"
          onPress={() => controlStore.setMode("manual")}
        />
        <Button
          title="Guided"
          color="black"
          onPress={() => controlStore.setMode("guided")}
        />
      </View>
    </CenterContainer>
  );
};
const ModeControl = observer(_ModeControl);

const ManualControl = () => {
  return (
    <CenterContainer>
      <Header text="Manual Mode" />
      <NavigationButtons nextMode="guided" />
      <AudioButtons />
    </CenterContainer>
  );
};

// TODO step through selections w/ audio controls
const _GuidedControl = () => {
  // const controlStore = useContext(ControlStoreContext);
  return (
    <CenterContainer>
      <Header text="Step 0: Build Me" />
      <NavigationButtons nextMode="manual" />
      <AudioButtons />
    </CenterContainer>
  );
};
const GuidedControl = observer(_GuidedControl);

const Control = () => {
  const controlStore = useContext(ControlStoreContext);
  const { mode } = controlStore;

  if (mode === "manual") return <ManualControl />;
  if (mode === "guided") return <GuidedControl />;
  return <ModeControl />;
  // return (
  //   <View
  //     style={{
  //       height: "100%",
  //       width: "100%",
  //       flexDirection: "row",
  //       justifyContent: "center",
  //       alignItems: "center",
  //     }}
  //   >
  //     {content}
  //   </View>
  // );
};

export default observer(Control);
