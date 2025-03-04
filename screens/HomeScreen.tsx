import React from "react";
import { View, Text, FlatList, Image, StyleSheet } from "react-native";

const events = [
  { id: "1", title: "Canlı Konser", image: "https://source.unsplash.com/400x300/?concert" },
  { id: "2", title: "Tiyatro Gösterimi", image: "https://source.unsplash.com/400x300/?theater" },
  { id: "3", title: "Festival", image: "https://source.unsplash.com/400x300/?festival" },
];

const HomeScreen = () => {
  return (
    <View style={styles.container}>
      <FlatList
        data={events}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.card}>
            <Image source={{ uri: item.image }} style={styles.image} />
            <Text style={styles.title}>{item.title}</Text>
          </View>
        )}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#fff", padding: 10 },
  card: { marginBottom: 15, borderRadius: 10, overflow: "hidden", backgroundColor: "#eee" },
  image: { width: "100%", height: 200 },
  title: { fontSize: 18, fontWeight: "bold", padding: 10 },
});

export default HomeScreen;
