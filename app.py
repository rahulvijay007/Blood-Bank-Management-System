from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_mysqldb import MySQL
import yaml

app = Flask(__name__)
app.secret_key = 'your_secret_key'

# Configure MySQL
db = yaml.load(open('db.yaml'), Loader=yaml.FullLoader)
app.config['MYSQL_HOyST'] = db['mysql_host']
app.config['MYSQL_USER'] = db['mysql_user']
app.config['MYSQL_PASSWORD'] = db['mysql_password']
app.config['MYSQL_DB'] = db['mysql_db']

mysql = MySQL(app)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/blood_banks', methods=['GET', 'POST'])
def blood_banks():
    if request.method == 'POST':
        details = request.form
        location = details['location']
        contact_number = details['contact_number']
        address = details['address']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO blood_bank_information(location, blood_bank_contact_number, blood_bank_address) VALUES(%s, %s, %s)", (location, contact_number, address))
        mysql.connection.commit()
        cur.close()
        flash('Blood Bank Added Successfully')
        return redirect(url_for('blood_banks'))

    if request.headers.get('X-Requested-With') == 'XMLHttpRequest':
        cur = mysql.connection.cursor()
        result_value = cur.execute("SELECT * FROM blood_bank_information")
        blood_banks = cur.fetchall()
        cur.close()
        return jsonify(blood_banks)
    
    cur = mysql.connection.cursor()
    result_value = cur.execute("SELECT * FROM blood_bank_information")
    if result_value > 0:
        blood_banks = cur.fetchall()
        return render_template('blood_banks.html', blood_banks=blood_banks)
    return render_template('blood_banks.html')

@app.route('/donors', methods=['GET', 'POST'])
def donors():
    if request.method == 'POST':
        details = request.form
        first_name = details['first_name']
        last_name = details['last_name']
        dob = details['dob']
        gender = details['gender']
        blood_group = details['blood_group']
        contact_number = details['contact_number']
        address = details['address']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO donors(first_name, last_name, date_of_birth, gender, blood_group, contact_number, adress) VALUES(%s, %s, %s, %s, %s, %s, %s)", 
                    (first_name, last_name, dob, gender, blood_group, contact_number, address))
        mysql.connection.commit()
        cur.close()
        flash('Donor Added Successfully')
        return redirect(url_for('donors'))
    
    cur = mysql.connection.cursor()
    result_value = cur.execute("SELECT * FROM donors")
    if result_value > 0:
        donors = cur.fetchall()
        return render_template('donors.html', donors=donors)
    return render_template('donors.html')

@app.route('/donations', methods=['GET', 'POST'])
def donations():
    if request.method == 'POST':
        details = request.form
        donor_id = details['donor_id']
        donation_date = details['donation_date']
        blood_group = details['blood_group']
        hemoglobin_level = details['hemoglobin_level']
        status_of_donation = details['status_of_donation']
        blood_unit_expiry_date = details['blood_unit_expiry_date']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO blood_donation(Donor_id, Donation_date, blood_group, hemoglobin_level, status_of_donation, Blood_unit_expiry_date) VALUES(%s, %s, %s, %s, %s, %s)", 
                    (donor_id, donation_date, blood_group, hemoglobin_level, status_of_donation, blood_unit_expiry_date))
        mysql.connection.commit()
        cur.close()
        flash('Donation Recorded Successfully')
        return redirect(url_for('donations'))
    
    cur = mysql.connection.cursor()
    result_value = cur.execute("SELECT * FROM blood_donation")
    if result_value > 0:
        donations = cur.fetchall()
        return render_template('donations.html', donations=donations)
    return render_template('donations.html')

@app.route('/recipients', methods=['GET', 'POST'])
def recipients():
    if request.method == 'POST':
        details = request.form
        first_name = details['first_name']
        last_name = details['last_name']
        gender = details['gender']
        dob = details['dob']
        blood_group = details['blood_group']
        contact_number = details['contact_number']
        address = details['address']
        medical_history = details['medical_history']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO recipients(first_name, last_name, gender, DOB, patient_blood_group, contact_number, adress, medical_history) VALUES(%s, %s, %s, %s, %s, %s, %s, %s)", 
                    (first_name, last_name, gender, dob, blood_group, contact_number, address, medical_history))
        mysql.connection.commit()
        cur.close()
        flash('Recipient Added Successfully')
        return redirect(url_for('recipients'))
    
    cur = mysql.connection.cursor()
    result_value = cur.execute("SELECT * FROM recipients")
    if result_value > 0:
        recipients = cur.fetchall()
        return render_template('recipients.html', recipients=recipients)
    return render_template('recipients.html')

if __name__ == '__main__':
    app.run(debug=True)
