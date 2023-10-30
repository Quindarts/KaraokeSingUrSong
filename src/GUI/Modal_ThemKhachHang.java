package GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.formdev.flatlaf.json.ParseException;
import com.toedter.calendar.JDateChooser;

import DAO.KhachHang_DAO;
import Entity.KhachHang;
import OtherFunction.HelpRamDomKH;
import OtherFunction.HelpValidate;

import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.Box;
import javax.swing.JButton;
import javax.swing.JTextField;
import java.awt.FlowLayout;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.awt.Component;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;
import java.awt.Font;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.Color;
import javax.swing.border.LineBorder;

public class Modal_ThemKhachHang extends JFrame implements ActionListener {
	
	
	/**
	 * Color
	 */
	private String hexColor_Blue1 = "#054A91";
	private String hexColor_Blue2 = "#3E7CB1";
	private String hexColor_Blue3 = "#81A4CD";
	private String hexColor_Blue4 = "#DBE4EE";
	private String hexColor_Orange = "#F17300";
	private String hexColor_Red = "#E11F1F";
	private String hexColor_Green = "#4BAC4D";
	
	
	private JPanel contentPane;
	private JTextField txt__MaKH;
	private JTextField txt__TenKH;
	private JTextField txt__DiaChi;
	private JLabel lbl__TenKH;
	private ButtonGroup btngr__gioiTinh;
	private JTextField txt__SDT;
	private JDateChooser dateNgaySinh;

	private SimpleDateFormat dateFormat_YMD = new SimpleDateFormat("yyyy-MM-dd");
	private JButton btn__exit;
	private JButton btn__Save;
	private JTextArea txtA__GhiChu;
	private JDateChooser date_NgaySinh;

	private HelpValidate help;
	private KhachHang_DAO DAO_KH;
	private JRadioButton rdbt__nu;
	private JRadioButton rdbt__nam;

	public Modal_ThemKhachHang() {

		DAO_KH = new KhachHang_DAO();

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 950, 336);
		setLocationRelativeTo(null);
		setResizable(false);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JPanel panel_1 = new JPanel();
		panel_1.setBackground(new Color(255, 255, 255));
		panel_1.setBounds(5, 0, 926, 286);
		contentPane.add(panel_1);
		panel_1.setLayout(null);

		/****/
		btngr__gioiTinh = new ButtonGroup();
		//
		JLabel lbl__NgaySinh = new JLabel("Ngày Sinh");
		lbl__NgaySinh.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__NgaySinh.setBounds(43, 150, 96, 25);
		panel_1.add(lbl__NgaySinh);

		JLabel lbl__gioiTinh = new JLabel("Giới Tính");
		lbl__gioiTinh.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__gioiTinh.setBounds(43, 200, 70, 27);
		panel_1.add(lbl__gioiTinh);

		lbl__TenKH = new JLabel("Tên Khách Hàng");
		lbl__TenKH.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__TenKH.setBounds(43, 110, 119, 25);
		panel_1.add(lbl__TenKH);

		txt__MaKH = new JTextField();
<<<<<<< HEAD

		txt__MaKH.setBounds(172, 70, 255, 25);

=======
		txt__MaKH.setEditable(false);
		txt__MaKH.setBounds(172, 67, 255, 25);
>>>>>>> d3d45ce4ead67404f61feb00ca5c82596d3339ec
		panel_1.add(txt__MaKH);
		txt__MaKH.setColumns(10);

		txt__TenKH = new JTextField();
		txt__TenKH.setBounds(172, 110, 255, 25);
		panel_1.add(txt__TenKH);
		txt__TenKH.setColumns(50);

		JLabel lbl__MaKH = new JLabel("Mã Khách Hàng");
		lbl__MaKH.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__MaKH.setBounds(43, 70, 119, 25);
		panel_1.add(lbl__MaKH);

		txt__SDT = new JTextField();
		txt__SDT.setBounds(604, 70, 255, 25);
		panel_1.add(txt__SDT);

		txt__DiaChi = new JTextField();
		txt__DiaChi.setBounds(604, 110, 255, 25);
		panel_1.add(txt__DiaChi);
		txt__DiaChi.setColumns(10);

		btn__exit = new JButton("Thoát");
		btn__exit.setForeground(new Color(255, 255, 255));
		btn__exit.setBackground(Color.decode(hexColor_Blue2));
		btn__exit.setFont(new Font("Segoe UI", Font.BOLD, 15));
		btn__exit.setBounds(739, 233, 125, 35);
		panel_1.add(btn__exit);

		JLabel lbl__GhiChu = new JLabel("Ghi Chú");
		lbl__GhiChu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__GhiChu.setBounds(493, 150, 60, 25);
		panel_1.add(lbl__GhiChu);

		btn__Save = new JButton("Lưu");
		btn__Save.setForeground(new Color(255, 255, 255));
		btn__Save.setBackground(Color.decode(hexColor_Green));
		btn__Save.setFont(new Font("Segoe UI", Font.BOLD, 15));
		btn__Save.setBounds(604, 233, 125, 35);
		panel_1.add(btn__Save);

		JLabel lbl__DiaChi = new JLabel("Địa Chỉ");
		lbl__DiaChi.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__DiaChi.setBounds(493, 110, 49, 25);
		panel_1.add(lbl__DiaChi);

		JLabel lbl__SDT = new JLabel("Số Điện Thoại");
		lbl__SDT.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl__SDT.setBounds(490, 70, 109, 25);
		panel_1.add(lbl__SDT);

<<<<<<< HEAD
		Box verticalBox_1 = Box.createVerticalBox();
		verticalBox_1.setBounds(641, 42, 0, 0);
		panel_1.add(verticalBox_1);

