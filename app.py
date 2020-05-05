#! /usr/bin/env python


from utils import load_config
from logger import setup_log
from flask import Flask, request, render_template, session, redirect, url_for, jsonify
from utils import mysql
import math


config = load_config()
logger = setup_log(__name__)
app = Flask(__name__)
app.config['SECRET_KEY'] = 'random'
mysql = mysql(config['mysql'])





@app.route("/")
def root():
    """
    :return: home.html
    """
    login, userid = True, 'LC'
    if 'userid' in session:
        login, userid = True, session['userid']

    return render_template('Index.html',
                           login=login,
                           name = "index")





@app.route("/search", methods=['POST', 'GET'])
def search():
    """
    search the jobs
    :return: Search.html
    """
    login, userid = True, None
    print(request.method,'method')

    formKeys = [k for k in request.args]
    key_dict = {'searchtype':None, 'searchfield': None, 'searchlocation':None, 'searchjobname':None}

    if len(formKeys)>0:
        key_dict['searchtype'] = request.args.get('searchtype')
        key_dict['searchfield'] = request.args.get('searchfield')
        key_dict['searchlocation'] = request.args.get('searchlocation')
        key_dict['searchjobname'] = request.args.get('searchjobname')
        init = False
        print(key_dict)
    else:
        init = True
    print(key_dict)
    keysearch = []
    try:
        if request.method == 'GET':
            sql = """ SELECT distinct c.companyName, j.jobName, j.Location, j.Type, j.Field, j.Title
            from jobs j join Company c on c.companyID=j.companyID
            where type like '%{}%' and Field like '%{}%' and Location like '%{}%'
            and jobName like '%{}%' limit 20""".format(*[n for n in key_dict.values()])
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    
    except Exception as e: # do not move
        logger.exception("search jobs error: {}".format(e)) # logger
    if init:
        return render_template("Search.html",
                            login=login,
                            init=init,
                            useid=userid)
    else:
        return render_template("Search.html",
                            searchtype = key_dict['searchtype'],
                            searchfield = key_dict['searchfield'],
                            searchlocation = key_dict['searchlocation'],
                            searchjobname = key_dict['searchjobname'],
                            login=login,
                            init=init,
                            useid=userid,
                            keysearch=keysearch)







@app.route("/userinfo", methods=['POST', 'GET'])
def render_userinfo():
    """
    userinfo
    :return: userinfo.html
    """
    login, userid = True, None
    print(request.method,'method')
    keysearch = []
    try:
        if request.method == 'GET':
            sql = """ select * from Students"""
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    
    except Exception as e: # do not move
        logger.exception("select students error: {}".format(e)) # logger
    return render_template("userinfo.html",
                        login=login,
                        keysearch=keysearch,
                        useid=userid)


@app.route("/insertuserinfo", methods = ['GET'])
def insertuserinfo():
    """
    insert a new user
    :return: userinfo.html
    """
    login, userid= True, None
    print(request.method,'method')

    formKeys = [k for k in request.args]
    key_dict = {'UIN':None, 'studentName': None, 'Gender':None, 'Standing':None, 'Major':None, 'GPA':None}
    key_dict['UIN'] = request.args.get('UIN')
    key_dict['studentName'] = request.args.get('studentName')
    key_dict['Gender'] = request.args.get('Gender')
    key_dict['Standing'] = request.args.get('Standing')
    key_dict['Major'] = request.args.get('Major')
    key_dict['GPA'] = request.args.get('GPA')
    print(key_dict)
    keysearch = []
    try:
        if request.method == 'GET':
            sql = """ insert into Students
            values ({}, '{}', '{}', '{}', '{}', {})""".format(*[n for n in key_dict.values()])
            mysql.exe(sql)
            logger.info("insert user success,sql:{}".format(sql))
            sql = """ select * from Students"""
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    except Exception as e:
        logger.exception("insert user error: {}".format(e))
    return render_template("userinfo.html",
                        login=login,
                        keysearch=keysearch,
                        useid=userid)



