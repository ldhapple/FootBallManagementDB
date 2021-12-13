from tkinter import*
from tkinter import ttk
import tkinter.messagebox
import pymysql

class ConnectorDB:
    def __init__(self, root):
        self.root = root
        titlespace = ""
        self.root.title(102 * titlespace + "FootBallManager")
        self.root.geometry("776x700+300+0")
        self.root.resizable(width = False, height = False)
        
        MainFrame = Frame(self.root, bd=10, width = 770, height = 700, relief = RIDGE, bg = 'cadet blue')
        MainFrame.grid()
        
        TitleFrame = Frame(MainFrame, bd = 7, width = 770, height = 100, relief = RIDGE)
        TitleFrame.grid(row=0, column=0)
        TopFrame3 = Frame(MainFrame, bd =5, width = 770, height = 500, relief = RIDGE)
        TopFrame3.grid(row = 1, column = 0)
        
        LeftFrame = Frame(TopFrame3, bd = 5, width = 770, height = 400, padx=2, bg="cadet blue", relief = RIDGE)
        LeftFrame.pack(side=LEFT)
        LeftFrame1 = Frame(LeftFrame, bd = 5, width = 600, height = 180, padx=2, pady=9, relief = RIDGE)
        LeftFrame1.pack(side = TOP)
        
        RightFrame1 = Frame(TopFrame3, bd = 5, width = 100, height = 400, padx=2, bg="cadet blue", relief = RIDGE)
        RightFrame1.pack(side=RIGHT)
        RightFrame1a = Frame(RightFrame1, bd = 5, width = 90, height = 300, padx = 2, pady = 2, relief = RIDGE)
        RightFrame1a.pack(side=TOP)
        #-------------------------------------------------------------------------------------------------#
        
        Name = StringVar()
        Team = StringVar()
        BackNumber = StringVar()
        Country = StringVar()
        Age = StringVar()
        Position = StringVar()
        
        #-------------------------------------------------------------------------------------------------#
        
        def iExit():
            iExit = tkinter.messagebox.askyesno("FootBallManager", "정말 종료하시겠습니까?")
            if iExit > 0:
                root.destroy()
                return
            
        def Reset():
            self.entName.delete(0, END)
            self.entTeamName.set("")
            self.entBackNum.delete(0, END)
            self.entCountry.delete(0, END)
            self.entAge.delete(0, END)
            self.entPosition.delete(0, END)
            
        def addData():
            if Name.get() == " " or Country.get() == " " :
                tkinter.messagebox.showerror("FootBallManager", "정확한 내용을 입력해주세요")
            else:
                sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager") #athletes
                cur = sqlCon.cursor()
                cur.execute("insert into athletes values(%s, %s, %s, %s, %s, %s)", (
                    Team.get(),
                    BackNumber.get(),
                    Name.get(),
                    Country.get(),
                    Age.get(),
                    Position.get()))
                sqlCon.commit()
                sqlCon.close()
                tkinter.messagebox.showinfo("FootBallManager", "신규 데이터 입력이 완료되었습니다.")
                
        def DisplayData():
            sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager")
            cur = sqlCon.cursor()
            cur.execute("select * from athletes")
            result = cur.fetchall()
            if len(result) != 0:
                self.athletes_records.delete(*self.athletes_records.get_children())
                for row in result:
                    self.athletes_records.insert('', END, values = row)
                sqlCon.commit()
                sqlCon.close()
                tkinter.messagebox.showinfo("FootBallManager", "데이터 조회가 완료되었습니다.")
                
        def FootballManagerInfo(ev):
            viewInfo = self.athletes_records.focus()
            learnerData = self.athletes_records.item(viewInfo)
            row = learnerData['values']
            Team.set(row[0]),
            BackNumber.set(row[1]),
            Name.set(row[2]),
            Country.set(row[3]),
            Age.set(row[4]),
            Position.set(row[5])
            
        def update():
            sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager") #athletes
            cur = sqlCon.cursor()
            cur.execute("update athletes set bnum = %s, tname = %s, country = %s, age = %s, position = %s where name = %s", (
                BackNumber.get(),
                Team.get(),
                Country.get(),
                Age.get(),
                Position.get(),
                Name.get()))
            sqlCon.commit()
            sqlCon.close()
            tkinter.messagebox.showinfo("FootBallManager", "업데이트가 완료되었습니다.")
            
        def deleteData():
            sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager") #athletes
            cur = sqlCon.cursor()
            cur.execute("delete from athletes where name = %s", (
                Name.get()
                ))
            sqlCon.commit()
            DisplayData()
            sqlCon.close()
            tkinter.messagebox.showinfo("FootBallManager", "삭제가 완료되었습니다.")
            Reset()
        
        def searchDB():
            try:
                sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager") #athletes
                cur = sqlCon.cursor()
                cur.execute("select * from athletes where name = %s", (Name.get()))
                
                row = cur.fetchone()
                
                Team.set(row[0]),
                BackNumber.set(row[1]),
                Name.set(row[2]),
                Country.set(row[3]),
                Age.set(row[4]),
                Position.set(row[5])
                
                sqlCon.commit()
                
            except:
                tkinter.messagebox.showinfo("FootBallManager", "올바른 데이터를 찾지 못했습니다.")
                Reset()
            sqlCon.close()
            
        def DisplayContract():
            sqlCon = pymysql.connect(host = "127.0.0.1", user = "root", password ="ehgus1319@", database = "footballmanager")
            cur = sqlCon.cursor()
            cur.execute("select * from contract")
            result = cur.fetchall()
            if len(result) != 0:
                self.athletes_records.delete(*self.athletes_records.get_children())
                for row in result:
                    self.athletes_records.insert('', END, values = row)
                sqlCon.commit()
                sqlCon.close()
                tkinter.messagebox.showinfo("FootBallManager", "계약 정보 조회가 완료되었습니다.")
            
                
        #-------------------------------------------------------------------------------------------------#
        self.lbltitle = Label(TitleFrame, font = ('arial', 40, 'bold'), text = "FootBallManager", bd = 7)
        self.lbltitle.grid(row=0, column=0, padx=132)
        #-------------------------------------------------------------------------------------------------#
        self.lblTeamName = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "Team", bd = 7)
        self.lblTeamName.grid(row=0, column=0, sticky=W, padx=5)
        self.entTeamName=ttk.Combobox(LeftFrame1, font = ('arial', 12, 'bold'), width = 42, state = 'readonly', textvariable = Team)
        self.entTeamName['values'] = (' ', 'FC바르셀로나', '레알마드리드', '맨체스터시티', '첼시', '아스날', '바이에른뮌헨')
        self.entTeamName.grid(row=0, column=1, sticky=W, padx=5)
        
        self.lblBackNum = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "BackNumber", bd = 7)
        self.lblBackNum.grid(row=1, column=0, sticky=W, padx=5)
        self.entBackNum=Entry(LeftFrame1, font=('arial', 12, 'bold'), bd=5, width=44, justify='left', textvariable = BackNumber)
        self.entBackNum.grid(row=1, column=1, sticky=W, padx=5)
        
        self.lblName = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "Name", bd = 7)
        self.lblName.grid(row=2, column=0, sticky=W, padx=5)
        self.entName=Entry(LeftFrame1, font=('arial', 12, 'bold'), bd=5, width=44, justify='left', textvariable = Name)
        self.entName.grid(row=2, column=1, sticky=W, padx=5)
        
        self.lblCountry = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "Country", bd = 7)
        self.lblCountry.grid(row=3, column=0, sticky=W, padx=5)
        self.entCountry=Entry(LeftFrame1, font=('arial', 12, 'bold'), bd=5, width=44, justify='left', textvariable = Country)
        self.entCountry.grid(row=3, column=1, sticky=W, padx=5)
        
        self.lblAge = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "Age", bd = 7)
        self.lblAge.grid(row=4, column=0, sticky=W, padx=5)
        self.entAge=Entry(LeftFrame1, font=('arial', 12, 'bold'), bd=5, width=44, justify='left', textvariable = Age)
        self.entAge.grid(row=4, column=1, sticky=W, padx=5)
        
        self.lblPosition = Label(LeftFrame1, font = ('arial', 12, 'bold'), text = "Position", bd = 7)
        self.lblPosition.grid(row=5, column=0, sticky=W, padx=5)
        self.entPosition=Entry(LeftFrame1, font=('arial', 12, 'bold'), bd=5, width=44, justify='left', textvariable = Position)
        self.entPosition.grid(row=5, column=1, sticky=W, padx=5)
        #-------------------------------------------------------------------------------------------------#
        
        scroll_y = Scrollbar(LeftFrame, orient = VERTICAL)
        
        self.athletes_records = ttk.Treeview(LeftFrame, height = 12, columns = ("tname", "bnum", "name", "country", "age",
                                                                                "position"), yscrollcommand = scroll_y.set)
        scroll_y.pack(side = RIGHT, fill = Y)
        
        self.athletes_records.heading("tname", text = "tname")
        self.athletes_records.heading("bnum", text = "bnum")
        self.athletes_records.heading("name", text = "name")
        self.athletes_records.heading("country", text = "country")
        self.athletes_records.heading("age", text = "age")
        self.athletes_records.heading("position", text = "position")
        
        self.athletes_records['show'] = 'headings'
    
        self.athletes_records.column("tname", width = 100)
        self.athletes_records.column("bnum", width = 30)
        self.athletes_records.column("name", width = 100)
        self.athletes_records.column("country", width = 100)
        self.athletes_records.column("age", width = 30)
        self.athletes_records.column("position", width = 50)
        
        self.athletes_records.pack(fill = BOTH, expand=1)
        self.athletes_records.bind("<ButtonRelease-1>",FootballManagerInfo)
        
        #-------------------------------------------------------------------------------------------------#
        
        self.btnAddNew = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "선수 데이터 추가", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = addData).grid(row=0, column=0, padx=1)
        
        self.btnDisplay = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "선수조회", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = DisplayData).grid(row=1, column=0, padx=1)
        
        self.btnUpdate = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "업데이트", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = update).grid(row=2, column=0, padx=1)
        
        self.btnDelete = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "삭제", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = deleteData).grid(row=3, column=0, padx=1)
        
        self.btnSearch = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "검색", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = searchDB).grid(row=4, column=0, padx=1)
        
        self.btnReset = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "초기화", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = Reset).grid(row=5, column=0, padx=1)
        
        self.btnNewContract = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "급여", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = DisplayContract).grid(row=6, column=0, padx=1)
        
        self.btnExit = Button(RightFrame1a, font= ('arial', 16, 'bold'), text = "종료", bd=4, pady = 1, padx = 24,
                               width = 8, height=2, command = iExit).grid(row=7, column=0, padx=1)
        
        #-------------------------------------------------------------------------------------------------#
        
        

if __name__ == '__main__':
    root = Tk()
    application = ConnectorDB(root)
    root.mainloop()
