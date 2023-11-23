from customtkinter import CTk, CTkLabel, CTkImage, CTkButton, CTkEntry, CTkFont, CTkFrame, set_appearance_mode, set_default_color_theme, CTkToplevel, CTkRadioButton, StringVar
from CTkMessagebox import CTkMessagebox
from tkinter import ttk
from datetime import date, datetime, timedelta
from PIL import Image
import mysql.connector
from mysql.connector import Error





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
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)   
        
        self.geometry("400x300")
        self.title("Empréstimos de Livros")
        largura = self.winfo_screenwidth()
        altura = self.winfo_screenheight()
        x = (largura - 500) // 2
        y = (altura - 400) // 2
        self.resizable(0,0)
        self.geometry(f"500x400+{x}+{y}")
        
        data = date.today()
        ano = data.year
        mes = data.month
        dia = data.day

        FonteN = CTkFont(weight="bold", size=14)

        frame = CTkFrame(self,fg_color="transparent")
        FrameE = CTkFrame(frame,fg_color="transparent")
        FrameT = CTkFrame(frame,fg_color="transparent")
        FrameC = CTkFrame(frame,fg_color="transparent")
        FrameL = CTkFrame(frame,fg_color="transparent")
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

        self.genero = CTkLabel(FrameC, text="Gênero ou Categoria:")
        self.genero.grid(row = 0, column = 0, sticky='w', padx=(0, 10))
        self.entry_genero = CTkEntry(FrameC, width=300)
        self.entry_genero.grid(row = 1, column = 0, sticky='w', padx=(0, 15))

        self.ano = CTkLabel(FrameC, text="Ano de Publicação:")
        self.ano.grid(row = 0, column = 1, sticky='w')
        self.entry_ano = CTkEntry(FrameC)
        self.entry_ano.grid(row = 1, column = 1, sticky='w')

        self.editora = CTkLabel(FrameL, text="Editora:")
        self.editora.grid(row = 0, column = 0, sticky='w', padx=(0,152))
        self.entry_editora = CTkEntry(FrameL, width=300)
        self.entry_editora.grid(row = 1, column = 0, sticky='w', padx=(0,152))
        self.labelv = CTkLabel(FrameL, text="")
        self.labelv.grid(row = 0, column = 1, sticky='w')
        self.labelv.grid(row = 1, column = 1, sticky='w')
        FrameE.pack()
        FrameT.pack()
        FrameC.pack()
        FrameL.pack()
        frame.pack()
        FrameB.pack(pady= 20)
        CTkButton(FrameB,text="Pesquisar Livro").grid(row = 0, column = 0, padx = 3)
        CTkButton(FrameB,text="Pesquisar Aluno").grid(row = 0, column = 1, padx = 3)
        CTkButton(FrameB,text="Emprestar").grid(row = 0, column = 2, padx = 3)

        self.entry_DataDev.bind("<FocusOut>", self.atualizar_data)

        self.DataEmi = CTkLabel(self, text=f"Data de Emissão: {dia}/{mes}/{ano}     ")
        self.DataEmi.pack(anchor='e')
        self.DataDevo = CTkLabel(self, text= f"Data de Devolução: {dia}/{mes}/{ano} ")
        self.DataDevo.pack(anchor='e')
        self.atualizar_data()

       
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
        
        self.BttnPesquisa = CTkButton(FrameP, text = "", width = 20, command=self.executar_busca)
        self.BttnPesquisa.grid(row = 0, column = 1)

        
        

        def item_selected(self):
            for selected_item in self.tree.selection():
                item = self.tree.item(selected_item)
                record = item['values']
                # show a message
                CTkMessagebox(title='Information', message=','.join(record))
        self.tree.pack()
        self.tree.bind('<<TreeviewSelect>>', item_selected)
        FrameP.pack()
        FrameT.pack()
    def executar_busca(self):        
        con = mysql.connector.connect(user='root', database='bibliotecaeteavs', password='', host='localhost')
        cursor = con.cursor()
        title = self.pesquisa.get()
        
        try:
            cursor.execute("SELECT * FROM livro WHERE titulo = %s", (title,))
            resultados = cursor.fetchall()

            for resultado in resultados:
                print(resultado)
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

class Login(CTk):
    def __init__(self):
        super().__init__()

        FonteN = CTkFont(weight="bold", size= 14)
        CTkLabel(self, text="Faça seu Login", font = FonteN).pack()
        self.user = CTkEntry(self)
        self.user.insert(0, "Insira o usuário")
        self.user.pack(pady = 8)
        #<FocusIn> é quando o entry self.user for clicado
        self.user.bind("<FocusIn>", self.limpartexto)
        self.user.bind("<FocusOut>", self.restaurartexto)
        self.password = CTkEntry(self)
        self.password.insert(0,"Insira a senha")
        self.password.pack(pady = 8)
        self.password.bind("<FocusIn>", self.limpartextoP)
        self.password.bind("<FocusOut>", self.restaurartexto)
        ok = CTkButton(self, text="ok",font = FonteN, command= self.show_error)
        ok.pack(pady = 8)
        #invoke é usado para "ativar" 
        self.bind("<Return>", lambda event, button=ok: button.invoke())
        self.user.focus_set()
        self.password.focus_set()
    def show_error(self):
        if self.user.get() == "ete" and self.password.get() == "eteavs":
            print("Login realizado")
            Login.destroy(self)
            initHome()
        else:
            # Mostrar mensagem de erro
            CTkMessagebox(title="Error", message="Usuário ou Senha incorreta", icon="cancel")
    def limpartextoP(self, event):
        # Apaga o texto quando o Entry recebe o foco
        event.widget.delete(0, "end")
        self.password.configure(show="*")
    def limpartexto(self, event):
        # Apaga o texto quando o Entry recebe o foco
        event.widget.delete(0, "end")


    def restaurartexto(self, event):
        if self.user.get() != "" and self.user.get() != "Insira o usuário":
            self.user.unbind("<FocusIn>")
        if self.password.get() != "" and self.password.get() != "Insira a senha":
            self.password.unbind("<FocusIn>")
        # Se estiver vazio o campo, retornar os "insira"
        if self.user.get() == "":
            event.widget.delete(0, "end")
            event.widget.insert(0, "Insira o usuário")
        elif self.password.get() == "":
            event.widget.delete(0, "end")
            event.widget.insert(0, "Insira a senha")
            self.password.configure(show="")

def initHome():
    home = Home()
    largura = home.winfo_screenwidth()
    altura = home.winfo_screenheight()
    x = (largura - 750) // 2
    y = (altura - 600) // 2
    home.geometry(f"750x600+{x}+{y}")
    home.title("")
    home.resizable(0,0)
    home
    home.mainloop()   
#Verificar se o arquivo é o principal
if __name__ == "__main__":
    app = Login()
    largura = app.winfo_screenwidth()
    altura = app.winfo_screenheight()
    x = (largura - 200) // 2
    y = (altura - 180) // 2
    app.geometry(f"200x180+{x}+{y}")
    app.title("")
    app.resizable(0,0)
    app.mainloop()