document.addEventListener('DOMContentLoaded', function () {
    // Form validation for the blood bank form
    const bloodBankForm = document.querySelector('form[action="/blood_banks"]');
    if (bloodBankForm) {
        bloodBankForm.addEventListener('submit', function (event) {
            const location = bloodBankForm.querySelector('input[name="location"]').value;
            const contactNumber = bloodBankForm.querySelector('input[name="contact_number"]').value;
            const address = bloodBankForm.querySelector('input[name="address"]').value;
            if (!location || !contactNumber || !address) {
                alert('Please fill in all fields.');
                event.preventDefault();
            }
        });
    }

    // Form validation for the donor form
    const donorForm = document.querySelector('form[action="/donors"]');
    if (donorForm) {
        donorForm.addEventListener('submit', function (event) {
            const firstName = donorForm.querySelector('input[name="first_name"]').value;
            const lastName = donorForm.querySelector('input[name="last_name"]').value;
            const dob = donorForm.querySelector('input[name="dob"]').value;
            const gender = donorForm.querySelector('select[name="gender"]').value;
            const bloodGroup = donorForm.querySelector('input[name="blood_group"]').value;
            const contactNumber = donorForm.querySelector('input[name="contact_number"]').value;
            const address = donorForm.querySelector('input[name="address"]').value;
            if (!firstName || !lastName || !dob || !gender || !bloodGroup || !contactNumber || !address) {
                alert('Please fill in all fields.');
                event.preventDefault();
            }
        });
    }

    // Form validation for the donation form
    const donationForm = document.querySelector('form[action="/donations"]');
    if (donationForm) {
        donationForm.addEventListener('submit', function (event) {
            const donorId = donationForm.querySelector('input[name="donor_id"]').value;
            const donationDate = donationForm.querySelector('input[name="donation_date"]').value;
            const bloodGroup = donationForm.querySelector('input[name="blood_group"]').value;
            const hemoglobinLevel = donationForm.querySelector('input[name="hemoglobin_level"]').value;
            const status = donationForm.querySelector('input[name="status_of_donation"]').value;
            const expiryDate = donationForm.querySelector('input[name="blood_unit_expiry_date"]').value;
            if (!donorId || !donationDate || !bloodGroup || !hemoglobinLevel || !status || !expiryDate) {
                alert('Please fill in all fields.');
                event.preventDefault();
            }
        });
    }

    // Form validation for the recipient form
    const recipientForm = document.querySelector('form[action="/recipients"]');
    if (recipientForm) {
        recipientForm.addEventListener('submit', function (event) {
            const firstName = recipientForm.querySelector('input[name="first_name"]').value;
            const lastName = recipientForm.querySelector('input[name="last_name"]').value;
            const gender = recipientForm.querySelector('select[name="gender"]').value;
            const dob = recipientForm.querySelector('input[name="dob"]').value;
            const bloodGroup = recipientForm.querySelector('input[name="blood_group"]').value;
            const contactNumber = recipientForm.querySelector('input[name="contact_number"]').value;
            const address = recipientForm.querySelector('input[name="address"]').value;
            const medicalHistory = recipientForm.querySelector('textarea[name="medical_history"]').value;
            if (!firstName || !lastName || !gender || !dob || !bloodGroup || !contactNumber || !address || !medicalHistory) {
                alert('Please fill in all fields.');
                event.preventDefault();
            }
        });
    }

    // AJAX function to dynamically fetch and display blood bank data
    function fetchBloodBanks() {
        fetch('/blood_banks')
            .then(response => response.json())
            .then(data => {
                const bloodBankTable = document.querySelector('#blood_bank_table');
                if (bloodBankTable) {
                    bloodBankTable.innerHTML = '';
                    data.forEach(bank => {
                        const row = document.createElement('tr');
                        row.innerHTML = `<td>${bank.blood_bank_ID}</td>
                                         <td>${bank.location}</td>
                                         <td>${bank.blood_bank_contact_number}</td>
                                         <td>${bank.blood_bank_address}</td>`;
                        bloodBankTable.appendChild(row);
                    });
                }
            });
    }

    // Call fetchBloodBanks when the document is loaded
    fetchBloodBanks();
});
