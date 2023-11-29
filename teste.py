from customtkinter import CTk, CTkLabel, CTkImage, CTkButton, CTkEntry, CTkFont, CTkFrame, set_appearance_mode, set_default_color_theme, CTkToplevel, CTkRadioButton, StringVar
from CTkMessagebox import CTkMessagebox
from tkinter import ttk
from datetime import date, datetime, timedelta
from PIL import Image
import mysql.connector
from mysql.connector import Error
import subprocess

#GAMBIARRAS
valor = None #PEGAR VALOR DE PESQUISA
b = 0 #INTERRUPTOR


class CadastroAlunos(CTkToplevel):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)   
        self.geometry("400x300")
        self.title("Cadastrar Alunos")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 500) // 2
        y = (altura - 400) // 2
        self.geometry(f"500x400+{x}+{y}")
        self.resizable(0,0)
        FonteN = CTkFont(weight="bold", size=14)
        frame = CTkFrame(self)
        FrameS = CTkFrame(frame,fg_color="transparent")
        FrameT = CTkFrame(frame,fg_color="transparent")
        FrameC = CTkFrame(frame,fg_color="transparent")
        
        self.nome_label = CTkLabel(self, text="Nome:")
        self.nome_label.pack()
        self.nome = CTkEntry(self)
        self.nome.pack()
        
        self.matricula_label = CTkLabel(self, text="Matrícula:")
        self.matricula_label.pack()
        self.matricula = CTkEntry(self)
        self.matricula.pack(pady=5)

        self.value_serie = StringVar()
        self.value_serie.set("1° Ano")

        self.serie_label = CTkLabel(FrameS, text="Série:")
        self.serie_label.pack()
        self.p = CTkRadioButton(FrameS, text="1° Ano", variable=self.value_serie, value="1° Ano")
        self.p.pack()
        self.s = CTkRadioButton(FrameS, text="2° Ano", variable=self.value_serie, value="2° Ano")
        self.s.pack()
        self.t = CTkRadioButton(FrameS, text="3° Ano", variable=self.value_serie, value="3° Ano")
        self.t.pack()

        self.value_Turma = StringVar()
        self.value_Turma.set("A")

        self.serie_label = CTkLabel(FrameT, text="Turma:")
        self.serie_label.pack()
        self.A = CTkRadioButton(FrameT, text="A", variable=self.value_Turma, value="A")
        self.A.pack()
        self.B = CTkRadioButton(FrameT, text="B", variable=self.value_Turma, value="B")
        self.B.pack()


        self.value_var = StringVar()
        self.value_var.set("Desenvolvimento de Sistemas")
        
        CTkLabel(FrameC,text="Curso:").pack()
        self.Ds = CTkRadioButton(FrameC, text="Desenvolvimento de Sistemas", variable=self.value_var, value="Desenvolvimento de Sistemas")
        self.Ds.pack()
        self.Log = CTkRadioButton(FrameC, text="Logística", variable=self.value_var, value="Logística")
        self.Log.pack()
        FrameS.grid(row=0,column=0,padx=3)
        FrameC.grid(row=0,column=1,padx=3)
        FrameT.grid(row=0,column=2,padx=3)
        frame.pack()
        CTkButton(self,text="Cadastrar").pack(pady=50)

