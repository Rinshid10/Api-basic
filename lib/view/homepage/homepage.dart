import 'package:flutter/material.dart';
import 'package:getdatas/controllers/provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    Future.microtask(() {
      Provider.of<ProviderGet>(context, listen: false).fetchItems();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<ProviderGet>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.getDetails.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text('${value.getDetails[index].id}'),
                Text(value.getDetails[index].lastname ?? 'no Data Found'),
                Text(value.getDetails[index].email ?? 'no Data Found'),
                Text(value.getDetails[index].firstname ?? 'no Data Found'),
              ],
            );
          },
        );
      },
    ));
  }
}
