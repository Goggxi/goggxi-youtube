import 'package:flutter/material.dart';

import 'coffee_model.dart';

List<Coffee> coffees = Coffee.coffeeList;

class ReorderableListViewScreen extends StatefulWidget {
  const ReorderableListViewScreen({super.key});

  @override
  State<ReorderableListViewScreen> createState() =>
      _ReorderableListViewScreenState();
}

class _ReorderableListViewScreenState extends State<ReorderableListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[800],
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.brown[800],
        centerTitle: false,
        title: const Icon(
          Icons.coffee,
          color: Colors.white,
          size: 42,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.brown[600],
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heroWidget(),
          actionWidget(),
          Expanded(
            child: Theme(
              data: ThemeData(canvasColor: Colors.brown[900]),
              child: ReorderableListView.builder(
                itemBuilder: (context, index) {
                  Coffee coffee = coffees[index];
                  return coffeeWidget(
                    coffee: coffee,
                    key: ValueKey(coffee.hashCode),
                  );
                },
                itemCount: Coffee.coffeeList.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex = newIndex - 1;
                    }
                    final element = coffees.removeAt(oldIndex);
                    coffees.insert(newIndex, element);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  heroWidget() {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Coffee in the House',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Order your favorite coffee',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  actionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
              visualDensity: VisualDensity.compact,
            ),
            child: const Text('Filter'),
          ),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
              visualDensity: VisualDensity.compact,
            ),
            child: const Text('Sort'),
          ),
        ],
      ),
    );
  }

  coffeeWidget({required Coffee coffee, required ValueKey key}) {
    return InkWell(
      key: key,
      onTap: () {},
      splashColor: Colors.brown[900],
      highlightColor: Colors.brown[900],
      child: ListTile(
        title: Text(coffee.name),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        subtitle: Text(coffee.price),
        subtitleTextStyle: TextStyle(
          color: Colors.orangeAccent[200],
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            coffee.imageUrl,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              coffee.isFavorite = !coffee.isFavorite;
            });
          },
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: coffee.isFavorite ? Colors.brown[600] : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(
              coffee.isFavorite ? Icons.favorite : Icons.favorite_border,
              color:
                  coffee.isFavorite ? Colors.redAccent[200] : Colors.brown[100],
            ),
          ),
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
