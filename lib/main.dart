import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fikry Nusantara Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class FoodItem {
  final String name;
  final String category;
  final String price;
  final String imageUrl;
  final String description;

  FoodItem({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  final List<FoodItem> _foodList = [
    // Makanan (9 jenis)
    FoodItem(
      name: 'Nasi Goreng Spesial',
      category: 'Makanan',
      price: 'Rp 25.000',
      imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd',
      description: 'Nasi goreng dengan bumbu rempah pilihan, telur, dan suwiran ayam.',
    ),
    FoodItem(
      name: 'Sate Ayam Madura',
      category: 'Makanan',
      price: 'Rp 30.000',
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
      description: 'Sate ayam empuk dengan bumbu kacang kental khas Madura.',
    ),
    FoodItem(
      name: 'Seblak Bandung',
      category: 'Makanan',
      price: 'Rp 18.000',
      imageUrl: 'https://images.unsplash.com/photo-1540420773420-3366772f4999',
      description: 'Kerupuk basah pedas gurih khas Bandung dengan topping sosis dan telur.',
    ),
    FoodItem(
      name: 'Ketoprak Betawi',
      category: 'Makanan',
      price: 'Rp 20.000',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
      description: 'Lontong, bihun, tahu, dan tauge disiram bumbu kacang gurih.',
    ),
    FoodItem(
      name: 'Sate Padang',
      category: 'Makanan',
      price: 'Rp 32.000',
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
      description: 'Sate daging dengan kuah bumbu kental berwarna kuning kecokelatan.',
    ),
    FoodItem(
      name: 'Mie Ayam',
      category: 'Makanan',
      price: 'Rp 18.000',
      imageUrl: 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624',
      description: 'Mie kenyal dengan topping ayam kecap gurih dan kuah kaldu terpisah.',
    ),
    FoodItem(
      name: 'Cumi Balado',
      category: 'Makanan',
      price: 'Rp 35.000',
      imageUrl: 'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb',
      description: 'Cumi-cumi segar dimasak dengan sambal balado merah yang pedas nikmat.',
    ),
    FoodItem(
      name: 'Bebek Bakar',
      category: 'Makanan',
      price: 'Rp 40.000',
      imageUrl: 'https://images.unsplash.com/photo-1514944298352-fff69f93e88b',
      description: 'Daging bebek empuk dibakar dengan olesan bumbu manis pedas.',
    ),
    FoodItem(
      name: 'Ayam Penyet',
      category: 'Makanan',
      price: 'Rp 22.000',
      imageUrl: 'https://images.unsplash.com/photo-1626500155167-52c6f50b46e9',
      description: 'Ayam goreng digeprek bersama sambal terasi pedas mantap.',
    ),
    // Minuman (9 jenis)
    FoodItem(
      name: 'Es Teh',
      category: 'Minuman',
      price: 'Rp 5.000',
      imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc',
      description: 'Teh manis segar disajikan dingin dengan es batu.',
    ),
    FoodItem(
      name: 'Es Buah',
      category: 'Minuman',
      price: 'Rp 15.000',
      imageUrl: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd',
      description: 'Campuran buah segar dengan sirup manis, susu, dan es serut.',
    ),
    FoodItem(
      name: 'Sop Buah',
      category: 'Minuman',
      price: 'Rp 17.000',
      imageUrl: 'https://images.unsplash.com/photo-1505252585461-04db1eb84625',
      description: 'Aneka buah segar berlimpah dengan kuah susu dan es batu.',
    ),
    FoodItem(
      name: 'Jus Alpukat',
      category: 'Minuman',
      price: 'Rp 15.000',
      imageUrl: 'https://images.unsplash.com/photo-1541658016709-82535e94bc69',
      description: 'Jus alpukat kental berpadu lezat dengan susu cokelat.',
    ),
    FoodItem(
      name: 'Jus Jeruk',
      category: 'Minuman',
      price: 'Rp 12.000',
      imageUrl: 'https://images.unsplash.com/photo-1613478223719-2ab802602423',
      description: 'Jus jeruk peras murni kaya vitamin C yang menyegarkan.',
    ),
    FoodItem(
      name: 'Jus Melon',
      category: 'Minuman',
      price: 'Rp 12.000',
      imageUrl: 'https://images.unsplash.com/photo-1536256263959-770b48d82b0a',
      description: 'Jus buah melon segar pilihan yang manis dan dingin.',
    ),
    FoodItem(
      name: 'Jus Stroberi',
      category: 'Minuman',
      price: 'Rp 16.000',
      imageUrl: 'https://images.unsplash.com/photo-1610970881699-44a5587cabec',
      description: 'Jus stroberi segar dengan sensasi rasa manis dan sedikit asam.',
    ),
    FoodItem(
      name: 'Cappucino Cincau',
      category: 'Minuman',
      price: 'Rp 14.000',
      imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d',
      description: 'Perpaduan kopi cappucino dingin dengan kenyalnya potongan cincau hitam.',
    ),
    FoodItem(
      name: 'Air Putih',
      category: 'Minuman',
      price: 'Rp 4.000',
      imageUrl: 'https://images.unsplash.com/photo-1548839140-29a749e1cf4d',
      description: 'Air mineral segar untuk melepas dahaga.',
    ),
  ];

  String _selectedCategory = 'Semua';
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    List<FoodItem> filteredList = _foodList.where((item) {
      final matchesCategory = _selectedCategory == 'Semua' || item.category == _selectedCategory;
      final matchesSearch = item.name.toLowerCase().contains(_searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fikry Nusantara Indonesia', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange[800],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.orange[800],
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Cari makanan atau minuman...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ['Semua', 'Makanan', 'Minuman'].map((category) {
                    bool isSelected = _selectedCategory == category;
                    return ChoiceChip(
                      label: Text(category),
                      selected: isSelected,
                      selectedColor: Colors.white,
                      backgroundColor: Colors.orange[700],
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.orange[800] : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredList.isEmpty
                ? const Center(child: Text('Menu tidak ditemukan', style: TextStyle(fontSize: 16)))
                : ListView.builder(
                    padding: const EdgeInsets.all(12.0),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final item = filteredList[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        elevation: 3,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.horizontal(left: Radius.circular(15.0)),
                              child: Stack(
                                children: [
                                  Image.network(
                                    item.imageUrl,
                                    width: 110,
                                    height: 110,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) => Container(
                                      width: 110,
                                      height: 110,
                                      color: Colors.grey[300],
                                      child: const Icon(Icons.broken_image),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    left: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        item.category,
                                        style: const TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      item.description,
                                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      item.price,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}