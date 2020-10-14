class SamsungModel {
  final String name;
  final String price;
  final String sizeDesc;
  final double review;
  final double reviewCount;
  final String desc;
  final int sizeLivingRoom;
  final int sizeBedRoom;
  final int sizeBathRoom;
  final List<String> features;
  final List<String> personImages;
  final String sastodealPrice;
  final String redDokoPrice;
  final String okDamPrice;

  //final List<String> images;
  final String images;

  SamsungModel({
    this.name,
    this.price,
    this.sizeDesc,
    this.review,
    this.reviewCount,
    this.desc,
    this.sizeLivingRoom,
    this.sizeBedRoom,
    this.sizeBathRoom,
    this.features,
    this.personImages,
    this.images,
    this.sastodealPrice,
    this.redDokoPrice,
    this.okDamPrice
  });
}
List<SamsungModel>  samsungModels = [
  SamsungModel(
    name: "Samsung S20 Ultra -12GB RAM 512GB ROM",
    price: '15,9999',
    sizeDesc: "Double family house",
    review: 5,
    reviewCount: 547,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["1.1", "1.2", "1.3"],
    images: 'https://static-01.daraz.com.np/p/fcaa328013b49de0b5c3366b653fb846.jpg',
    sastodealPrice: '15,9999',
    redDokoPrice: '15,9900',
    okDamPrice: '16,0000',
  ),
  SamsungModel(
    name: "Apple iPhone 11 Pro Max (6.5)",
    price: '1,75,000',
    sizeDesc: "Double family house",
    review: 4,
    reviewCount: 223,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "MiniBar", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["2.1", "2.2", "2.3"],
    images: 'https://static-01.daraz.com.np/p/0b405f342e7a492e9b6f0dd6b2b89835.jpg',
    sastodealPrice: '1,76,000',
    redDokoPrice: '1,85,000',
    okDamPrice: '1,77,000',
  ),
  SamsungModel(
    name: "OPPO A31 4GB Ram/128GB Memory",
    price: '26,590',
    sizeDesc: "Double family house",
    review: 4,
    reviewCount: 223,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "MiniBar", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["2.1", "2.2", "2.3"],
    images: 'https://static-01.daraz.com.np/p/10c6d86ca3ff6fd42d8349a1dca6965d.jpg',
    sastodealPrice: '26,590',
    redDokoPrice: '27,590',
    okDamPrice: '26,690',
  ),
  SamsungModel(
    name: "Samsung Galaxy A21S",
    price: '23,999',
    sizeDesc: "Double family house",
    review: 4,
    reviewCount: 223,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "MiniBar", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["2.1", "2.2", "2.3"],
    images: 'https://static-01.daraz.com.np/p/5c15c4fc79cd9e3e7f6439ee20f79cd1.jpg',
    sastodealPrice: '23,999',
    redDokoPrice: '24,999',
    okDamPrice: '25,999',
  ),

  SamsungModel(
    name: "Samsung Galaxy M31 (Camera  Front 64MP+8MP+5MP+5 MP & Selfie 32MP)",
    price: '30,999',
    sizeDesc: "Double family house",
    review: 5,
    reviewCount: 547,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["1.1", "1.2", "1.3"],
    images: 'https://static-01.daraz.com.np/p/8237b39ea120e99c7d611f5a3ec40ce3.jpg',
    sastodealPrice: '30,999',
    redDokoPrice: '30,999',
    okDamPrice: '30,000',
  ),
  SamsungModel(
    name: "Samsung Galaxy A71 [8 GB RAM // 128 GB ROM]",
    price: '49,999',
    sizeDesc: "Double family house",
    review: 4,
    reviewCount: 223,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "MiniBar", "TV-LED"],
    personImages: ["1", "2"],
    //images: ["2.1", "2.2", "2.3"],
    images: 'https://static-01.daraz.com.np/p/2c66518f8dcf5d5ed3f1db929c7bbcd1.jpg',
    sastodealPrice: '49,999',
    redDokoPrice: '49,999',
    okDamPrice: '49,999',
  ),
  SamsungModel(
    name: "Samsung Galaxy M31 [6GB RAM // 128GB ROM]",
    price: '30,999',
    sizeDesc: "Double family house",
    review: 4.5,
    reviewCount: 1378,
    desc:
    "Great Location in historic Brush Park, Just minutes from Wayne State University, College for Creative Studies, Detroit Medical Center, and Henry Ford Health System. Walk to stadiums, theaters, restaurants and shopping. Centrally located between Downtown and Midtown",
    sizeLivingRoom: 80,
    sizeBedRoom: 20,
    sizeBathRoom: 12,
    features: ["Air Conditioner", "Wi-Fi", "MiniBar", "TV-LED"],
    personImages: ["1", "2"],
    // images: ["3.1", "3.2", "3.3"],
    images: 'https://static-01.daraz.com.np/p/c397062788eecd3f9ce63b7ad85fba98.jpg',
    sastodealPrice: '30,000',
    redDokoPrice: '30,999',
    okDamPrice: '30,999',
  ),

];