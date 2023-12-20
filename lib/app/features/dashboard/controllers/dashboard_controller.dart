part of dashboard;

class DashboardController extends GetxController {
  final scafoldKey = GlobalKey<ScaffoldState>();

  final dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "Lidia",
    jobDesk: "Back End Programmer",
  );

  final member = ["Auzai", "Ummy"];

  final dataTask = const TaskProgressData(totalTask: 5, totalCompleted: 1);

  final taskInProgress = [
    CardTaskData(
      label: "Tugas Smart Farming",
      jobDesk: "Analisis Sensor",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    ),
    CardTaskData(
      label: "Tugas Mobile",
      jobDesk: "Coding",
      dueDate: DateTime.now().add(const Duration(hours: 4)),
    ),
    CardTaskData(
      label: "Tugas Kelompok",
      jobDesk: "Mencari Referensi",
      dueDate: DateTime.now().add(const Duration(days: 2)),
    ),
    CardTaskData(
      label: "Menanam Jagung",
      jobDesk: "Pupuk",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    )
  ];

  final weeklyTask = [
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Smart Farming",
      jobDesk: "Cek Kondisi",
      assignTo: "Khalisa Rofilla",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Rapat Organisasi",
      jobDesk: "Memimpin",
      assignTo: "Siapa ajalah",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX ",
      jobDesk: "Design",
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Membuat Tugas Besar",
      jobDesk: "Perancangan",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "Upload Content",
        jobdesk: "Edit Video",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Smart Farming",
        jobdesk: "Kalibrasi",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Membuat Banner",
        jobdesk: "Desain",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "Smart Farming",
        jobdesk: "Kalibrasi",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Upload Content",
        jobdesk: "Edit Video",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Tugas Besar",
        jobdesk: "Presentasi",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Free Time",
        jobdesk: "Jalan-jalan",
      ),
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {}
  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTaskAssignedData data) {}
  void onPressedAssignTask(int index, ListTaskAssignedData data) {}
  void onPressedMemberTask(int index, ListTaskAssignedData data) {}
  void onPressedCalendar() {}
  void onPressedTaskGroup(int index, ListTaskDateData data) {}

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }
}
