import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

List<String> imageList = [
  'https://indonesiatatler.com/images/i/20181119113553-borobudur-2145419_960_720.jpg',
  'https://i1.wp.com/thinkingnomads.com/wp-content/uploads/2017/04/Indonesia-is-such-a-diverse-country-1.jpg?fit=1000%2C667&ssl=1&resize=1280%2C720',
  'https://lh3.googleusercontent.com/proxy/wV3YXlfrNqgT9n-5Cx3TnnrMec6K_l9ig13Dk8Ez0o1yFGdGp_LdQ8OxYJ6N3tb--fdRIGmGsSFJUP9rfRE1Xx-vPrknc08XDlBemshORiHWSm9LibF2dvUmu1c4yQPys6x0M7JXAECRaSHe',
  'https://www.planetware.com/photos-large/INA/tabanan-0.jpg',
  'https://s32020.pcdn.co//wp-content/uploads/2015/12/Prambanan-temple-at-sunset.jpg',
  'https://worldofwanderlust.com/wp-content/uploads/2019/10/Nusa-Penida-3-copy-768x1024.jpg',
  'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/07/bali-in-november_18th-oct.jpg',
];
class Example01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Material(
                  elevation: 10,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage, image: imageList[index],fit: BoxFit.cover,),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return new StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}

