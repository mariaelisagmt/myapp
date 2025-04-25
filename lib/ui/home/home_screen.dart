import 'package:flutter/material.dart';
import 'package:myapp/data/categories_data.dart';
import 'package:myapp/ui/home/widgets/category_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          //Por padrão é vertical
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32.0,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 147)),
              Text("Boas-vindas!"),
              TextFormField(),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, //Rolagem horizontal
                child: Row(
                  spacing: 8.0,
                  children: List.generate(
                    CategoriesData.listCategories.length,
                    (index) {
                      return CategoryWidget(
                        category: CategoriesData.listCategories[index],
                      );
                    },
                  ),
                ),
              ),
              Image.asset("assets/banners/banner_promo.png"),
              Text("Bem avaliados"),
              SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}