class CadastroLivros(CTkToplevel):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)  
        

        self.geometry("400x300")
        self.title("Cadastrar Livros")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 500) // 2
        y = (altura - 400) // 2
        self.resizable(0,0)
        self.geometry(f"500x400+{x}+{y}")
        FonteN = CTkFont(weight="bold", size=14)
        frame = CTkFrame(self,fg_color="transparent")
        FrameT = CTkFrame(frame,fg_color="transparent")
        FrameC = CTkFrame(frame,fg_color="transparent")
        FrameL = CTkFrame(frame,fg_color="transparent")
        
        self.titulo = CTkLabel(FrameT, text="Título do Livro:") 
        self.titulo.grid(row = 0, column = 0, sticky='w', padx=(0, 10))
        self.entry_titulo = CTkEntry(FrameT, width=300)
        self.entry_titulo.grid(row = 1, column = 0, sticky='w', padx=(0, 15))
       
        self.autores = CTkLabel(FrameT, text="Autores:")
        self.autores.grid(row = 2, column = 0, sticky='w')
        self.entry_autores = CTkEntry(FrameT, width=300)
        self.entry_autores.grid(row = 3, column = 0, sticky='w')
    
        self.isbn = CTkLabel(FrameT, text="ISBN:")
        self.isbn.grid(row = 0, column = 1, sticky='w')
        self.entry_isbn = CTkEntry(FrameT)
        self.entry_isbn.grid(row = 1, column = 1, sticky='w')

        self.quantidade = CTkLabel(FrameT, text="Quantidade:")
        self.quantidade.grid(row = 2, column = 1, sticky='w')
        self.entry_quantidade = CTkEntry(FrameT)
        self.entry_quantidade.grid(row = 3, column = 1, sticky='w')

        self.genero = CTkLabel(FrameC, text="CDD:")
        self.genero.grid(row = 0, column = 0, sticky='w', padx=(0, 10))
        self.entry_genero = CTkEntry(FrameC, width=300)
        self.entry_genero.grid(row = 1, column = 0, sticky='w', padx=(0, 15))

        self.labelv = CTkLabel(FrameL, text="")
        self.labelv.grid(row = 0, column = 1, sticky='w')
        self.labelv.grid(row = 1, column = 1, sticky='w')
        FrameT.pack()
        FrameC.pack()
        FrameL.pack()
        frame.pack()
        CTkButton(self,text="Cadastrar", command=self.inserir).pack(pady=50)
    def inserir(self):
        con = mysql.connector.connect(user='root', database='bibliotecaeteavs', password='', host='localhost')
        cursor = con.cursor()
        c = self.entry_isbn.get()
        t = self.entry_titulo.get()
        a = self.entry_autores.get()
        cdd = self.entry_genero.get()
        q = self.entry_quantidade.get()
        try:
            cursor.execute("INSERT INTO livro (codigo, titulo, autor, cdd, qtd) VALUES (%s, %s, %s, %s, %s)",
                   (int(c), t, a, int(cdd), int(q)))
            con.commit()
            print("Inserção bem-sucedida!")
        except mysql.connector.Error as err:
            print(f"Erro: {err}")
        finally:
            cursor.close()
            con.close()

