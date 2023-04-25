import 'package:flutter/material.dart';

import 'category_card.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        //height: h / 1.35,
        width: w / 4.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Scrollbar(
              child: ListView(
            children: [
              CategoryCard(
                imageUrl:
                    "https://imgs.search.brave.com/H6wkyLSyPai9WTX94IYWrsisZr0lATTJY5PiIDEK_Yo/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9zMy5h/bWF6b25hd3MuY29t/L2ltYWdlcy5lY3dp/ZC5jb20vaW1hZ2Vz/LzMzODEwMTQ2LzE1/ODM2MjA1ODAuanBn",
                name: "Starters",
              ),
              const SizedBox(
                height: 15,
              ),
              CategoryCard(
                imageUrl:
                    "https://imgs.search.brave.com/a8R6Y1LHHTxbrXL53TrgakDwdrGncnFw0O0QFIxeroU/rs:fit:474:315:1/g:ce/aHR0cHM6Ly93d3cu/c2ltcGx5cmVjaXBl/cy5jb20vdGhtYi9f/NWhKdDBSajZSbDFr/MXM3bmNIT0o5TzBk/anM9LzIwMDB4MTMz/My9maWx0ZXJzOmZp/bGwoYXV0bywxKS9f/X29wdF9fYWJvdXRj/b21fX2NvZXVzX19y/ZXNvdXJjZXNfX2Nv/bnRlbnRfbWlncmF0/aW9uX19zaW1wbHlf/cmVjaXBlc19fdXBs/b2Fkc19fMjAxN19f/MDVfXzIwMTctMDUt/MjItSFQtUmljZS0x/Ny1iZTZkN2I1Nzdi/YmY0NGI0OTA4ZjU2/MTgzN2JiNzhmNi5q/cGc",
                name: "Rice",
              ),
              const SizedBox(
                height: 15,
              ),
              CategoryCard(
                imageUrl:
                    "https://imgs.search.brave.com/73rXx34UUIttnaw8ZFCATvDnAAjnBGUoY6XfGbFDqEU/rs:fit:1200:1200:1/g:ce/aHR0cDovL3BuZ2lt/Zy5jb20vdXBsb2Fk/cy9ub29kbGUvbm9v/ZGxlX1BORzE1LnBu/Zw",
                name: "Noodles",
              ),
              const SizedBox(
                height: 15,
              ),
              CategoryCard(
                imageUrl:
                    "https://imgs.search.brave.com/L9bVWFHWVke92qoSE5hy8JZrwzvn8QJDAiT2CJDU_lw/rs:fit:1200:1200:1/g:ce/aHR0cDovL2ltYWdl/czYuZmFucG9wLmNv/bS9pbWFnZS9waG90/b3MvMzQ3MDAwMDAv/U3RyYXdiZXJyeS1J/Y2UtQ3JlYW0taWNl/LWNyZWFtLTM0NzMy/NzQ3LTIzMDQtMzQ1/Ni5qcGc",
                name: "Ice Creams",
              ),
              const SizedBox(
                height: 15,
              ),
              CategoryCard(
                imageUrl:
                    "https://imgs.search.brave.com/FWFtI5Utsak7Cqq4boqaBkCF-FCLbvmjdPCzWF_HlQQ/rs:fit:1200:848:1/g:ce/aHR0cHM6Ly9pbWcu/dGhyZnVuLmNvbS9p/bWcvMDk0Lzc2OC9z/dW1tZXJfYmV2ZXJh/Z2VfeDIuanBn",
                name: "Beverages",
              ),
            ],
          )),
        ));
  }
}
