part of dashboard;

class _BottomNavbar extends StatefulWidget {
  const _BottomNavbar({Key? key}) : super(key: key);

  @override
  State<_BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<_BottomNavbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.home),
          icon: Icon(EvaIcons.homeOutline),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.creditCard),
          icon: Icon(EvaIcons.bellOutline),
          label: "Keuangan",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.checkmarkCircle2),
          icon: Icon(EvaIcons.checkmarkCircle),
          label: "Tugas",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.settings),
          icon: Icon(EvaIcons.settingsOutline),
          label: "Pengaturan",
        ),
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).primaryColor.withOpacity(.5),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }
}
