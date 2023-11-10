package GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.filechooser.FileNameExtensionFilter;

import com.formdev.flatlaf.FlatLightLaf;

import ConnectDB.ConnectDB;
import DAO.LoaiNhanVien_DAO;
import DAO.NhanVien_DAO;
import Entity.KhachHang;
import Entity.LoaiNhanVien;
import Entity.NhanVien;
import OtherFunction.HelpRamDomKH;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import java.awt.Font;
import java.awt.Image;
import java.awt.Color;
import java.awt.Component;

import javax.swing.AbstractButton;
import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.io.File;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.awt.event.ActionEvent;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.JRadioButton;
import javax.swing.JSpinner;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.UIManager;
import java.awt.Font;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;

public class Modal_ThemNhanVien extends JFrame implements ActionListener {

	private JPanel contentPane;

	private JTextField txt_MaNhanVien;
	private JTextField txt_TenNhanVien;
	private JTextField txt_SoDienThoai;
	private JTextField txt_DiaChi;
	private JTextField txt_CCCD;
	private SimpleDateFormat dateFormat_YMD = new SimpleDateFormat("yyyy-MM-dd");

	private LoaiNhanVien_DAO DAO_LNV;

	private ArrayList<LoaiNhanVien> listLNV;

	private JButton btn_Them;
	private JButton btn_BoQua;

	private ButtonGroup btngr_GioiTinh;

	private JComboBox<String> cbox__loaiNhanVien;

	private JDateChooser dateCh_NgaySinh;

	private JComboBox<String> comboBox_TrangThai;

	private JLabel img_show_panel;

	private String pathImg;

	private AbstractButton rdbtn_Nam;

	private AbstractButton rdbtn_Nu;

	/**
	 * Launch the application.
	 */

	/**
	 * Create the frame.
	 */
	public Modal_ThemNhanVien() {

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1024, 450);
		contentPane = new JPanel();

