import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: decoration,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0), //or 15.0
                child: Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.brown,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                name,
                style: bold,
              ),

              Card(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diet1,
                    style: bold,
                  ),
                  Text(
                    cal,
                    style: bold,
                  )
                ],
              ),
                   Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
                   Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
                   Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
                  ],
                ),
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diet2,
                    style: bold,
                  ),
                  Text(
                    cal,
                    style: bold,
                  )
                ],
              ),
             Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
             Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diet3,
                    style: bold,
                  ),
                  Text(
                    cal,
                    style: bold,
                  )
                ],
              ),
             
             Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diet4,
                    style: bold,
                  ),
                  Text(
                    cal,
                    style: bold,
                  )
                ],
              ),
              Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diet5,
                    style: bold,
                  ),
                  Text(
                    cal,
                    style: bold,
                  )
                ],
              ),
             Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
             Padding(
                padding: top,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/sliver', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      title: Text(foodname),
                      subtitle: Text(quantity),
                      trailing: Text(cal)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