@app.route("/updateuserinfo", methods=['POST', 'GET'])
def updateuserinfo():
    '''
    update user info
    :return: userinfo.html
    '''
    login, userid = True,None
    print(request.method,'method')
    keysearch = []
    try:
        if request.method == 'GET':
            keyUIN = request.values.get('UIN')
            keyname = request.values.get('studentName')
            keygender = request.values.get('Gender')
            keystanding = request.values.get('Standing')
            keymajor = request.values.get('Major')
            keygpa = request.values.get('GPA')

            keyUIN = keyUIN.strip()
            keyname = keyname.strip()
            keygender = keygender.strip()
            keystanding = keystanding.strip()
            keymajor = keymajor.strip()
            keygpa = keygpa.strip()

            sql = """ update Students
                      set studentName='{}', Gender='{}', Standing='{}', Major='{}', GPA='{}'
            where UIN = '{}' """.format(keyname,keygender,keystanding,keymajor,keygpa,keyUIN)
            mysql.exe(sql)
            logger.info("update user success,sql:{}".format(sql))
            sql = """ select * from Students"""
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    except Exception as e:
        logger.exception("update user error: {}".format(e))
    return render_template("userinfo.html",
                        login=login,
                        keysearch=keysearch,
                        useid=userid)



@app.route("/match", methods=['POST', 'GET'])
def render_match():
    """
    match
    :return: match.html
    """
    login, userid = True, None
    print(request.method,'method')

    formKeys = [k for k in request.args]

    if len(formKeys)>0:
        keyUIN = request.values.get('searchUIN')
        keyrate = request.values.get('searchrate')
        keyUIN = keyUIN.strip()
        keyrate = keyrate.strip()
        init = False
        print(keyUIN)
        print(keyrate)
    else:
        init = True
    keysearch = []
    try:
        if request.method == 'GET':
            sql= """call best_match ({},{})""".format(keyUIN,keyrate)
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]

    except Exception as e: # do not move
        logger.exception("match jobs error: {}".format(e)) # logger
    if init:
        return render_template("match.html",
                            login=login,
                            init=init,
                            useid=userid)
    else:
        return render_template("match.html",
                            searchUIN = keyUIN,
                            searchrate = keyrate,
                            login=login,
                            init=init,
                            useid=userid,
                            keysearch=keysearch)

@app.route("/deleteuserinfo", methods=['POST', 'GET'])
def deleteuserinfo():
    '''
    delete students info
    :return: userinfo.html
    '''
    login, userid = True, None
    print(request.method,'method')
    keysearch = []
    try:
        if request.method == 'GET':
            keyUIN = request.values.get('UIN')
            keyUIN = keyUIN.strip()
            sql = '''DELETE  FROM Students where UIN={} '''.format(keyUIN)
            mysql.exe(sql)
            logger.info("delete user success,sql:{}".format(sql))
            sql = """ select * from Students"""
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    except Exception as e:
        logger.exception("delete user error: {}".format(e))
    return render_template("userinfo.html",
                        login=login,
                        keysearch=keysearch,
                        useid=userid)


@app.route("/insert", methods=['POST', 'GET'])
def render_insert():
    """
    insert
    :return: insert.html
    """
    login, userid = True, None
    return render_template("insert.html",
                           login=login,
                           useid=userid)



@app.route("/delete", methods=['POST', 'GET'])
def render_delete():
    """
    delete
    :return: delete.html
    """
    login, userid = True, None
    return render_template("delete.html",
                           login=login,
                           useid=userid)


@app.route("/update", methods=['POST', 'GET'])
def render_update():
    """
    update
    :return: update.html
    """
    login, userid = True, None
    return render_template("update.html",
                           login=login,
                           useid=userid)







@app.route("/jobinfo", methods=['POST', 'GET'])
def render_jobinfo():
    """
    jobinfo
    :return: jobinfo.html
    """
    login, userid = True, None
    print(request.method,'method')
    keysearch = []
    try:
        if request.method == 'GET':
            sql = """  select c.companyName, j.jobname, j.location, j.type, j.field, j.title
            from jobs j join company c on c.companyID=j.companyID"""
            keysearch = mysql.fetchall_db(sql) # fetch data from database
            print(keysearch,'keysearch')
            keysearch = [[v for k, v in row.items()] for row in keysearch]
    
    except Exception as e: # do not move
        logger.exception("select students error: {}".format(e)) # logger
    return render_template("jobinfo.html",
                        login=login,
                        keysearch=keysearch,
                        useid=userid)







# @app.route("/match", methods=['POST', 'GET'])
# def render_match():
#     """
#     match
#     :return: match.html
#     """
#     login, userid = True, None
#     return render_template("match.html",
#                            login=login,
#                            useid=userid)






if __name__ == '__main__':
    app.run(debug=True, port=8000)