class EmprestimosLivros(CTkToplevel):
    def __init__(self):
        super().__init__()
        global b
        global valor   
        self.geometry("800x600")
        self.title("Empréstimos de Livros")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 800) // 2
        y = (altura - 600) // 2
        self.geometry(f"800x600+{x}+{y}")
        self.resizable(0,0)
        data = date.today()
        ano = data.year
        mes = data.month
        dia = data.day

        frame = CTkFrame(self,fg_color="transparent")
        FrameE = CTkFrame(frame,fg_color="transparent")
        FrameT = CTkFrame(frame,fg_color="transparent")
        FrameB = CTkFrame(frame,fg_color="transparent")

        self.aluno = CTkLabel(FrameE, text="Nome do Aluno")
        self.aluno.grid(row = 0, column = 0, sticky='w', padx=(0, 10))
        self.entry_aluno = CTkEntry(FrameE, width=300)
        self.entry_aluno.grid(row = 1, column = 0, sticky='w', padx=(0, 15))

        self.DataDev = CTkLabel(FrameE, text="Dias para Devolução:")
        self.DataDev.grid(row = 0, column = 1, sticky='w')

        self.entry_DataDev = CTkEntry(FrameE)
        self.entry_DataDev.grid(row = 1, column = 1, sticky='w')
        self.entry_DataDev.delete(0, "end")
        self.entry_DataDev.insert(0, "15")
        colunas = ('id', 'ISBN','Titulo', 'Autor',  'CDD')
        self.treeT = ttk.Treeview(FrameT, columns=colunas, show='headings')
        self.treeT.heading('id', text='ID', anchor='w')
        self.treeT.column('id', width=100)
        self.treeT.heading('Titulo', text='Titulo', anchor='w')
        self.treeT.column('Titulo', width=200)
        self.treeT.heading('Autor', text='Autor', anchor='w')
        self.treeT.column('Autor', width=160)
        self.treeT.heading('ISBN', text='ISBN', anchor='w')
        self.treeT.column('ISBN', width=100)
        self.treeT.heading('CDD', text='CDD', anchor='w')
        self.treeT.column('CDD', width=50)
        scrollbar = ttk.Scrollbar(FrameT, orient="vertical", command=self.treeT.yview)
        self.treeT.configure(yscrollcommand=scrollbar.set)
        scrollbar.pack(side="right", fill="y")
        self.treeT.pack(pady = 10)
        frame.pack()
        FrameE.pack()
        FrameT.pack()
        FrameB.pack()

        CTkButton(FrameB,text="Adicionar Livro", command=self.InitPesquisarLivros).grid(row = 0, column = 0, padx = 3)
        CTkButton(FrameB,text="Excluir Livro").grid(row = 0, column = 1, padx = 3)
        CTkButton(FrameB,text="Pesquisar Aluno").grid(row = 0, column = 2, padx = 3)
        CTkButton(FrameB,text="Emprestar").grid(row = 0, column = 3, padx = 3)

        self.entry_DataDev.bind("<FocusOut>", self.atualizar_data)

        self.DataEmi = CTkLabel(self, text=f"Data de Emissão: {dia}/{mes}/{ano}")
        self.DataEmi.pack(side='bottom', anchor='se')
        self.DataDevo = CTkLabel(self, text= f"Data de Devolução: {dia}/{mes}/{ano}")
        self.DataDevo.pack(side='bottom', anchor='se')
        self.atualizar_data()
        self.PesquisarLivro = None

        self.bind("<FocusIn>", self.pegarvalor)

    def InitPesquisarLivros(self):

        if self.PesquisarLivro is None or not self.PesquisarLivro.winfo_exists():
            self.PesquisarLivro = PesquisarLivro()
            self.PesquisarLivro.grab_set()
        else:
            self.PesquisarLivro.grab_set()
        



    def pegarvalor(self, record):
        global valor
        global b
        if b == 1:
            self.treeT.insert("", "end", values=(valor))
            b = 0
        else:
            pass

    def atualizar_data(self, event=None):
        data = date.today()
        if self.entry_DataDev.get() != "":
            time = timedelta(int(self.entry_DataDev.get()))
            data = data + time
            a = data.year
            m = data.month
            d = data.day
            self.DataDevo.configure(text= f"Data de Devolução: {d}/{m}/{a}")
            
class DisponibilidadeLivros(CTkToplevel):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        style = ttk.Style(self)
        style.configure("Treeview.Heading", font=('Arial', 10, 'bold'))
        self.geometry("800x600")
        self.title("Cadastrar Alunos")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 800) // 2
        y = (altura - 600) // 2
        self.geometry(f"800x600+{x}+{y}")
        FrameP = CTkFrame(self, fg_color="transparent")
        FrameT = CTkFrame(self, fg_color="transparent")
        self.pesquisa = CTkEntry(FrameP, width=600, fg_color= "white", text_color= "black")
        self.pesquisa.grid(row = 0, column = 0, pady = 10)
        colunas = ('id', 'ISBN','Titulo', 'Autor',  'CDD','Quantidade')
        self.tree = ttk.Treeview(FrameT, columns=colunas, show='headings')
        self.tree.heading('id', text='ID', anchor='w')
        self.tree.column('id', width=160)
        self.tree.heading('Titulo', text='Titulo', anchor='w')
        self.tree.column('Titulo', width=160)
        self.tree.heading('Autor', text='Autor', anchor='w')
        self.tree.column('Autor', width=100)
        self.tree.heading('ISBN', text='ISBN', anchor='w')
        self.tree.column('ISBN', width=100)
        self.tree.heading('Quantidade', text='Quantidade', anchor='w')
        self.tree.column('Quantidade', width=100)
        self.tree.heading('CDD', text='CDD', anchor='w')
        self.tree.column('CDD', width=100)
        scrollbar = ttk.Scrollbar(FrameT, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=scrollbar.set)

        lupa = CTkImage(light_image=Image.open("img\lupa.png"), size=(20,20))

        self.BttnPesquisa = CTkButton(FrameP, image=lupa, text = "", width = 20, command= self.executar_busca)
        self.BttnPesquisa.grid(row = 0, column = 1)

        scrollbar.pack(side="right", fill="y")
        self.tree.pack()
        self.tree.bind('<<TreeviewSelect>>', self.item_selecionado)
        FrameP.pack()
        FrameT.pack()
        
        

    def item_selecionado(self, event=None):
        for dadoS in self.tree.selection():
            item = self.tree.item(dadoS)
            record = item['values']
            print(record)

    def limpar_tabela(self):
        for dado in self.tree.get_children():
            self.tree.delete(dado)
    def executar_busca(self):        
        con = mysql.connector.connect(user='root', database='bibliotecaeteavs', password='', host='localhost')
        cursor = con.cursor()
        
        title = self.pesquisa.get()
        self.limpar_tabela()
        try:
            if title == "":
                cursor.execute("SELECT * FROM livro")
            else:
                cursor.execute("SELECT * FROM livro WHERE titulo = %s", (title,))
            
            resultados = cursor.fetchall()

            for resultado in resultados:
                # Certifique-se de ajustar os índices de acordo com sua consulta SQL
                self.tree.insert("", "end", values=(resultado[0], resultado[1], resultado[2], resultado[3], resultado[4], resultado[5]))

        except mysql.connector.Error as err:
            print(f"Erro: {err}")

        finally:
            cursor.close()
            con.close()

