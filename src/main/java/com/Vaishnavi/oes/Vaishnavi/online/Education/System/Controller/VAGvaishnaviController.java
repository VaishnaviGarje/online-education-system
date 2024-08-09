package com.Vaishnavi.oes.Vaishnavi.online.Education.System.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.AWSStudent;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.AdvanceJavaStudent;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.Contact;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.JavaStudent;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.Login;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.PythonStudent;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.SalesForceStudent;
import com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model.SeleniumStudent;

@Controller
public class VAGvaishnaviController {

	@Autowired
	SessionFactory sf;

	@RequestMapping("/")
	public String name() {
		return "useradminbtn";
	}

	@RequestMapping("/uLogin")
	public String gopalLogin() {
		return "userl";
	}

	@RequestMapping("/userl")
	public String GopalLogin(Login login, Model model) {
		Session session = sf.openSession();
		Login dbLogin = session.get(Login.class, login.getPassword());
		String page = "userl";
		String msg = null;
		if (dbLogin != null) {
			if (login.getUsername().equals(dbLogin.getUsername())) {
				page = "home";
			} else {
				msg = "Invalid Username";
			}
		} else {
			msg = "Invalid Password";
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/CreateAccount")
	public String CreateAccount() {
		return "usercreateaccount";
	}

	@RequestMapping("/usercreateaccount")
	public String gopalgiraseDB(Login login, Model model) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Login dblogin = s.get(Login.class, login.getPassword());
		String page = "usercreateaccount";
		String msg = null;
		if (dblogin != null) {
			if (login.getUsername().equals(dblogin.getUsername())) {
				msg = "Already Registered Password";
			}
		} else {
			page = "usercreateaccount";
			s.save(login);
			t.commit();
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/homePage")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/aboutPage")
	public String aboutPage() {
		return "about";
	}

	@RequestMapping("/coursesPage")
	public String coursesPage() {
		return "course";
	}

	@RequestMapping("/coursesDetailsPage")
	public String coursesDetailsPage() {
		return "detail";
	}

	@RequestMapping("/ourFeaturesPage")
	public String ourFeaturesPage() {
		return "feature";
	}

	@RequestMapping("/instructorsPage")
	public String instructorsPage() {
		return "team";
	}

	@RequestMapping("/testmonialPage")
	public String testmonialPage() {
		return "testimonial";
	}

	@RequestMapping("/contactPage")
	public String contactPage() {
		return "contact";
	}

	@RequestMapping("/contact")
	public String contactPageDB(Contact contact, Model model) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Contact dbContact = s.get(Contact.class, contact.getEmail());
		String page = "contact";
		String msg = null;
		if (dbContact != null) {
			if (contact.getEmail().equals(dbContact.getEmail())) {
				msg = "Already Registered Email";
			} else {
				page = "contact";
				s.save(contact);
				t.commit();
			}
		} else {
			msg = "Please enter the email id";
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/backToLogin")
	public String backToLogin() {
		return "useradminbtn";
	}

	@RequestMapping("/adlogin")
	public String adgopal(Login login) {
		return "advaishnavi";
	}

	@RequestMapping("/adminvaishnavi")
	public String adgopalc(Login login) {
		if (login.username.equals("vaishnavi") && login.password.equals("1111")) {
			return "ahome";
		} else {
			return "advaishnavi";
		}
	}

	@RequestMapping("/ahome")
	public String ahome() {
		return "ahome";
	}

	
	

//..............................................................
	@RequestMapping("/javastudentpage")
	public String javastudentpage() {
		return "javastudent";
	}

	@RequestMapping("/javastudent")
	public String javastudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(javaStudent);
		t.commit();
		return "javastudent";
	}
//..............................................................
	@RequestMapping("/advancejavastudentpage")
	public String advancejavastudentpage() {
		return "advancejavastudent";
	}

	@RequestMapping("/advancejavastudent")
	public String advancejavastudent(AdvanceJavaStudent advanceJavaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(advanceJavaStudent);
		t.commit();
		return "advancejavastudent";
	}
//.................................................................
	@RequestMapping("/seleniumstudentpage")
	public String seleniumstudentpage() {
		return "seleniumstudent";
	}

	@RequestMapping("/seleniumstudent")
	public String seleniumstudent(SeleniumStudent seleniumStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(seleniumStudent);
		t.commit();
		return "seleniumstudent";
	}
//...................................................................
	@RequestMapping("/pythonstudentpage")
	public String pythonstudentpage() {
		return "pythonstudent";
	}

	@RequestMapping("/pythonstudent")
	public String pythonstudent(PythonStudent pythonStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(pythonStudent);
		t.commit();
		return "pythonstudent";
	}
//......................................................................
	@RequestMapping("/awsstudentpage")
	public String awsstudentpage() {
		return "awsstudent";
	}

	@RequestMapping("/awsstudent")
	public String awsstudent(AWSStudent awsStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(awsStudent);
		t.commit();
		return "awsstudent";
	}
//...................................................................
	@RequestMapping("/salesforcestudentpage")
	public String salesforcestudentpage() {
		return "salesforcestudent";
	}

	@RequestMapping("/salesforcestudent")
	public String salesforcestudent(SalesForceStudent salesForceStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(salesForceStudent);
		t.commit();
		return "salesforcestudent";
	}
// ....................to view core java student data................
	@RequestMapping("/viewcorejavapage")
	public String viewcoursesPage() {
		return "viewcoursespage";
	}


	@RequestMapping("/save")
	public String corejavasavestudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(javaStudent);
		t.commit();
		return "viewcoursespage";
	}

	@RequestMapping("/update")
	public String corejavaupdatestudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(javaStudent);
		t.commit();
		return "viewcoursespage";
	}

