import 'dart:async';

class cake {}

class order {
  String type;
  order(this.type);
}

void main() {
  final controller = new StreamController();
  final Order = new order('banana');

  final baker =
      new StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
    if (cakeType == 'chocolate') {
      sink.add(new cake());
    } else {
      sink.addError("we don't make those type of cake");
    }
  });

  controller.sink.add(Order);

  controller.stream.map((Order) => Order.type).transform(baker).listen(
        (cake) => print('here is your cake'),

        // onError(err) => print(err);
      );
}