class PesquisarLivro(CTkToplevel):
    def __init__(self):
        super().__init__()
        style = ttk.Style(self)
        style.configure("Treeview.Heading", font=('Arial', 10, 'bold'))
        self.geometry("800x600")
        self.title("Cadastrar Alunos")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 800) // 2
        y = (altura - 600) // 2
        self.geometry(f"800x600+{x}+{y}")
        FrameP = CTkFrame(self, fg_color="transparent")
        FrameT = CTkFrame(self, fg_color="transparent")
        self.pesquisa = CTkEntry(FrameP, width=600, fg_color= "white", text_color= "black")
        self.pesquisa.grid(row = 0, column = 0, pady = 10)
        colunas = ('id', 'ISBN','Titulo', 'Autor',  'CDD','Quantidade')
        self.tree = ttk.Treeview(FrameT, columns=colunas, show='headings')
        self.tree.heading('id', text='ID', anchor='w')
        self.tree.column('id', width=100)
        self.tree.heading('Titulo', text='Titulo', anchor='w')
        self.tree.column('Titulo', width=200)
        self.tree.heading('Autor', text='Autor', anchor='w')
        self.tree.column('Autor', width=160)
        self.tree.heading('ISBN', text='ISBN', anchor='w')
        self.tree.column('ISBN', width=100)
        self.tree.heading('Quantidade', text='Quantidade', anchor='w')
        self.tree.column('Quantidade', width=100)
        self.tree.heading('CDD', text='CDD', anchor='w')
        self.tree.column('CDD', width=50)
        scrollbar = ttk.Scrollbar(FrameT, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=scrollbar.set)

        lupa = CTkImage(light_image=Image.open("img\lupa.png"), size=(20,20))

        self.BttnPesquisa = CTkButton(FrameP, image=lupa, text = "", width = 20, command= self.executar_busca)
        self.BttnPesquisa.grid(row = 0, column = 1)

        scrollbar.pack(side="right", fill="y")
        self.tree.pack()
        self.tree.bind("<Double-1>", self.item_selecionado)
        FrameP.pack()
        FrameT.pack()
        
        

    def item_selecionado(self, event=None):
        for dadoS in self.tree.selection():
            global b
            global valor
            item = self.tree.item(dadoS)
            record = item['values']
            valor=(record[0],record[1],record[2],record[3],record[5])
            print(record)
            self.destroy()
            b = 1

    def limpar_tabela(self):
        for dado in self.tree.get_children():
            self.tree.delete(dado)
    def executar_busca(self):        
        con = mysql.connector.connect(user='root', database='bibliotecaeteavs', password='', host='localhost')
        cursor = con.cursor()
        
        title = self.pesquisa.get()
        self.limpar_tabela()
        try:
            if title == "":
                cursor.execute("SELECT * FROM livro")
            else:
                cursor.execute("SELECT * FROM livro WHERE titulo = %s", (title,))
            
            resultados = cursor.fetchall()

            for resultado in resultados:
                # Certifique-se de ajustar os índices de acordo com sua consulta SQL
                self.tree.insert("", "end", values=(resultado[0], resultado[1], resultado[2], resultado[3], resultado[4], resultado[5]))

        except mysql.connector.Error as err:
            print(f"Erro: {err}")

        finally:
            cursor.close()
            con.close()        

