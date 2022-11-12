from flask import Flask , render_template , request , session , redirect
from flask_sqlalchemy import SQLAlchemy
import pymysql
pymysql.install_as_MySQLdb()
from sqlalchemy import exc
import json
from flask_mail import Mail
from datetime import datetime

import os
from flask_mail import Mail


with open('config.json' , 'r') as c:
    params = json.load(c)["params"]

local_server = True


app = Flask(__name__)
app.secret_key = 'super secret'

app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465' ,
    MAIL_USE_SSL = True ,
    MAIL_USERNAME = params['gmail-user'],
    MAIL_PASSWORD = params['gmail-password']
)
mail = Mail(app)






if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80) ,nullable=False )
    email = db.Column(db.String(120), nullable=False)
    phone_num = db.Column(db.String(120),  nullable=False)
    subject = db.Column(db.String(120), nullable=True)
    msg = db.Column(db.String(120),nullable=False  )
    date = db.Column(db.String(80),nullable=True )


class Services(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80) ,nullable=False )
    description = db.Column(db.String(120), nullable=False)
    slug = db.Column(db.String(120),  nullable=False)
    icon = db.Column(db.String(120), nullable=True)
    color = db.Column(db.String(120),nullable=False  )
    date = db.Column(db.String(80),nullable=True )
    cat1 = db.Column(db.String(80), nullable=True)
    cat2 = db.Column(db.String(80), nullable=True)
    cat3 = db.Column(db.String(80), nullable=True)



class Bookservices(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80) ,nullable=False )
    email = db.Column(db.String(120), nullable=False)
    phone = db.Column(db.String(120),  nullable=False)
    category = db.Column(db.String(120), nullable=True)
    area = db.Column(db.String(120),nullable=False  )
    location = db.Column(db.String(80), nullable=False)
    service_date = db.Column(db.String(120), nullable=False)
    service_time = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(80),nullable=True )




@app.route('/')
def home():
    services = Services.query.filter_by().all()




    return render_template('index.html' , params=params , services = services)

@app.route('/service/<string:service_slug>' , methods=['GET' , 'POST'])
def bookservice(service_slug):
    service = Services.query.filter_by(slug=service_slug).first()

    if (request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        category = request.form.get('category')
        area = request.form.get('area')
        location = request.form.get('location')
        service_date = request.form.get('service_date')
        service_time = request.form.get('service_time')

        entry = Bookservices(name=name, email=email ,  phone=phone, category=category , area=area , location=location ,service_date=service_date , service_time=service_time  , date =datetime.now())

        db.session.add(entry)
        db.session.commit()


        
        mail.send_message(
                          sender=email,
                          recipients=[params['gmail-user']],
                          body=location + "\n" + phone
                          )

        return render_template('confirm.html')






    return render_template('bookservices.html', params=params , service=service)


@app.route('/editservice/<string:sno>' , methods=['GET' , 'POST'])
def editservice(sno):
    if ('user' in session and session['user'] == params['admin_user']):

        if request.method == 'POST':

            title = request.form.get('title')
            slug = request.form.get('slug')
            icon = request.form.get('icon')
            color = request.form.get('color')
            description = request.form.get('description')
            date = datetime.now()
            cat1 = request.form.get('cat1')
            cat2 = request.form.get('cat2')
            cat3 = request.form.get('cat3')


            if sno=='0':
                service = Services( sno=sno , title=title , description=description , slug=slug , icon=icon , color = color , date=date , cat1=cat1 , cat2=cat2, cat3=cat3 )
                db.session.add(service)
                db.session.commit()

            else:
                service = Services.query.filter_by(sno=sno).first()
                service.title = title
                service.description = description
                service.slug = slug
                service.icon = icon
                service.color = color
                service.date = date
                service.cat1 = cat1
                service.cat2 = cat2
                service.cat3 = cat3



                db.session.commit()
                return redirect('/editservice/' + sno)







        service = Services.query.filter_by(sno=sno).first()
        return render_template('editservice.html', params=params, service=service, sno=sno)












"""
@app.route('/editservice')
def es():
    return render_template('editservice.html')
"""





@app.route('/about')
def about():
    services = Services.query.filter_by().all()


    return render_template('about.html', params=params , services=services )

@app.route('/team')
def team():
    return render_template('team.html', params=params)

@app.route('/dashboard' ,  methods=['GET' , 'POST'] )
def dashboard():
    if ('user' in session and session['user'] == params['admin_user']):
        services = Services.query.all()
        contacts = Contacts.query.all()
        bookservices = Bookservices.query.all()

        return render_template('dashboard.html', params=params, services=services , contacts=contacts , bookservices=bookservices)

    if request.method == 'POST':
        username = request.form.get('uname')
        userpass = request.form.get('pass')
        if (username == params['admin_user'] and userpass == params['admin_password']):
            session['user'] = username
            services = Services.query.all()
            contacts = Contacts.query.all()
            return render_template('dashboard.html', params=params, services=services , contacts=contacts)




    return render_template('login.html', params=params)


@app.route('/logout')
def logout():
    session.pop('user')
    return redirect('/dashboard')

@app.route('/delete/<string:sno>' , methods = ['GET' , 'POST'])
def delete(sno):
    if ('user' in session and session['user'] == params['admin_user']):
        service = Services.query.filter_by(sno=sno).first()
        db.session.delete(service)
        db.session.commit()
    return redirect('/dashboard')


@app.route('/portfolio')
def portfolio():
    return render_template('portfolio.html', params=params)


@app.route('/blog')
def blog():
    return render_template('blog.html', params=params)



@app.route('/contact', methods = ['GET','POST'])
def contact():
    if (request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        subject = request.form.get('subject')
        message = request.form.get('message')

        entry = Contacts(name=name, phone_num=phone, msg=message, date=datetime.now(), email=email , subject=subject)

        db.session.add(entry)
        db.session.commit()
        mail.send_message("New msg from " + name,
                          sender=email,
                          recipients=[params['gmail-user']],
                          body=message + "\n" + phone
                          )


    return render_template('contact.html', params=params)













@app.route('/terms')
def terms():
    return render_template('terms.html', params=params)



@app.route('/privacy')
def privacy():
    return render_template('policy.html', params=params)


app.run(debug=True)