		contentPane.setBackground(Color.WHITE);

		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);

		JPanel pnl_TieuDe = new JPanel();
		pnl_TieuDe.setBackground(Color.WHITE);
		pnl_TieuDe.setBounds(26, 25, 237, 35);
		contentPane.add(pnl_TieuDe);
		pnl_TieuDe.setLayout(null);

		JLabel lbl_Title = new JLabel("Thêm nhân viên mới");
		lbl_Title.setBounds(0, 10, 237, 20);
		lbl_Title.setFont(new Font("Segoe UI", Font.BOLD, 18));

		pnl_TieuDe.add(lbl_Title);

		JPanel pnl_Anh = new JPanel();
		pnl_Anh.setBackground(Color.WHITE);
		pnl_Anh.setBounds(26, 70, 179, 234);
		contentPane.add(pnl_Anh);
		pnl_Anh.setLayout(null);

		///
		img_show_panel = new JLabel();
		img_show_panel.setBounds(10, 10, 179, 192);
		pnl_Anh.add(img_show_panel);

		JButton btn_ChonAnh = new JButton("Chọn ảnh");
		btn_ChonAnh.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_ChonAnh.setForeground(new Color(255, 255, 255));

		btn_ChonAnh.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				img_show_panel.setIcon(ResizeImage(chooseFileEvent("image")));
			}

			public ImageIcon ResizeImage(String ImagePath) {
				ImageIcon MyImage = new ImageIcon(ImagePath);
				Image img = MyImage.getImage();
				Image newImg = img.getScaledInstance(img_show_panel.getWidth(), img_show_panel.getHeight(),
						Image.SCALE_SMOOTH);
				ImageIcon image = new ImageIcon(newImg);
				return image;
			}
		});

		btn_ChonAnh.setBackground(new Color(0, 128, 255));
		btn_ChonAnh.setBounds(0, 202, 179, 32);
		pnl_Anh.add(btn_ChonAnh);

		JPanel pnl_ThongTin = new JPanel();
		pnl_ThongTin.setBackground(Color.WHITE);
		pnl_ThongTin.setBounds(224, 70, 765, 234);
		contentPane.add(pnl_ThongTin);
		pnl_ThongTin.setLayout(null);

		JPanel pnl_MaNhanVien = new JPanel();
		pnl_MaNhanVien.setBackground(Color.WHITE);
		pnl_MaNhanVien.setBounds(10, 5, 350, 25);
		pnl_ThongTin.add(pnl_MaNhanVien);
		pnl_MaNhanVien.setLayout(null);

		JLabel lbl_MaNhanVien = new JLabel("Mã nhân viên");
		lbl_MaNhanVien.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_MaNhanVien.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_MaNhanVien.setBounds(0, 0, 110, 25);
		pnl_MaNhanVien.add(lbl_MaNhanVien);

		txt_MaNhanVien = new JTextField();
		txt_MaNhanVien.setEditable(false);
		txt_MaNhanVien.setBounds(125, 0, 225, 25);
		pnl_MaNhanVien.add(txt_MaNhanVien);
		txt_MaNhanVien.setColumns(10);

		JPanel pnl_ChucVu = new JPanel();
		pnl_ChucVu.setBackground(Color.WHITE);
		pnl_ChucVu.setLayout(null);
		pnl_ChucVu.setBounds(405, 5, 350, 25);
		pnl_ThongTin.add(pnl_ChucVu);

		JLabel lbl_ChucVu = new JLabel("Chức vụ");
		lbl_ChucVu.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_ChucVu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_ChucVu.setBounds(0, 0, 110, 25);
		pnl_ChucVu.add(lbl_ChucVu);

		// Xử lý combox DAO_LoaiNhanVien
		cbox__loaiNhanVien = new JComboBox();
		cbox__loaiNhanVien.setBounds(125, 0, 225, 25);
		pnl_ChucVu.add(cbox__loaiNhanVien);
		cbox__loaiNhanVien.addItem("Chọn chức vụ");

		DAO_LNV = new LoaiNhanVien_DAO();
		try {
			listLNV = DAO_LNV.layTatCaLoaiNhanVien();
			if (listLNV != null) {
				listLNV.forEach((lnv) -> {
					cbox__loaiNhanVien.addItem(lnv.getTenLoaiNhanVien());
				});
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		JPanel pnl_TenNhanVien = new JPanel();
		pnl_TenNhanVien.setBackground(Color.WHITE);
		pnl_TenNhanVien.setLayout(null);
		pnl_TenNhanVien.setBounds(10, 50, 350, 25);
		pnl_ThongTin.add(pnl_TenNhanVien);

		JLabel lbl_TenNhanVien = new JLabel("Tên nhân viên");
		lbl_TenNhanVien.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TenNhanVien.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_TenNhanVien.setBounds(0, 0, 110, 25);
		pnl_TenNhanVien.add(lbl_TenNhanVien);

		txt_TenNhanVien = new JTextField();
		txt_TenNhanVien.setColumns(10);
		txt_TenNhanVien.setBounds(125, 0, 225, 25);
		pnl_TenNhanVien.add(txt_TenNhanVien);

		JPanel pnl_NgaySinh = new JPanel();
		pnl_NgaySinh.setBackground(Color.WHITE);
		pnl_NgaySinh.setLayout(null);
		pnl_NgaySinh.setBounds(10, 95, 350, 25);
		pnl_ThongTin.add(pnl_NgaySinh);

		JLabel lbl_NgaySinh = new JLabel("Ngày sinh");
		lbl_NgaySinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_NgaySinh.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_NgaySinh.setBounds(0, 0, 110, 25);
		pnl_NgaySinh.add(lbl_NgaySinh);

		dateCh_NgaySinh = new JDateChooser();
		dateCh_NgaySinh.setDateFormatString("yyyy-MM-dd");
		dateCh_NgaySinh.setBounds(127, 0, 223, 25);
		pnl_NgaySinh.add(dateCh_NgaySinh);

		JPanel pnl_GioiTinh = new JPanel();
		pnl_GioiTinh.setBackground(Color.WHITE);
		pnl_GioiTinh.setLayout(null);
		pnl_GioiTinh.setBounds(10, 140, 350, 25);
		pnl_ThongTin.add(pnl_GioiTinh);

		btngr_GioiTinh = new ButtonGroup();

		JLabel lbl_GioiTinh = new JLabel("Giới tính");
		lbl_GioiTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_GioiTinh.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_GioiTinh.setBounds(0, 0, 110, 25);
		pnl_GioiTinh.add(lbl_GioiTinh);

		rdbtn_Nam = new JRadioButton("Nam");
		rdbtn_Nam.setBackground(Color.WHITE);
		rdbtn_Nam.setBounds(125, 0, 50, 25);
		pnl_GioiTinh.add(rdbtn_Nam);

		rdbtn_Nu = new JRadioButton("Nữ");
		rdbtn_Nu.setBackground(Color.WHITE);
		rdbtn_Nu.setBounds(190, 0, 50, 25);
		pnl_GioiTinh.add(rdbtn_Nu);
		rdbtn_Nam.setActionCommand("Nam");
		rdbtn_Nu.setActionCommand("Nu");

		btngr_GioiTinh.add(rdbtn_Nu);
		btngr_GioiTinh.add(rdbtn_Nam);

		JPanel pnl_TrangThai = new JPanel();
		pnl_TrangThai.setBackground(Color.WHITE);
		pnl_TrangThai.setLayout(null);
		pnl_TrangThai.setBounds(10, 185, 350, 25);
		pnl_ThongTin.add(pnl_TrangThai);

		JLabel lbl_TrangThai = new JLabel("Trạng thái");
		lbl_TrangThai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TrangThai.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_TrangThai.setBounds(0, 0, 110, 25);
		pnl_TrangThai.add(lbl_TrangThai);

		String[] dsTrangThai = { "Chọn trạng thái", "Còn làm", "Nghỉ việc", "Nghỉ phép" };
		comboBox_TrangThai = new JComboBox(dsTrangThai);
		comboBox_TrangThai.setBounds(125, 0, 225, 25);
		pnl_TrangThai.add(comboBox_TrangThai);

		JPanel pnl_SoDienThoai = new JPanel();
		pnl_SoDienThoai.setBackground(Color.WHITE);
		pnl_SoDienThoai.setLayout(null);
		pnl_SoDienThoai.setBounds(405, 50, 350, 25);
		pnl_ThongTin.add(pnl_SoDienThoai);

		JLabel lbl_SoDienThoai = new JLabel("Số điện thoại");
		lbl_SoDienThoai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SoDienThoai.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_SoDienThoai.setBounds(0, 0, 110, 25);
		pnl_SoDienThoai.add(lbl_SoDienThoai);

		txt_SoDienThoai = new JTextField();
		txt_SoDienThoai.setColumns(10);
		txt_SoDienThoai.setBounds(125, 0, 225, 25);
		pnl_SoDienThoai.add(txt_SoDienThoai);

		JPanel pnl_DiaChi = new JPanel();
		pnl_DiaChi.setBackground(Color.WHITE);
		pnl_DiaChi.setLayout(null);
		pnl_DiaChi.setBounds(405, 95, 350, 25);
		pnl_ThongTin.add(pnl_DiaChi);

		JLabel lbl_DiaChi = new JLabel("Địa chỉ");
		lbl_DiaChi.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_DiaChi.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_DiaChi.setBounds(0, 0, 110, 25);
		pnl_DiaChi.add(lbl_DiaChi);

		txt_DiaChi = new JTextField();
		txt_DiaChi.setColumns(10);
		txt_DiaChi.setBounds(125, 0, 225, 25);
		pnl_DiaChi.add(txt_DiaChi);

		JPanel pnl_CCCD = new JPanel();
		pnl_CCCD.setBackground(Color.WHITE);
		pnl_CCCD.setLayout(null);
		pnl_CCCD.setBounds(405, 140, 350, 25);
		pnl_ThongTin.add(pnl_CCCD);

		JLabel lbl_CCCD = new JLabel("Số CCCD");
		lbl_CCCD.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_CCCD.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_CCCD.setBounds(0, 0, 110, 25);
		pnl_CCCD.add(lbl_CCCD);

		txt_CCCD = new JTextField();
		txt_CCCD.setColumns(10);
		txt_CCCD.setBounds(125, 0, 225, 25);
		pnl_CCCD.add(txt_CCCD);

		JPanel panel = new JPanel();
		panel.setBounds(50, 70, 179, 234);

		btn_Them = new JButton("Lưu");
		btn_Them.setForeground(Color.WHITE);
		btn_Them.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_Them.setBackground(new Color(0, 128, 255));
		btn_Them.setBounds(751, 314, 95, 32);
		contentPane.add(btn_Them);

		btn_Them.addActionListener(this);

		contentPane.add(panel);

		btn_BoQua = new JButton("Bỏ qua");
		btn_BoQua.setForeground(Color.WHITE);
		btn_BoQua.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_BoQua.setBackground(new Color(0, 128, 255));
		btn_BoQua.setBounds(856, 314, 89, 32);
		btn_BoQua.addActionListener(this);
		contentPane.add(btn_BoQua);

	}

	public void setModal_ThemNhanVien(String maNhanVien, String loaiNhanVien, String hoTen, String gioiTinh,
			String ngaySinh, String sdt, String cccd, String diaChi, String trangThai, String anhThe) {
		txt_MaNhanVien.setText(maNhanVien);
		txt_TenNhanVien.setText(hoTen);
		txt_SoDienThoai.setText(sdt);
		txt_DiaChi.setText(diaChi);
		txt_CCCD.setText(cccd);
		java.util.Date ngaySinhStr;
//		img_show_panel.setIcon(new ImageIcon(Modal_ThemNhanVien.class.getResource(anhThe)));

		try {
			ngaySinhStr = dateFormat_YMD.parse(ngaySinh);
			dateCh_NgaySinh.setDate(ngaySinhStr);
		} catch (java.text.ParseException e) {
			e.printStackTrace();
		}

		if (gioiTinh.equals("Nam")) {
			rdbtn_Nam.setSelected(true);
		} else {
			rdbtn_Nu.setSelected(true);
		}

		for (LoaiNhanVien loaiNV : DAO_LNV.layTatCaLoaiNhanVien()) {
			if (loaiNhanVien.equals(loaiNV.getTenLoaiNhanVien().trim())) {
				cbox__loaiNhanVien.setSelectedItem(loaiNhanVien);
				break;
			}
		}

		int soLuongTrangThai = comboBox_TrangThai.getItemCount();
		for (int i = 0; i < soLuongTrangThai; i++) {
			String item = comboBox_TrangThai.getItemAt(i);
			if (item.equals(trangThai)) {
				comboBox_TrangThai.setSelectedItem(trangThai);
				break;
			}
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if (o.equals(btn_Them)) {
			if (txt_MaNhanVien.getText().equals("")) {
				ThemNhanVien();
			} else {
				CapNhatNhanVien();
			}
		}

		if (o.equals(btn_BoQua)) {
			dispose();
		}
	}

	public void ThemNhanVien() {
		if (ValueDate()) {
			String anhThe = pathImg;
			String CCCD = txt_CCCD.getText();
			String diaChi = txt_DiaChi.getText();
			boolean gioiTinh = btngr_GioiTinh.getSelection().getActionCommand().equals("Nam");
			String hoTen = txt_TenNhanVien.getText();
			Date ngaySinh = null;
			try {
				ngaySinh = new Date((dateCh_NgaySinh).getDate().getTime());
			} catch (Exception e) {
				// TODO: handle exception
				JOptionPane.showMessageDialog(null, "Ngày sinh không được để trống!");
			}
			LoaiNhanVien loaiNhanVien = null;
			loaiNhanVien = DAO_LNV
					.layLoaiNhanVien_TheoTenLoaiNhanVien(cbox__loaiNhanVien.getSelectedItem().toString().trim());
			String soDienThoai = txt_SoDienThoai.getText();
			String trangThai = "";

			HelpRamDomKH helpRamDomKH = new HelpRamDomKH(txt_SoDienThoai.getText());
			String maNhanVien = helpRamDomKH.taoMa("NhanVien", "maNhanVien", "NV");
			txt_MaNhanVien.setText(maNhanVien);

			int soLuongTrangThai = comboBox_TrangThai.getItemCount();
			for (int i = 0; i < soLuongTrangThai; i++) {
				String item = comboBox_TrangThai.getItemAt(i);
				trangThai = comboBox_TrangThai.getSelectedItem().toString();
				if (item.equals(trangThai)) {
					trangThai = item;
					break;
				}
			}

			NhanVien nv = new NhanVien(maNhanVien, loaiNhanVien, hoTen, gioiTinh, ngaySinh, soDienThoai, CCCD, diaChi,
					trangThai, anhThe);
			System.out.println(nv);

			try {
				NhanVien_DAO DAO_NV = new NhanVien_DAO();
				if (DAO_NV.taoNhanVien(nv)) {
					JOptionPane.showMessageDialog(null, "Tạo mới nhân viên thành công");
					setVisible(false);
				} else {
					JOptionPane.showMessageDialog(null, "Tạo mới nhân viên thất bại. Vui lòng thử lại");
				}

			} catch (Exception e2) {
				// TODO: handle exception
				JOptionPane.showConfirmDialog(null, "Tạo mới nhân viên thất bại, vui lòng thử lại");
				e2.printStackTrace();
			}
		}
	}

	public void CapNhatNhanVien() {
		if (ValueDate()) {
			String anhThe = pathImg;
			String CCCD = txt_CCCD.getText();
			String diaChi = txt_DiaChi.getText();
			boolean gioiTinh = btngr_GioiTinh.getSelection().getActionCommand().equals("Nam");
			String hoTen = txt_TenNhanVien.getText();
			Date ngaySinh = null;
			try {
				ngaySinh = new Date((dateCh_NgaySinh).getDate().getTime());
			} catch (Exception e) {
				// TODO: handle exception
				JOptionPane.showMessageDialog(null, "Ngày sinh không được để trống!");
			}

			String soDienThoai = txt_SoDienThoai.getText();
			String trangThai = "";
			String maNhanVien = txt_MaNhanVien.getText().trim();

			int soLuongTrangThai = comboBox_TrangThai.getItemCount();
			for (int i = 0; i < soLuongTrangThai; i++) {
				String item = comboBox_TrangThai.getItemAt(i);
				trangThai = comboBox_TrangThai.getSelectedItem().toString();
				if (item.equals(trangThai)) {
					trangThai = item;
					break;
				}
			}

			LoaiNhanVien loaiNhanVien = null;
			String loaiNV = "";
			int soLuongLoaiNV = cbox__loaiNhanVien.getItemCount();
			for (int i = 0; i < soLuongLoaiNV; i++) {
				String item = cbox__loaiNhanVien.getItemAt(i);
				loaiNV = cbox__loaiNhanVien.getSelectedItem().toString();
				if (item.equals(loaiNV)) {
					loaiNV = item;
					break;
				}
			}

			loaiNhanVien = DAO_LNV.layLoaiNhanVien_TheoTenLoaiNhanVien(loaiNV);
			NhanVien nv = new NhanVien(maNhanVien, loaiNhanVien, hoTen, gioiTinh, ngaySinh, soDienThoai, CCCD, diaChi,
					trangThai, anhThe);

			System.out.println(nv.toString());

			try {
				int t = JOptionPane.showConfirmDialog(null, "Xác nhận thay đổi thông tin nhân viên?", "Xác nhận",
						JOptionPane.YES_NO_OPTION);
				if (t == JOptionPane.YES_OPTION) {
					NhanVien_DAO DAO_NV = new NhanVien_DAO();
					if (DAO_NV.capNhatNhanVien(nv)) {
						JOptionPane.showMessageDialog(null, "Cập nhật nhân viên thành công");
						setVisible(false);
					} else {
						JOptionPane.showMessageDialog(null, "Cập nhật thông tin nhân viên thất bại. Vui lòng thử lại");
					}
				}
			} catch (Exception e2) {
				// TODO: handle exception
				JOptionPane.showConfirmDialog(null, "Cập nhật thông tin nhân viên thất bại, vui lòng thử lại");
				e2.printStackTrace();
			}
		}
	}

	public boolean ValueDate() {
		String tenNV = txt_TenNhanVien.getText().trim();
		String chucVu = cbox__loaiNhanVien.getSelectedItem().toString().trim();
		String chonChucVu = cbox__loaiNhanVien.getItemAt(0).toString().trim();
		boolean gt_Nam = rdbtn_Nam.isSelected();
		boolean gt_Nu = rdbtn_Nu.isSelected();
		String trangThai = comboBox_TrangThai.getSelectedItem().toString().trim();
		String chonTrangThai = comboBox_TrangThai.getItemAt(0).toString().trim();
		String soDienThoai = txt_SoDienThoai.getText().trim();
		String diaChi = txt_DiaChi.getText().trim();
		String cccd = txt_CCCD.getText().trim();

		if (txt_TenNhanVien.equals("")) {
			txt_TenNhanVien.requestFocus();
			JOptionPane.showMessageDialog(null, "Tên nhân viên không được rỗng");
			return false;
		} else if (!(tenNV.length() > 0
				&& tenNV.matches("[aAàÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬbBcCdDđĐeEèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆ\\r\\n\"\r\n"
						+ "					+ \"fFgGhHiIìÌỉỈĩĨíÍịỊjJkKlLmMnNoOòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢpPqQrRsStTu\\r\\n\"\r\n"
						+ "					+ \"UùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰvVwWxXyYỳỲỷỶỹỸýÝỵỴzZ ]+"))) {
			System.out.println(tenNV);
			JOptionPane.showMessageDialog(null, "Tên nhân viên không hợp lệ");
			txt_TenNhanVien.requestFocus();
			return false;
		}

		try {
			Date ngaySinh = new Date(dateCh_NgaySinh.getDate().getTime());
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DAY_OF_MONTH, -18);
			java.util.Date chkNgaySinh = new java.util.Date(cal.getTimeInMillis());
			if (!(ngaySinh.before(chkNgaySinh))) {
				JOptionPane.showMessageDialog(null, "Nhân viên này chưa đủ 18 tuổi!");
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			JOptionPane.showMessageDialog(null, "Ngày sinh không được để trống!");
		}

		if (!gt_Nam && !gt_Nu) {
			JOptionPane.showMessageDialog(null, "Giới tính chưa được chọn!");
			return false;
		}

		if (chucVu.equals(chonChucVu)) {
			JOptionPane.showMessageDialog(null, "Chức vụ chưa được chọn!");
			return false;
		}

		if (trangThai.equals(chonTrangThai)) {
			JOptionPane.showMessageDialog(null, "Trạng thái chưa được chọn!");
			return false;
		}

		if (soDienThoai.equals("")) {
			txt_SoDienThoai.requestFocus();
			JOptionPane.showMessageDialog(null, "Số điện thoại không được rỗng");
			return false;
		} else if (!(soDienThoai.length() > 0 && soDienThoai.matches("^(\\+84|0)(3|9|5|7|8)\\d{8}$"))) {
			JOptionPane.showMessageDialog(null, "Số điện thoại không hợp lệ");
			txt_SoDienThoai.requestFocus();
			return false;
		}

		if (diaChi.equals("")) {
			txt_DiaChi.requestFocus();
			JOptionPane.showMessageDialog(null, "Địa chỉ không được rỗng");
			return false;
		} else if (!(diaChi.length() > 0 && diaChi.matches("[\\p{L}0-9,.'_ ]+"))) {
			JOptionPane.showMessageDialog(null, "Địa chỉ không hợp lệ");
			txt_DiaChi.requestFocus();
			return false;
		}

		if (cccd.equals("")) {
			txt_CCCD.requestFocus();
			JOptionPane.showMessageDialog(null, "Căn cước công dân không được rỗng");
			return false;
		} else if (!(cccd.length() > 0 && cccd.matches("^(([0-9]{9})|([0-9]{12}))$"))) {
			JOptionPane.showMessageDialog(null, "CCCD / CMND không hợp lệ");
			txt_CCCD.requestFocus();
			return false;
		}
		return true;
	}

	public String chooseFileEvent(String typeFile) {
		JFileChooser file = new JFileChooser();
		String path = "";
		file.setCurrentDirectory(new File(System.getProperty("user.home")));

		FileNameExtensionFilter filterImage = new FileNameExtensionFilter("*.Images", "jpg", "gif", "png", "xlsx",
				"xls");
		FileNameExtensionFilter filterExcel = new FileNameExtensionFilter("xlsx", "xls");

		// Doc path image
		if (typeFile.equals("image")) {
			file.addChoosableFileFilter(filterImage);
		}
		// Doc path excel
		else if (typeFile.equals("excel")) {
			file.addChoosableFileFilter(filterExcel);
		}

		int result = file.showSaveDialog(null);
		if (result == JFileChooser.APPROVE_OPTION) {

			File selectedFile = file.getSelectedFile();
			path = selectedFile.getAbsolutePath();
			pathImg += path;
			return path;
		}

		else if (result == JFileChooser.CANCEL_OPTION) {
			System.out.println("Không tìm thấy file tải lên");
			JOptionPane.showMessageDialog(null, "Không tìm thấy file tải lên");
		}
		return path;
	}
}
