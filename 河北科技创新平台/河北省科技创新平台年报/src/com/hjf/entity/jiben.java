package com.hjf.entity;

public class jiben {

		private int id;
		private String username;
		private String ptmc;
		private String ptbh;
		private String pzny;
		private String pzwh;
		private String jsly;
		//6-10
		private String ptjb;
		private String szsx;
		private String ptzzxt;
		private String jjjgj;
		private String fwgmjj1;
		private String fwgmjj2;
		private String fwgmjj3;
		//11-15
		private String ssxk1;
		private String ssxk2;
		private String ssxk3;
		private String ytdwmc;
		private String ytdwdm;
		private String ytdwxm;
		private String bgdh;
		//16-20
		private String ytdwlx;
		private String gjdw;
		private String ptwzmc;
		private String wz;
		private String pttxdz;
		//21-25
		private String yb;
		private String name;
		private String sex;
		private String birth;
		private String zc;	
		//26-30
		private String sxzy;
		private String xl;
		private String xw;
		private String bgdh1;
		private String phone;
		//31
		private String email;	
		
		public jiben(String ptmc,String ptbh, String ptjb,String szsx,String name) {
			this.ptmc=ptmc;
			this.ptbh=ptbh;
			this.ptjb=ptjb;
			this.szsx=szsx;
			this.name=name;
			
		}
		
