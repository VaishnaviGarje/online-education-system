<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaishnavi - Online Education System</title>
    <link rel="icon" href="img/MAINICON1.jpg">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            text-align: center;
            color: #007bff;
            text-decoration: none;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td, th {
            padding: 10px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        input[type="text"],
        input[type="password"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            margin: 4px 0 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="reset"] {
            background-color: #6c757d;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            opacity: 0.9;
        }

        @media (max-width: 600px) {
            table, th, td {
                display: block;
                width: 100%;
            }

            td {
                text-align: right;
                position: relative;
                padding-left: 50%;
                border: none;
            }

            td::before {
                content: attr(data-label);
                position: absolute;
                left: 0;
                width: 50%;
                padding-left: 10px;
                white-space: nowrap;
                font-weight: bold;
            }

            td:last-child {
                border-bottom: 1px solid #ddd;
            }
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            display: block;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group input[type="radio"] {
            display: inline;
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>SALESFORCE STUDENT REGISTRATION FORM</h3>
        <a href="coursesPage"><h2>Back to Courses</h2></a>

        <form action="salesforcestudent" method="post">
            <div class="form-group">
                <label for="fname">FIRST NAME</label>
                <input type="text" id="fname" name="fname" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="lname">LAST NAME</label>
                <input type="text" id="lname" name="lname" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="bday">DATE OF BIRTH</label>
                <select name="bday" id="bday">
                    <!-- Day options -->
                    <option value="-1">Day</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                        <option value="1">11</option>
                    <option value="2">12</option>
                  <option value="3">13</option>
                  <option value="4">14</option>
                  <option value="5">15</option>
                  <option value="6">16</option>
                  <option value="7">17</option>
                  <option value="8">18</option>
                  <option value="9">19</option>
                  <option value="10">20</option>
                        <option value="1">21</option>
                    <option value="2">22</option>
                  <option value="3">23</option>
                  <option value="4">24</option>
                  <option value="5">25</option>
                  <option value="6">26</option>
                  <option value="7">27</option>
                  <option value="8">28</option>
                  <option value="9">29</option>
                  <option value="10">30</option>
                    <option value="31">31</option>
                </select>
                <select name="bmonth" id="bmonth">
                    <!-- Month options -->
                    <option value="-1">Month</option>
                    <option value="January">Janoury</option>
                    <option value="February">Feburary</option>
                    <option value="February">march</option>
                    <option value="February">april</option>
                    <option value="February">may</option>
                    <option value="February">june</option>
                    <option value="February">july</option>
                    <option value="February">august</option>
                    <option value="February">september</option>
                     <option value="February">octomber</option>
                    <option value="February">november</option>
                    <option value="February">december</option>
                </select>
                <select name="byear" id="byear">
                    <!-- Year options -->
                    <option value="-1">Year</option>
                    		<option value="2012">2012</option>
					<option value="2011">2011</option>
					<option value="2010">2010</option>
					<option value="2009">2009</option>
					<option value="2008">2008</option>
					<option value="2007">2007</option>
					<option value="2006">2006</option>
					<option value="2005">2005</option>
					<option value="2004">2004</option>
					<option value="2003">2003</option>
					<option value="2002">2002</option>
					<option value="2001">2001</option>
					<option value="2000">2000</option>

					<option value="1999">1999</option>
					<option value="1998">1998</option>
					<option value="1997">1997</option>
					<option value="1996">1996</option>
					<option value="1995">1995</option>
					<option value="1994">1994</option>
					<option value="1993">1993</option>
					<option value="1992">1992</option>
					<option value="1991">1991</option>
					<option value="1990">1990</option>

					<option value="1989">1989</option>
					<option value="1988">1988</option>
					<option value="1987">1987</option>
					<option value="1986">1986</option>
					<option value="1985">1985</option>
					<option value="1984">1984</option>
					<option value="1983">1983</option>
					<option value="1982">1982</option>
					<option value="1981">1981</option>
					<option value="1980">1980</option>
                </select>
            </div>

            <div class="form-group">
                <label for="email">EMAIL ID</label>
                <input type="text" id="email" name="email" maxlength="100" />
            </div>

            <div class="form-group">
                <label for="mobile">MOBILE NUMBER</label>
                <input type="text" id="mobile" name="mobile" maxlength="10" />
            </div>

            <div class="form-group">
                <label>GENDER</label>
                <input type="radio" id="male" name="gender" value="Male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
            </div>

            <div class="form-group">
                <label for="address">ADDRESS</label>
                <textarea id="address" name="address" rows="4"></textarea>
            </div>

            <div class="form-group">
                <label for="city">CITY</label>
                <input type="text" id="city" name="city" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="pincode">PIN CODE</label>
                <input type="text" id="pincode" name="pincode" maxlength="6" />
            </div>

            <div class="form-group">
                <label for="state">STATE</label>
                <input type="text" id="state" name="state" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="country">COUNTRY</label>
                <select name="country" id="country">
                <option value="-1">Country</option>
                    		<option value="india">India</option>
					<option value="other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </div>
        </form>
    </div>
</body>
</html>
