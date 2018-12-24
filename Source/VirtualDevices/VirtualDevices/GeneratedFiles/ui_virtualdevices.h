/********************************************************************************
** Form generated from reading UI file 'virtualdevices.ui'
**
** Created by: Qt User Interface Compiler version 5.12.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VIRTUALDEVICES_H
#define UI_VIRTUALDEVICES_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_VirtualDevicesClass
{
public:
    QWidget *centralWidget;
    QPushButton *keyboard;
    QPushButton *usbTest;
    QMenuBar *menuBar;
    QMenu *menu_Exit;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *VirtualDevicesClass)
    {
        if (VirtualDevicesClass->objectName().isEmpty())
            VirtualDevicesClass->setObjectName(QString::fromUtf8("VirtualDevicesClass"));
        VirtualDevicesClass->resize(520, 289);
        centralWidget = new QWidget(VirtualDevicesClass);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        keyboard = new QPushButton(centralWidget);
        keyboard->setObjectName(QString::fromUtf8("keyboard"));
        keyboard->setGeometry(QRect(10, 10, 200, 70));
        QFont font;
        font.setFamily(QString::fromUtf8("MS Shell Dlg 2"));
        font.setPointSize(14);
        font.setBold(true);
        font.setWeight(75);
        keyboard->setFont(font);
        keyboard->setCursor(QCursor(Qt::CrossCursor));
        keyboard->setContextMenuPolicy(Qt::NoContextMenu);
        keyboard->setCheckable(true);
        usbTest = new QPushButton(centralWidget);
        usbTest->setObjectName(QString::fromUtf8("usbTest"));
        usbTest->setGeometry(QRect(302, 10, 141, 61));
        QFont font1;
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setWeight(75);
        usbTest->setFont(font1);
        usbTest->setCursor(QCursor(Qt::PointingHandCursor));
        VirtualDevicesClass->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(VirtualDevicesClass);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 520, 26));
        menu_Exit = new QMenu(menuBar);
        menu_Exit->setObjectName(QString::fromUtf8("menu_Exit"));
        VirtualDevicesClass->setMenuBar(menuBar);
        mainToolBar = new QToolBar(VirtualDevicesClass);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        VirtualDevicesClass->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(VirtualDevicesClass);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        VirtualDevicesClass->setStatusBar(statusBar);

        menuBar->addAction(menu_Exit->menuAction());

        retranslateUi(VirtualDevicesClass);

        QMetaObject::connectSlotsByName(VirtualDevicesClass);
    } // setupUi

    void retranslateUi(QMainWindow *VirtualDevicesClass)
    {
        VirtualDevicesClass->setWindowTitle(QApplication::translate("VirtualDevicesClass", "VirtualDevices", nullptr));
        keyboard->setText(QApplication::translate("VirtualDevicesClass", "KeyBoard", nullptr));
        usbTest->setText(QApplication::translate("VirtualDevicesClass", "Test USB", nullptr));
        menu_Exit->setTitle(QApplication::translate("VirtualDevicesClass", "&Exit", nullptr));
    } // retranslateUi

};

namespace Ui {
    class VirtualDevicesClass: public Ui_VirtualDevicesClass {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VIRTUALDEVICES_H