	@RequestMapping("/delete")
	public String corejavadeletestudent(int id) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		JavaStudent js = s.get(JavaStudent.class, id);
		s.delete(js);
		t.commit();
		return "viewcoursespage";
	}
	
//................to vie Advance java student data........................	
	@RequestMapping("/viewadvancejavapage")
	public String viewadvancejavapage() {
		return "viewadvancejavastudent";
	}
	@RequestMapping("/Advancejava")
	public String advancejavasavestudent(AdvanceJavaStudent ajs) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(ajs);
		t.commit();
		return "viewadvancejavastudent";
	}
	@RequestMapping("/updateadvancejava")
	public String  advancejavaupdatestudent(AdvanceJavaStudent ajs) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(ajs);
		t.commit();
		return "viewadvancejavastudent";
	}
	@RequestMapping("/deleteAdvancejava")
	public String Advancejavajavadeletestudent(int id) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		AdvanceJavaStudent js = s.get(AdvanceJavaStudent.class, id);
		s.delete(js);
		t.commit();
		return "viewadvancejavastudent";
	}
	//........to view Selenium student data.............
	@RequestMapping("/viewseleniumpage")
	public String viewseleniumpage() {
		return "viewseleniumstudent";
	}
	@RequestMapping("/viewseleniumstudent")
	public String seleniumstudentsavestudent(SeleniumStudent ss) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(ss);
		t.commit();
		return "viewseleniumstudent";
	}
	@RequestMapping("/updateseleniumstudent")
	public String  seleniumstudentupdate(SeleniumStudent ss) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(ss);
		t.commit();
		return "viewseleniumstudent";
	}
	@RequestMapping("/deleteseleniumstudent")
	public String seleniumstudentjavadelete(int id) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		SeleniumStudent js = s.get(SeleniumStudent.class, id);
		s.delete(js);
		t.commit();
		return "viewseleniumstudent";
	}
	//........to view Salesforce student data.............

	@RequestMapping("/viewsalesforcepage")
	public String viewsalesforcepage() {
		return "viewsalesforcestudent";
	}
		@RequestMapping("/viewSalesforcestudent")
		public String Salesforcestudentsave(SalesForceStudent sfs) {
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			s.save(sfs);
			t.commit();
			return "viewsalesforcestudent";
		}
		@RequestMapping("/updateSalesforcestudent")
		public String  Salesforcestudentupdate(SalesForceStudent sfs) {
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			s.update(sfs);
			t.commit();
			return "viewsalesforcestudent";
		}
		@RequestMapping("/deleteSalesforcestudent")
		public String Salesforcestudentjavadelete(int id) {
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			SalesForceStudent js = s.get(SalesForceStudent.class, id);
			s.delete(js);
			t.commit();
			return "viewsalesforcestudent";
		}
		//........to view aws student data.............

		@RequestMapping("/viewawspage")
		public String viewawspage() {
			return "viewawsstudent";
		}
			@RequestMapping("/viewawsstudent")
			public String awsstudentsave(AWSStudent aws) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.save(aws);
				t.commit();
				return "viewawsstudent";
			}
			@RequestMapping("/updateawsstudent")
			public String  awsstudentupdate(AWSStudent aws) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.update(aws);
				t.commit();
				return "viewawsstudent";
			}
			@RequestMapping("/deleteawsstudent")
			public String awsstudentjavadelete(int id) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				AWSStudent js = s.get(AWSStudent.class, id);
				s.delete(js);
				t.commit();
				return "viewawsstudent";
			}
			
	//.....................to view pythod student data......................
			@RequestMapping("/viewpythonpage")
			public String viewpythonpage() {
				return "viewpythonstudent";
			}
			@RequestMapping("/viewpythonstudent")
			public String pythonstudentsave(PythonStudent ps) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.save(ps);
				t.commit();
				return "viewpythonstudent";
			}
			@RequestMapping("/updatepythonstudent")
			public String  pythonstudentupdate(PythonStudent ps) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.update(ps);
				t.commit();
				return "viewpythonstudent";
			}
			@RequestMapping("/deletepythonstudent")
			public String pythonstudentjavadelete(int id) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				PythonStudent js = s.get(PythonStudent.class, id);
				s.delete(js);
				t.commit();
				return "viewpythonstudent";
			}
// ..................................to view contact details.................................		
			@RequestMapping("/viewcontactpage")
			public String viewcontactPage() {
				return "viewcontactpage";
			}
			@RequestMapping("/viewcontactdetail")
			public String contactsave(Contact c) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.save(c);
				t.commit();
				return "viewcontactpage";
			}
			@RequestMapping("/updatecontactdetail")
			public String contactupdate(Contact c) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.update(c);
				t.commit();
				return "viewcontactpage";
			}
			@RequestMapping("/deletecontactdetail")
			public String contactdelete(String email) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				Contact js = s.get(Contact.class, email);
				s.delete(js);
				t.commit();
				return "viewcontactpage";
			}
//....................to view login data..........
			@RequestMapping("/viewuserlogin")
			public String viewuserlogin() {
				return "viewuserlogin";
			}
			@RequestMapping("/viewlogindetail")
			public String loginsave(Login l) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.save(l);
				t.commit();
				return "viewuserlogin";
			}
			@RequestMapping("/updatelogindetail")
			public String contactupdate(Login l) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				s.update(l);
				t.commit();
				return "viewuserlogin";
			}
			@RequestMapping("/deletelogindetail")
			public String deletelogin(String password) {
				Session s = sf.openSession();
				Transaction t = s.beginTransaction();
				Login js = s.get(Login.class, password);
				s.delete(js);
				t.commit();
				return "viewuserlogin";
			}
}
