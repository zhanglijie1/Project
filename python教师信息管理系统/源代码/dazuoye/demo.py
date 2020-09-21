import sys

from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox,QAbstractItemView,QApplication,QTableWidgetItem,QTableView,QHeaderView
from main import *
from main import Ui_Form
from DB import *


class MyMainWindow(QMainWindow, Ui_Form):
    def __init__(self, parent=None):
        super(MyMainWindow, self).__init__(parent)
        self.setupUi(self)

        self.searchpb.clicked.connect(self.search)  # search
        self.addpb.clicked.connect(self.add)  # add
        self.delpb.clicked.connect(self.delte)  # del
        self.revisepb.clicked.connect(self.revise)  # revise
        self.refresh.clicked.connect( self.Display)  # revise
        self.exitpb.clicked.connect(self.exit)  # revise
        self.Display()
    def search1(self,data):  # 在表格上显示
        self.tableWidget.clearContents()
        row = len(data)  # 列
        vol = 11  # 行
        self.tableWidget.setRowCount(row)

        for i in range(row):
            for j in range(vol):
                temp_data = data[i][j]  # 临时记录，不能直接插入表格
                data1 = QTableWidgetItem(str(temp_data))  # 转换后可插入表格
                self.tableWidget.setItem(i, j, data1)
    def revise(self):#修改
        row = self.tableWidget.currentRow()

        value_lst = []
        for i in range(11):
            if (len(self.tableWidget.item(row, i).text()) == 0):
                value_lst.append(None)
            else:
                value_lst.append(self.tableWidget.item(row, i).text())
        update(value_lst[1], value_lst[2], value_lst[3], value_lst[4], value_lst[5], value_lst[6],
            value_lst[7], value_lst[8], value_lst[9], value_lst[10],int(value_lst[0]))

    def add(self):
        # 获取行数
        row = self.tableWidget.rowCount()
        # 在末尾插入一空行
        self.tableWidget.insertRow(row)

    def exit(self):
        row = self.tableWidget.rowCount()

        value_lst = []
        for i in range(11):
            if(len(self.tableWidget.item(row-1,i).text())==0):
                value_lst.append(None)
            else:
                value_lst.append(self.tableWidget.item(row-1,i).text())

        add(int(value_lst[0]),value_lst[1], value_lst[2], value_lst[3], value_lst[4], value_lst[5], value_lst[6],value_lst[7],
            value_lst[8], value_lst[9],value_lst[10])




    def Display(self):
        data = searchall()
        self.search1(data)

    def search(self):#查询
        condition = self.comboBox.currentIndex()  # 获得下拉框下标
        name = self.input.text()  # 获取文本框内容
        if condition==0:#查询编号
            data=searchaid(int(name))
            # 数据的大小
            self.search1(data)
        elif condition==1:#查询姓名
            data=searchaname(name)
            # 数据的大小
            self.search1(data)
        elif condition==2:#查询薪水范围
            name=name.split('~')
            name1=int(name[0])
            name2 = int(name[1])
            data=searchsalray(name1,name2)
            self.search1(data)
        elif condition == 3:#查询参加工作时间范围
            name = name.split('~')
            name1 = int(name[0])
            name2 = int(name[1])
            data = searchdate(name1, name2)
            self.search1(data)
        elif condition == 4:#查询出生年月日范围
            name = name.split('~')
            name1 = int(name[0])
            name2 = int(name[1])
            data = searchbirth(name1, name2)
            self.search1(data)

            # 删除

    def delte(self):
        # 是否删除的对话框
        reply = QMessageBox.question(self, 'Message', 'Are you sure to delete it ?', QMessageBox.Yes | QMessageBox.No,
                                     QMessageBox.No)
        if reply == QMessageBox.Yes:
            # 当前行
            row = self.tableWidget.currentRow()
            id = self.tableWidget.item(row, 0).text()
            print(row,id)
            # 在数据库删除数据
            delte(id)

            # 删除表格
            self.tableWidget.removeRow(row)
if __name__ == "__main__":
    app = QApplication(sys.argv)
    myWin = MyMainWindow()
    myWin.show()
    sys.exit(app.exec_())
