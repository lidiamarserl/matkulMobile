part of dashboard;

class _MainMenu extends StatelessWidget {
  const _MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, SelectionButtonData value) onSelected;

  @override
  Widget build(BuildContext context) {
    return SelectionButton(
      data: [
        SelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: "Home",
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.creditCard,
          icon: EvaIcons.creditCard,
          label: "Keuangan",
          // totalNotif: 100,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.checkmarkCircle2,
          icon: EvaIcons.checkmarkCircle,
          label: "Tugas",
          totalNotif: 20,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: "Pengaturan",
        ),
      ],
      onSelected: onSelected,
    );
  }
}
