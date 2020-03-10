!pip install PyMySQL
!pip install flask_login
!pip install flask_cors
############# Flask Modules Setup ##############
from flask import Flask, render_template, request, make_response, jsonify
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin

import MySQLdb

######### Initialize Flask App ##########

app = Flask(__name__)

######### MySQL Database Setup ##########

connection = MySQLdb.connect(host="AzureXu.mysql.pythonanywhere-services.com",
                     user="AzureXu",
                     passwd="HongKong123",
                     db="AzureXu$HK_Location",
                     charset='utf8mb4')

######### Login Manager Setup ##########

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'
app.config['SECRET_KEY'] = "lkkajdghdadkglajkgah"


@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

class User(UserMixin):
  def __init__(self,id):
    self.id = id

############ Web Page Routes Setup ###############

@app.route("/")
@login_required
def home():
    return render_template('home.html')

@app.route("/login")
def login():
    message = 'Please login in first.'
    return render_template('login.html', message=message)

@app.route('/query_auth')
def query_auth():
    username = request.args.get("username")
    password = request.args.get("password")
    if username == "1155136921@link.cuhk.edu.hk" and password == "xwr123":
        login_user(User(1))
        message = "Dear " + username + ", welcome to HK電影朝聖 . Your login has been granted."
        return make_response(message, 200, )
    else:
        message = 'Wrong password!'
        return make_response( message,401,{'WWW-Authenticate':'Basic realm="Login Required"'})

@app.route("/form_auth",methods=['POST'])
def form_auth():
    username = request.form['email']
    password = request.form['pwd']
    if username == "1155136921@link.cuhk.edu.hk" and password == "xwr123":
        login_user(User(1))
        message = "Dear " + username + ", welcome to HK電影朝聖. Your login has been granted."
        return render_template('home.html', message=message)
    else:
        message = 'Wrong password!'
        return render_template('login.html',message=message)

@app.route('/album')
@login_required
def album():
    with connection.cursor() as cursor:
        sql = "SELECT * FROM nopic"
        cursor.execute(sql)
        result = cursor.fetchall()
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['Film'] = i[0]
        dict['Release_Date'] = i[1]
        dict['Douban_Rating'] = i[2]
        dict['Filming_Site'] = i[3]
        dict['Scene_Time'] = i[4]
        dict['Character'] = i[5]
        dict['Scene_Plot'] = i[6]
        dict['poster_url'] = i[7]
        dataset.append(dict.copy()) #markers.append(fld.copy())
    cursor.close()
    connection.close()
    return render_template('product2.html',dataset=dataset)

@app.route('/logout/')
@login_required
def logout():
    logout_user()
    message = 'Thanks for logging out.'
    return render_template('login.html',message=message)

@app.errorhandler(500)
def internal_error(error):
    message = 'Wrong password!'
    return render_template('login.html',message=message),500

######### API Endpoints ##########

@app.route('/api_auth', methods=['POST'])
def api_auth():
    username = request.json['username']
    password = request.json['password']
    if username == "1155136921@link.cuhk.edu.hk" and password == "xwr123":
        login_user(User(1))
        message = "Dear " + username + ", welcome to HK電影朝聖. Your login has been granted."
        return jsonify({'response':'ok!','message':message})
    else:
        message = 'Wrong password!'
        return jsonify({'response':'Invalid!','message':'Cannot authenticate.'})

@app.route('/api_album', methods=['POST'])
@login_required
def api_album():
    with connection.cursor() as cursor:
        sql = "SELECT * FROM nopic"
        cursor.execute(sql)
        result = cursor.fetchall()
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['Film'] = i[0]
        dict['Release_Date'] = i[1]
        dict['Douban_Rating'] = i[2]
        dict['Filming_Site'] = i[3]
        dict['Scene_Time'] = i[4]
        dict['Character'] = i[5]
        dict['Scene_Plot'] = i[6]
        dict['poster_url'] = i[7]
        dataset.append(dict.copy()) #markers.append(fld.copy())
    cursor.close()
    connection.close()
    return jsonify({'Album': dataset})

######### Run Flask Web App at Port 9030 ##########

if __name__ == '__main__':
    from werkzeug.serving import run_simple
    run_simple('localhost', 9030, app)
