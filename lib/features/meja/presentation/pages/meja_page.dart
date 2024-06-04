import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MejaPage extends StatefulWidget {
  const MejaPage({super.key});

  @override
  _MejaPageState createState() => _MejaPageState();
}

class _MejaPageState extends State<MejaPage> {
  List<bool> isSelected = List.generate(6, (_) => false); // Inisialisasi status isSelected untuk 6 item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Meja'),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1, // Mengatur jumlah kolom
            crossAxisSpacing: 50, // Mengatur jarak antar kolom
            mainAxisSpacing: 1, // Mengatur jarak antar baris
          ),
          itemCount: 6, // Jumlah item grid
          itemBuilder: (BuildContext context, int index) {
            int displayIndex = index + 1;
            return GestureDetector(
                onTap: () {
                setState(() {
                  // Mengatur semua isSelected ke false terlebih dahulu
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = false;
                  }
                  // Mengatur isSelected untuk item yang dipilih menjadi true
                isSelected[displayIndex - 1] = true;
                });
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 400, // Lebar kontainer
                  height: 200, // Tinggi kontainer
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Bentuk lingkaran
                    border:  Border.fromBorderSide( BorderSide(color: isSelected[displayIndex - 1] ? Colors.amber : Colors.black12, width: 4)), // Border
                    color: Colors.white, // Warna latar belakang berdasarkan isSelected
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.table_bar, // Ikona meja
                        size: 100, // Ukuran ikon
                        color: Colors.black12, // Warna ikon
                      ),
                      Text(displayIndex.toString(),style: const TextStyle(fontSize: 30,color:Colors.black45),),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: isSelected.any((selected) => selected), // Menampilkan bottom navigation bar hanya jika ada meja yang dipilih
        child: BottomAppBar(
          color: Colors.green[700],
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  int selected = isSelected.indexOf(true) + 1;
                  print(selected);
                },
                child: const Text('Pilih Meja', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