class Home(CTk):
    def __init__(self):
        super().__init__()
        set_appearance_mode("dark") 
        set_default_color_theme("blue")
        FonteN = CTkFont(weight="bold", size=14)
        self.FrameCenter = CTkFrame(self)
        self.FrameLower = CTkFrame(self,fg_color="transparent")
        CTkLabel(self, text="Bem-vindo à tela inicial!", font=FonteN).grid()
        CTkButton(self.FrameCenter, text="Cadastro de Alunos",command=self.InitCadastroAlunos).grid(row=0, column= 0,pady=8, padx=8)
        CTkButton(self.FrameCenter, text="Cadastro de Livros",command=self.InitCadastroLivros).grid(row=0, column= 1,pady=8, padx=8)
        CTkButton(self.FrameCenter, text="Empréstimos de Livros",command=self.InitEmprestimoLivros).grid(row=1, column= 0,pady=8, padx=8)
        CTkButton(self.FrameCenter, text="Disponibilidade de Livros", command=self.InitDisponibilidade).grid(row=1, column= 1,pady=8, padx=8)
        CTkLabel(self.FrameLower, text="").grid(row = 0, column = 0,padx=290)

        CTkButton(self.FrameLower, text="Sair", font=FonteN, command=self.destroy).grid(row = 3, column = 5)
        self.FrameCenter.grid(pady=200)
        self.FrameLower.grid()
        self.CadastroAlunos = None
        self.CadastroLivros = None
        self.EmprestimosLivros = None
        self.DisponibilidadeLivros = None
    def InitCadastroAlunos(self):
        if self.CadastroAlunos is None or not self.CadastroAlunos.winfo_exists():
            self.CadastroAlunos = CadastroAlunos()
            self.CadastroAlunos.grab_set()
        else:
            self.CadastroAlunos.grab_set()
    def InitCadastroLivros(self):
        if self.CadastroLivros is None or not self.CadastroLivros.winfo_exists():
            self.CadastroLivros = CadastroLivros()
            self.CadastroLivros.grab_set()
        else:
            self.CadastroLivros.grab_set()        
    def InitEmprestimoLivros(self):
        if self.EmprestimosLivros is None or not self.EmprestimosLivros.winfo_exists():
            self.EmprestimosLivros = EmprestimosLivros()
            self.EmprestimosLivros.grab_set()
        else:
            self.EmprestimosLivros.grab_set()
    def InitDisponibilidade(self):
        if self.DisponibilidadeLivros is None or not self.DisponibilidadeLivros.winfo_exists():
            self.DisponibilidadeLivros = DisponibilidadeLivros()
            self.DisponibilidadeLivros.grab_set()
        else:
            self.DisponibilidadeLivros.grab_set()         

def initHome():
    home = Home()
    caminho_icone = "img\icone.ico"
    home.iconbitmap(caminho_icone)
    largura = home.winfo_screenwidth()
    altura = home.winfo_screenheight()
    x = (largura - 750) // 2
    y = (altura - 600) // 2
    home.geometry(f"750x600+{x}+{y}")
    home.title("")
    home.resizable(0,0)
    home
    home.mainloop()   

#Iniciar o APP
if __name__ == "__main__":
    home = Home()
    caminho_icone = "img\icone.ico"
    home.iconbitmap(caminho_icone)
    largura = home.winfo_screenwidth()
    altura = home.winfo_screenheight()
    x = (largura - 750) // 2
    y = (altura - 600) // 2
    home.geometry(f"750x600+{x}+{y}")
    home.title("")
    home.resizable(0,0)
    home.mainloop()   
