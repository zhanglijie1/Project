# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'untitled.ui'
#
# Created by: PyQt5 UI code generator 5.13.0
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox,QAbstractItemView,QApplication,QTableWidgetItem,QTableView,QHeaderView

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(1426, 752)
        self.tableWidget = QtWidgets.QTableWidget(Form)
        self.tableWidget.setGeometry(QtCore.QRect(20, 110, 1351, 421))
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(11)
        self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(8, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(9, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(10, item)
        self.searchpb = QtWidgets.QPushButton(Form)
        self.searchpb.setGeometry(QtCore.QRect(900, 600, 93, 28))
        self.searchpb.setObjectName("searchpb")
        self.addpb = QtWidgets.QPushButton(Form)
        self.addpb.setGeometry(QtCore.QRect(190, 680, 93, 28))
        self.addpb.setObjectName("addpb")
        self.delpb = QtWidgets.QPushButton(Form)
        self.delpb.setGeometry(QtCore.QRect(490, 680, 93, 28))
        self.delpb.setObjectName("delpb")
        self.revisepb = QtWidgets.QPushButton(Form)
        self.revisepb.setGeometry(QtCore.QRect(700, 680, 93, 28))
        self.revisepb.setObjectName("revisepb")
        self.input = QtWidgets.QLineEdit(Form)
        self.input.setGeometry(QtCore.QRect(530, 590, 311, 41))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(18)
        self.input.setFont(font)
        self.input.setText("")
        self.input.setObjectName("input")
        self.label = QtWidgets.QLabel(Form)
        self.label.setGeometry(QtCore.QRect(410, 20, 421, 51))
        font = QtGui.QFont()
        font.setFamily("Consolas")
        font.setPointSize(28)
        self.label.setFont(font)
        self.label.setTextFormat(QtCore.Qt.AutoText)
        self.label.setScaledContents(False)
        self.label.setObjectName("label")
        self.comboBox = QtWidgets.QComboBox(Form)
        self.comboBox.setGeometry(QtCore.QRect(370, 590, 151, 41))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(18)
        self.comboBox.setFont(font)
        self.comboBox.setObjectName("comboBox")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.refresh = QtWidgets.QPushButton(Form)
        self.refresh.setGeometry(QtCore.QRect(890, 680, 93, 28))
        self.refresh.setObjectName("refresh")
        self.exitpb = QtWidgets.QPushButton(Form)
        self.exitpb.setGeometry(QtCore.QRect(330, 680, 93, 28))
        self.exitpb.setObjectName("exitpb")
        self.tableWidget.setSelectionMode(QAbstractItemView.SingleSelection)  # 设置只能选中一行
        self.tableWidget.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)  # 所有列自动拉伸，充满界面

        self.tableWidget.setSelectionBehavior(QAbstractItemView.SelectRows)  # 设置只有行选中
        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("Form", "编号"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("Form", "姓名"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("Form", "身份证号"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("Form", "地址"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("Form", "电话号码"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("Form", "部门"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("Form", "薪水"))
        item = self.tableWidget.horizontalHeaderItem(7)
        item.setText(_translate("Form", "参加工作时间"))
        item = self.tableWidget.horizontalHeaderItem(8)
        item.setText(_translate("Form", "专业"))
        item = self.tableWidget.horizontalHeaderItem(9)
        item.setText(_translate("Form", "职务"))
        item = self.tableWidget.horizontalHeaderItem(10)
        item.setText(_translate("Form", "备注"))
        self.searchpb.setText(_translate("Form", "查询"))
        self.addpb.setText(_translate("Form", "添加"))
        self.delpb.setText(_translate("Form", "删除"))
        self.revisepb.setText(_translate("Form", "修改"))
        self.label.setText(_translate("Form", "教师信息管理系统"))
        self.comboBox.setItemText(0, _translate("Form", "编号:"))
        self.comboBox.setItemText(1, _translate("Form", "姓名:"))
        self.comboBox.setItemText(2, _translate("Form", "薪水范围:"))
        self.comboBox.setItemText(3, _translate("Form", "参加工时间作范围:"))
        self.comboBox.setItemText(4, _translate("Form", "出生年月日范围:"))
        self.refresh.setText(_translate("Form", "刷新"))
        self.exitpb.setText(_translate("Form", "保存"))
