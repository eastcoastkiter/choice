#include "application.h"
using namespace std;

ApplicationWindow::ApplicationWindow(int argcount, QStringList args)
	: QMainWindow( 0 )
{



QDateTime dt = QDateTime::currentDateTime();
appPath=qApp->applicationDirPath();


setWindowTitle("Choice");

//main widget
window = new QWidget(this);

        setCentralWidget(window);
        resize(240,40);
        statusBar()->showMessage( tr("Please choose an application") );

        QMenu* fileMenu = menuBar()->addMenu(tr("&File"));

        QAction* exitAction   = new QAction(tr("&Exit"), window);
            exitAction->setShortcut(Qt::CTRL + Qt::Key_X);
            connect(exitAction, SIGNAL(triggered()), qApp, SLOT(quit()));
            fileMenu->addAction(exitAction);

       QMenu* helpMenu = menuBar()->addMenu(tr("&?"));

       QAction* aboutAction   = new QAction(tr("&about"), window);
           connect(aboutAction, SIGNAL(triggered()), this, SLOT(about()));
           helpMenu->addAction(aboutAction);





        QGridLayout *mainGrid = new QGridLayout (window);

        ldescription = new QLabel("n",this);
            ldescription->setTextFormat(Qt::AutoText);
            mainGrid->addWidget(ldescription,0,0,1,3);

        mainGrid->addWidget(new QLabel("Application:", window),1,0);

        applicationBox = new QComboBox(window);
            mainGrid->addWidget(applicationBox,1,1);

        QPushButton *pb_start = new QPushButton("Start",window);
            connect(pb_start, SIGNAL(clicked()), this, SLOT(hitexecute()));
            mainGrid->addWidget(pb_start,1,2);

            openConf();

        window->show();
}

ApplicationWindow::~ApplicationWindow()
{
}


void ApplicationWindow::about()
{
    QMessageBox::information(this, "Choice", "Choice written by Rene Storm (2013)\nLicense GPL v3\n\nVersion: 1.0\n\nhttps://github.com/eastcoastkiter/\n");
}



void ApplicationWindow::openConf()
{
    //QMessageBox::information(this, "Choice", appPath);
    QFile file(appPath + "/choice.conf");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        QMessageBox::critical(this, "Choice", "Could not open choice.conf\n");
    }

    while (!file.atEnd())
    {
        QByteArray line = file.readLine();
        if (!( (line.trimmed().startsWith("#")) || (line.trimmed().isEmpty()) ))
        {
            if (line.trimmed().startsWith("title="))
            {
                    setWindowTitle(line.split('=')[1]);
            }
            else if (line.trimmed().startsWith("message="))
            {
                    statusBar()->showMessage( tr(line.split('=')[1]));
            }
            else if (line.trimmed().startsWith("description="))
            {
                ldescription->setText(QString(line).remove("description="));
            }
            else if (line.trimmed().contains("="))
            {
                    applicationBox->addItem(line.split('=')[0],line.split('=')[1]);
            }

        }


        //applicationBox->addItem();
    }
}
void ApplicationWindow::hitexecute()
{
  //  QMessageBox::information(this, "Choice", applicationBox->itemData(applicationBox->currentIndex()).toString());
    QString command=applicationBox->itemData(applicationBox->currentIndex()).toString();
    p = new QProcess(this);
       connect(p, SIGNAL(readyReadStandardError()), this, SLOT(gotStdErr()));
       connect(p, SIGNAL(started()), qApp, SLOT(quit()));
        p->startDetached(command);
        qApp->quit();
}

void ApplicationWindow::gotStdErr()
{
    QByteArray err;
        err = p->readAllStandardError();
                QMessageBox::critical(this, "Choice", err);
}

