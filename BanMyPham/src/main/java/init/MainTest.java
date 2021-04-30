package init;

import dao.MySessionFactorys;

public class MainTest {
	public static void main(String[] args) {
		MySessionFactorys.getInstance().getSessionFactory();
	}
}