		public jiben(String username,String ptmc, String ptbh, String pzny, String pzwh, String jsly, String ptjb,
				String szsx, String ptzzxt, String jjjgj, String fwgmjj1, String fwgmjj2,
				String fwgmjj3, String ssxk1, String ssxk2,String ssxk3,String ytdwmc, String ytdwdm, String ytdwxm,
				String bgdh, String ytdwlx, String gjdw, String ptwzmc, String wz, String pttxdz,
				String yb, String name, String sex, String birth, String zc, String sxzy, String xl,
				String xw, String bgdh1, String phone, String email) {
			this.ptmc = ptmc;
			this.username = username;
			this.ptbh = ptbh;
			this.pzny = pzny;
			this.pzwh = pzwh;
			this.jsly = jsly;
			this.ptjb = ptjb;
			this.szsx = szsx;
			this.ptzzxt = ptzzxt;
			this.jjjgj = jjjgj;
			this.fwgmjj1 = fwgmjj1;
			this.fwgmjj2 = fwgmjj2;
			this.fwgmjj3 = fwgmjj3;
			this.ssxk1 = ssxk1;
			this.ssxk2 = ssxk2;
			this.ssxk3 = ssxk3;
			this.ytdwmc = ytdwmc;
			this.ytdwdm = ytdwdm;
			this.ytdwxm = ytdwxm;
			this.bgdh = bgdh;
			this.ytdwlx = ytdwlx;
			this.gjdw = gjdw;
			this.ptwzmc = ptwzmc;
			this.wz = wz;
			this.pttxdz = pttxdz;
			this.yb = yb;
			this.name = name;
			this.sex = sex;
			this.birth = birth;
			this.zc = zc;
			this.sxzy = sxzy;
			this.xl = xl;
			this.xw = xw;
			this.bgdh1 = bgdh1;
			this.phone = phone;
			this.email = email;
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getptmc() {
			return ptmc;
		}
		public void setptmc(String ptmc) {
			this.ptmc = ptmc;
		}
		public String getptbh() {
			return ptbh;
		}
		public void setptbh(String ptbh) {
			this.ptbh = ptbh;
		}
		public String getpzny() {
			return pzny;
		}
		public void setpzny(String pzny) {
			this.pzny = pzny;
		}
		public String getpzwh() {
			return pzwh;
		}
		public void setpzwh(String pzwh) {
			this.pzwh = pzwh;
		}
		public String getjsly() {
			return jsly;
		}
		public void setjsly(String jsly) {
			this.jsly = jsly;
		}
		public String getptjb() {
			return ptjb;
		}
		public void setptjb(String ptjb) {
			this.ptjb = ptjb;
		}
		public String getszsx() {
			return szsx;
		}
		public void setszsx(String szsx) {
			this.szsx = szsx;
		}
		public String getptzzxt() {
			return ptzzxt;
		}
		public void setptzzxt(String ptzzxt) {
			this.ptzzxt = ptzzxt;
		}
		public String getjjjgj() {
			return jjjgj;
		}
		public void setjjjgj(String jjjgj) {
			this.jjjgj = jjjgj;
		}
		public String getfwgmjj1() {
			return fwgmjj1;
		}
		public void setfwgmjj1(String fwgmjj1) {
			this.fwgmjj1 = fwgmjj1;
		}
		public String getfwgmjj2() {
			return fwgmjj2;
		}
		public void setfwgmjj2(String fwgmjj2) {
			this.fwgmjj2 = fwgmjj2;
		}
		public String getfwgmjj3() {
			return fwgmjj3;
		}
		public void setfwgmjj3(String fwgmjj3) {
			this.fwgmjj3 = fwgmjj3;
		}
		public String getssxk1() {
			return ssxk1;
		}
		public void setssxk1(String ssxk1) {
			this.ssxk1 = ssxk1;
		}
		public String getssxk2() {
			return ssxk2;
		}
		public void setssxk2(String ssxk2) {
			this.ssxk2 = ssxk2;
		}
		public String getssxk3() {
			return ssxk3;
		}
		public void setssxk3(String ssxk3) {
			this.ssxk3 = ssxk3;
		}
		public String getytdwmc() {
			return ytdwmc;
		}
		public void setytdwmc(String ytdwmc) {
			this.ytdwmc = ytdwmc;
		}
		public String getytdwdm() {
			return ytdwdm;
		}
		public void setytdwdm(String ytdwdm) {
			this.ytdwdm = ytdwdm;
		}
		public String getytdwxm() {
			return ytdwxm;
		}
		public void setytdwxm(String ytdwxm) {
			this.ytdwxm = ytdwxm;
		}
		public String getbgdh() {
			return bgdh;
		}
		public void setbgdh(String bgdh) {
			this.bgdh = bgdh;
		}
		public String getytdwlx() {
			return ytdwlx;
		}
		public void setytdwlx(String ytdwlx) {
			this.ytdwlx = ytdwlx;
		}
		public String getgjdw() {
			return gjdw;
		}
		public void setgjdw(String gjdw) {
			this.gjdw = gjdw;
		}
		public String getptwzmc() {
			return ptwzmc;
		}
		public void setptwzmc(String ptwzmc) {
			this.ptwzmc = ptwzmc;
		}
		public String getwz() {
			return wz;
		}
		public void setwz(String wz) {
			this.wz = wz;
		}
		public String getpttxdz() {
			return pttxdz;
		}
		public void setpttxdz(String pttxdz) {
			this.pttxdz = pttxdz;
		}
		public String getyb() {
			return yb;
		}
		public void setyb(String yb) {
			this.yb = yb;
		}
		public String getname() {
			return name;
		}
		public void setname(String name) {
			this.name = name;
		}
		public String getsex() {
			return sex;
		}
		public void setsex(String sex) {
			this.sex = sex;
		}
		public String getbirth() {
			return birth;
		}
		public void setbirth(String birth) {
			this.birth = birth;
		}
		public String getzc() {
			return zc;
		}
		public void setzc(String zc) {
			this.zc = zc;
		}
		public String getsxzy() {
			return sxzy;
		}
		public void setsxzy(String sxzy) {
			this.sxzy = sxzy;
		}
		public String getxl() {
			return xl;
		}
		public void setxl(String xl) {
			this.xl = xl;
		}
		public String getxw() {
			return xw;
		}
		public void setxw(String xw) {
			this.xw = xw;
		}
		public String getbgdh1() {
			return bgdh1;
		}
		public void setbgdh1(String bgdh1) {
			this.bgdh1 = bgdh1;
		}
		public String getphone() {
			return phone;
		}
		public void setphone(String phone) {
			this.phone = phone;
		}
		public String getemail() {
			return email;
		}
		public void setemail(String email) {
			this.email = email;
		}

		public String getusername() {
			return username;
		}

		public void setusername(String username) {
			this.username = username;
		}
		
	}
