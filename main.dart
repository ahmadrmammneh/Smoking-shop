void main() {
  List<Map<String, dynamic>> smoking = [
    {'name': 'nakhleh', 'price': '10', 'quantity': '5'},
    {'name': 'mazaya', 'price': '10', 'quantity': '5'},
    {'name': 'fakher', 'price': '10', 'quantity': '5'},
    {'name': 'hookah charcoal', 'price': '3', 'quantity': '1'},
    {'name': 'hookah', 'price': '15', 'quantity': '1'},
    {'name': 'Electronic hookah', 'price': '30', 'quantity': '1'},
    {'name': 'Barbish', 'price': '1', 'quantity': '5'},
  ];
  double grandtotal = 0;
  for (int i = 0; i < smoking.length; i++) {
    EnterYourRequest(
      name: smoking[i]["name"],
      price: int.parse(smoking[i]["price"]),
      quantity: int.parse(smoking[i]["quantity"]),
    );
  }
}

void EnterYourRequest({
  required String name,
  required int price,
  required int quantity,
}) {
  int totalprice = price * quantity;
  double tax = totalprice * .05;
  double totalpricewithtax = totalprice + tax;
  print("The Price Of $name is : \$${totalprice}");
  print("The Price Of $name With Tax :\$${totalpricewithtax} ");
  print("============================");
}
