import 'package:blog_app/features/cashier/data/dto/cashier_dto.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MejaPage extends StatefulWidget {
  const MejaPage({super.key});

  @override
  _MejaPageState createState() => _MejaPageState();
}

class _MejaPageState extends State<MejaPage> {
  List<bool> isSelected = [];
  List<bool> isSelectedTransaksi = []; // Inisialisasi status isSelected untuk 6 item
  String pelangganName = '';
 @override
  void initState() {
    super.initState();
    isSelected = List.generate(6, (_) => false); // Inisialisasi isSelected dengan 6 item false
  }
  void _showInputDialog(int mejaIndex) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Input Nama Pelanggan'),
        content: TextField(
          onChanged: (value) {
            setState(() {
                updatePelangganName(value.trim()); // Update nilai pelangganName saat input berubah
              });
          },
          decoration: const InputDecoration(
            hintText: 'Masukkan nama pelanggan',
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Batal'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Simpan'),
            onPressed: () {
        
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

  void updatePelangganName(String newName) {
    setState(() {
      pelangganName = newName;
    });
  }

  @override

 @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransaksiBloc, TransaksiState>(
      builder: (context, transaksiState) {
        // Cek apakah transaksiState adalah TransaksiFetchedLocal
        if (transaksiState is TransaksiLocalDisplaySuccess) {
          // Reset isSelected berdasarkan data dari transaksiState
          isSelectedTransaksi = List.generate(6, (_) => false); // Reset isSelected dulu

          // Set isSelected berdasarkan transaksi yang ada
          for (final transaksi in transaksiState.transaksi) {
            if (transaksi.meja != null) {
              isSelectedTransaksi[transaksi.meja! - 1] = true;
            }
          }
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Informasi Transaksi'),
            backgroundColor: Colors.green[700],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1, // Aspect ratio of each grid item
                      crossAxisSpacing: 50, // Spacing between columns
                      mainAxisSpacing: 1, // Spacing between rows
                    ),
                    itemCount: 6, // Total number of grid items
                    itemBuilder: (BuildContext context, int index) {
                      int displayIndex = index + 1;
                      return GestureDetector(
                        onLongPress: () {
                          _showInputDialog(displayIndex - 1);
                        },
                        onTap: () {
                          setState(() {
                            // Deselect all items first
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = false;
                            }
                          
                            // Select the tapped item
                            isSelected[displayIndex - 1] = true;

                            print(isSelected);
                          });
                        },
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            width: 400, // Width of each grid item
                            height: 200, // Height of each grid item
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: isSelected[displayIndex - 1]
                                      ? Colors.amber // Selected item color
                                      : Colors.black12, // Default item color
                                  width: 4, // Border width
                                ),
                              ),
                              color: Colors.white, // Background color based on selection
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.table_bar, // Table icon
                                  size: 100, // Icon size
                                  color: Colors.black12, // Icon color
                                ),
                                Text(
                                  isSelectedTransaksi[displayIndex - 1]
                                      ? transaksiState is TransaksiLocalDisplaySuccess
                                          ? transaksiState.transaksi
                                              .firstWhere((transaksi) => transaksi.meja == displayIndex,
                                                  orElse: () => TransaksiLocal(
                                                        meja: displayIndex,
                                                        status: 'open',
                                                        deskripsi: '',
                                                        total: 0,
                                                        namaPelanggan: '',
                                                        createdAt: DateTime.now(),
                                                        updatedAt: DateTime.now(),
                                                        cashier:  List<CashierItem>.empty(),
                                                      ))
                                              .namaPelanggan ?? '' // Show pelangganName if selected
                                          : pelangganName // Show pelangganName if selected
                                      : '',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  displayIndex.toString(), // Display index number
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Visibility(
            visible: isSelected.any(
                (selected) => selected), // Show bottom navigation bar only if any item is selected
            child: BottomAppBar(
              color: Colors.green[700],
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      int selected = isSelected.indexOf(true) + 1;

                      context.read<TransaksiBloc>().add(TransaksiUpdate(
                            transaksi: SingleTransaksi(
                              meja: selected,
                              status: 'open',
                              deskripsi: '',
                              total: 0,
                              namaPelanggan: pelangganName,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                            ),
                          ));
                      print(selected);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Konfirmasi',
                        style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


