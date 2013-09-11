#ifndef APPLICATION_H
#define APPLICATION_H

#include <QAction>
#include <QApplication>
#include <QCloseEvent>
#include <QComboBox>
#include <QDateTime>
#include <QDebug>
#include <QDir>
#include <QEvent>
#include <QFile>
#include <QFileDialog>
#include <QFont>
#include <QFontDialog>
#include <QHeaderView>
#include <QLabel>
#include <QLayout>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QLineEdit>
#include <QMainWindow>
#include <QMenuBar>
#include <QMessageBox>
#include <QNetworkInterface>
#include <QNetworkAddressEntry>
#include <QObject>
#include <QPushButton>
#include <QRegExp>
#include <QStatusBar>
#include <QString>
#include <QSystemTrayIcon>
#include <QTextStream>
#include <QTreeWidget>
#include <QTreeWidgetItem>
#include <QWidget>
#include <QProcess>
#include <QClipboard>
#include <QPixmap>
#include <QColor>
#include <QBitmap>


class ApplicationWindow: public QMainWindow
{
    Q_OBJECT

public:
    ApplicationWindow(int argcount=0, QStringList args=QStringList());
    ~ApplicationWindow();


protected:

private slots:

    void about();
    void openConf();
    void hitexecute();
    void gotStdErr();
public slots:

private:
       QString appPath;
       QString logfilePath;
       QWidget *window;
       QComboBox *applicationBox;
       QProcess* p;
       QLabel* ldescription;


};
#endif
/* TODO
  if installPath not exists, then create
*/


