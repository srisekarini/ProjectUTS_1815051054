class Book {
  String title,
      writer,
      price,
      image,
      description =
          'Tempat Penjualan Buku Termurah dan Terlengkap. \n List Buku: \n 1. Farewell \n 2. Friend Zone \n 3. Hope \n 4. Jangan Salahkan Cinta \n 5. LDR \n 6. Mariposa \n 7. Pergi \n 8. Takdir \n 9. Perahu Kertas \nTemukan buku pilihanmu disini, membaca buku diselasela hari merupakan kegiatan yang wajib lo, banyak ilmu yang kita dapat. \nSEMANGAT!!!! :)';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('Farewell Novel Remaja Romance', 'Nymiko',
      'Rp 27.200', 'assets/farewell.jpg', 3.5, 123),
  Book('Friend zone Novel Remaja', 'Vanesa Marcella', 'Rp 51.200',
      'assets/friendzone.jpg', 4.5, 200),
  Book('Hope Novel Remaja', 'Yustika M',
      'Rp 52.800', 'assets/hope.jpg', 5.0, 324),
  Book('mozachiko', 'Firmansyah', 'Rp 39.500',
      'assets/mozachiko.jpg', 3.0, 200),
  Book('Long Distance Realationship', 'Buku Buku Laris',
      'Rp 250.000', 'assets/ldr.jpg', 4.8, 234),
  Book('Mariposa Novel Romance Remaja', 'Luluk HF',
      'Rp 89.100', 'assets/mariposa.jpg', 4.5, 240),
  Book('Mischief', 'Dwi Lestari',
      'Rp 56.000', 'assets/mischief.jpg', 4.8, 432),
  Book('Pergi', 'Tere Liye',
      'Rp 55.000', 'assets/pergi.jpg', 4.5, 321),
  Book('Perempuan Yang Memesan Takdir', 'W.Sanavero',
      'Rp 54.000', 'assets/takdir.jpg', 3.5, 431),
];