		Box horizontalBox_4 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_4);

		Box horizontalBox_2 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_2);

		Box horizontalBox_6 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_6);

		txtA__GhiChu = new JTextArea();
		txtA__GhiChu.setWrapStyleWord(true);
		txtA__GhiChu.setLineWrap(true);
		txtA__GhiChu.setBounds(604, 150, 255, 72);
		panel_1.add(txtA__GhiChu);

		JRadioButton rdbt__nu = new JRadioButton("Nữ");
=======
		rdbt__nu = new JRadioButton("Nữ");
		rdbt__nu.setBackground(new Color(255, 255, 255));
>>>>>>> d3d45ce4ead67404f61feb00ca5c82596d3339ec
		rdbt__nu.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		rdbt__nu.setBounds(290, 200, 70, 21);
		panel_1.add(rdbt__nu);
		btngr__gioiTinh.add(rdbt__nu);
		
		rdbt__nam = new JRadioButton("Nam");
		rdbt__nam.setSize(70, 21);
		rdbt__nam.setLocation(172, 209);
		rdbt__nam.setBackground(new Color(255, 255, 255));
		rdbt__nam.setFont(new Font("Segoe UI", Font.PLAIN, 13));
<<<<<<< HEAD
		rdbt__nam.setBounds(172, 200, 78, 21);
=======
>>>>>>> d3d45ce4ead67404f61feb00ca5c82596d3339ec
		panel_1.add(rdbt__nam);
		btngr__gioiTinh.add(rdbt__nam);

		rdbt__nam.setActionCommand("Nam");
		rdbt__nu.setActionCommand("Nu");

		JLabel lbl__tieuDe = new JLabel("THÔNG TIN KHÁCH HÀNG");
		lbl__tieuDe.setForeground(Color.decode(hexColor_Blue1));;
		lbl__tieuDe.setBounds(43, 10, 849, 39);
		panel_1.add(lbl__tieuDe);
		lbl__tieuDe.setFont(new Font("Segoe UI", Font.BOLD, 17));

<<<<<<< HEAD
		dateChooser = new JDateChooser();
		dateChooser.setBounds(172, 150, 255, 25);
		panel_1.add(dateChooser);
=======
		date_NgaySinh = new JDateChooser();
		date_NgaySinh.setDateFormatString("yyyy-MM-dd");
		date_NgaySinh.setBounds(172, 159, 255, 25);
		panel_1.add(date_NgaySinh);

		JPanel pnl_GhiChu = new JPanel();
		pnl_GhiChu.setBackground(new Color(255, 255, 255));
		pnl_GhiChu.setBorder(new LineBorder(new Color(192, 192, 192)));
		pnl_GhiChu.setBounds(604, 159, 257, 74);
		panel_1.add(pnl_GhiChu);
		pnl_GhiChu.setLayout(null);

		txtA__GhiChu = new JTextArea();
		txtA__GhiChu.setForeground(new Color(0, 0, 0));
		txtA__GhiChu.setBounds(1, 1, 255, 72);
		pnl_GhiChu.add(txtA__GhiChu);

//---------------------------
>>>>>>> d3d45ce4ead67404f61feb00ca5c82596d3339ec

		btn__Save.addActionListener(this);
		btn__exit.addActionListener(this);
	}

	public void setModal_ThemKhachHang(String maKH, String tenKH, String gioiTinh, String ngaySinh, String soDienThoai,
			String diaChi, String ghiChu) {
		txt__MaKH.setText(maKH);
		txt__TenKH.setText(tenKH);
		txt__SDT.setText(soDienThoai);
		txt__DiaChi.setText(diaChi);
		java.util.Date ngaySinhStr;
		try {
			ngaySinhStr = dateFormat_YMD.parse(ngaySinh);
			date_NgaySinh.setDate(ngaySinhStr);
		} catch (java.text.ParseException e) {
			e.printStackTrace();
		}
		txtA__GhiChu.setText(ghiChu);
		if (gioiTinh.equals("Nam")) {
			rdbt__nam.setSelected(true);
		} else {
			rdbt__nu.setSelected(true);
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {

		Object o = e.getSource();

		if (o.equals(btn__Save)) {
			themKhachHang();
		}

		if (o.equals(btn__exit)) {
			setVisible(false);
		}
	}

	public void themKhachHang() {
		String tenKhachHang = txt__TenKH.getText();
		String diaChi = txt__DiaChi.getText();
		String sdt = txt__SDT.getText();
		java.sql.Date ngaySinh = new Date((date_NgaySinh).getDate().getTime());
		String ghiChu = txtA__GhiChu.getText();
		HelpRamDomKH helpRamDomKH = new HelpRamDomKH(txt__SDT.getText());
		String maKhachHang = helpRamDomKH.taoMa("KhachHang", "maKhachHang", "KH");
		txt__MaKH.setText(maKhachHang);
		int diemThuong = 0;
		boolean gioiTinh = btngr__gioiTinh.getSelection().getActionCommand().equals("Nam");
		KhachHang kh = new KhachHang(maKhachHang, tenKhachHang, gioiTinh, ngaySinh, diaChi, sdt, diemThuong, ghiChu);
		System.out.println(kh.toString());
		if (DAO_KH.layKhachHang_TheoMaKhachHang(maKhachHang) == null) {
			try {
				DAO_KH.taoKhachHang(kh);
				JOptionPane.showMessageDialog(null, "Thêm khách hàng " + tenKhachHang + " thành công!");
				setVisible(false);
			} catch (Exception e2) {
				// TODO: handle exception
				JOptionPane.showMessageDialog(null, "Không thể thêm khách hàng!");
			}
		} else {
			JOptionPane.showMessageDialog(null, "Khách hàng " + tenKhachHang + " đã tồn tại!");

		}
	}
}