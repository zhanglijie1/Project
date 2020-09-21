import pymysql

def add(a,b,c,d,e,f,g,h,i,j,k):#增
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')

    cursor = db.cursor()
    sql = "INSERT into teacher values(%d,'%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')" % (a, b, c, d, e, f, g, h, i, j, k)
    print(sql)
    try:

        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()

        # 关闭数据库连接
        cursor.close()
        db.close()
    except:

        print("添加错误")



def update(a,b,c,d,e,f,g,h,i,j,k):#改
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()

    try:
        sql = "UPDATE teacher SET name ='%s',cardid=%s,address='%s',telephone='%s',department='%s',salary=%s,date=%s,profession='%s',job='%s',remarks='%s' where id = %d" % (
a, b, c, d, e, f, g, h, i, j, k)
        print(sql)
        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标
        cursor.close()
        db.close()

    except:
        print("更新错误")


def delte(id):#删
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "delete from teacher where id='" + id + "'"
    try:
        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标
        cursor.close()
        # 关闭数据库连接
        db.close()

    except:
        print("删除错误")


def searchall():#查询所有
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher"
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("删除错误")
        return 0

def searchaid(id):#通过id查询
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher where id=%d" % (id)
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标

        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("查找错误")
        return 0


def searchaname(name):#通过姓名查询
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher where name='%s'" % (name)
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标

        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("查找错误")
        return 0

def searchsalray(salarymin,salarymax):#通过薪水范围
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher where salary BETWEEN %d and %d" % (salarymin, salarymax)
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标

        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("查找错误")
        return 0

def searchbirth(birthmin,birthmax):#通过出生年月日范围
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher where SUBSTRING(cardid,7,8) BETWEEN %d and %d" % (birthmin, birthmax)
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标

        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("查找错误")
        return 0


def searchdate(datemin,datemax):#通过参加工作时间范围
    db = pymysql.connect(host='localhost', user='root', passwd='199126', db='python', port=3306, charset='utf8')
    cursor = db.cursor()
    sql = "select * from teacher where date BETWEEN %d and %d" % (datemin, datemax)
    try:


        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
        # 关闭游标

        rows = cursor.fetchall()
        cursor.close()
        # 关闭数据库连接
        db.close()
        return rows
    except:
        print("查找错误")
        return 0