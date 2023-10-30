package GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import org.jdatepicker.impl.JDatePanelImpl;
import org.jdatepicker.impl.JDatePickerImpl;
import org.jdatepicker.impl.UtilDateModel;

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
import java.util.ArrayList;
import java.awt.Component;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;
import java.awt.Font;
import java.awt.Color;
import com.toedter.calendar.JDateChooser;
import javax.swing.JScrollPane;
import java.awt.Choice;
import javax.swing.JScrollBar;
import com.toedter.components.JSpinField;

import DAO.LoaiPhong_DAO;
import DAO.Phong_DAO;
import DAO.TrangThaiPhong_DAO;
import Entity.LoaiPhong;
import Entity.Phong;
import Entity.TrangThaiPhong;

import javax.swing.JComboBox;
import javax.swing.border.BevelBorder;
import javax.swing.UIManager;
import javax.swing.border.TitledBorder;
import javax.swing.border.LineBorder;
import java.awt.SystemColor;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Modal_ThemPhong extends JFrame {

	private JPanel contentPane;
	private JTextField txt__MaPhong;
	private JLabel lbl__TenPhong;
	private JDateChooser date_NgayTaoPhong;
	private JLabel img_show_panel;
	private String pathImg = "";
	private Phong_DAO DAO_P = new Phong_DAO();
	private LoaiPhong_DAO DAO_LP = new LoaiPhong_DAO();
	private TrangThaiPhong_DAO DAO_TTP = new TrangThaiPhong_DAO();
	private JTextField txt_TenPhong;
	private JTextField txt_ViTriPhong;
	private JTextArea txtA_GhiChu;
	private ArrayList<LoaiPhong> listLP;
	private JComboBox<String> cbBox_LoaiPhong;
	private JComboBox<String> cbBox_TrangThaiPhong;
	private ArrayList<TrangThaiPhong> listTTP;
	private final SimpleDateFormat ngaySinh = new SimpleDateFormat("yyyy-MM-dd");
	private JComboBox<String> cbBox_TinhTrangPhong_1;

	public Modal_ThemPhong() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 950, 400);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);

		JPanel panel_1 = new JPanel();
		panel_1.setBackground(new Color(255, 255, 255));
		panel_1.setBounds(22, 0, 926, 358);
		contentPane.add(panel_1);

		/****/
		panel_1.setLayout(null);
		//
		JLabel lbl__LoaiPhong = new JLabel("Loại phòng");
		lbl__LoaiPhong.setBounds(43, 159, 96, 27);
		lbl__LoaiPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl__LoaiPhong);

		lbl__TenPhong = new JLabel("Tên phòng");
		lbl__TenPhong.setBounds(43, 111, 119, 25);
		lbl__TenPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl__TenPhong);

		txt__MaPhong = new JTextField();
		txt__MaPhong.setBounds(172, 65, 255, 25);
		panel_1.add(txt__MaPhong);
		txt__MaPhong.setColumns(10);

		JLabel lbl__MaPhong = new JLabel("Mã phòng");
		lbl__MaPhong.setBounds(43, 61, 119, 35);
		lbl__MaPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl__MaPhong);

		JButton btn__exit = new JButton("Bỏ qua");
		btn__exit.setBounds(763, 304, 96, 30);
		panel_1.add(btn__exit);

		btn__exit.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				dispose();
			}
		});

		JLabel lbl__GhiChu = new JLabel("Ghi chú");
		lbl__GhiChu.setBounds(493, 155, 60, 37);
		lbl__GhiChu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl__GhiChu);

		JButton btn__Save = new JButton("Lưu");
		btn__Save.setBounds(642, 304, 96, 30);
		panel_1.add(btn__Save);

		btn__Save.addActionListener(new ActionListener() {
			@Override
			
			
			
			
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String maPhong = txt__MaPhong.getText();
				String tenPhong = txt_TenPhong.getText();
				java.sql.Date ngayTaoPhong = new java.sql.Date(date_NgayTaoPhong.getDate().getTime());
				String viTriPhong = txt_ViTriPhong.getText().trim();
				String ghiChu = txtA_GhiChu.getText().trim();
				String tinhTrangPhong = cbBox_TinhTrangPhong_1.getSelectedItem().toString();

				LoaiPhong lp = null;
				TrangThaiPhong ttp = null;

				if (DAO_P.timPhong_TheoMaLoaiPhong(maPhong) != null) {
					JOptionPane.showMessageDialog(null, "Phòng này đã tồn tại.");
				}

				try {
					// Lay LoaiPhong
					lp = DAO_LP.layLoaiPhong_TheoTenLoaiPhong(cbBox_LoaiPhong.getSelectedItem().toString());
					if (lp == null) {
						JOptionPane.showMessageDialog(null, "Tạo phòng thất bại, vui lòng thử lại.");
						return;
					}

					// Lay Trangthaiphong
					ttp = DAO_TTP.timTrangThaiPhong_TheoTenTrangThai(cbBox_TrangThaiPhong.getSelectedItem().toString());
					if (ttp == null) {
						JOptionPane.showMessageDialog(null, "Tạo phòng thất bại, vui lòng thử lại.");
						return;
					}

				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
					JOptionPane.showMessageDialog(null, "Tạo phòng thất bại, vui lòng thử lại.");
				}

				Phong phong = new Phong(maPhong, tenPhong, lp, ttp, ngayTaoPhong, viTriPhong, ghiChu, tinhTrangPhong);

				System.out.println(phong.toString());
				try {
					if (DAO_P.taoPhong(phong)) {
						
						JOptionPane.showMessageDialog(null, "Tạo phòng mới thành công!");

					} else {
						
						JOptionPane.showMessageDialog(null, "Tạo phòng thất bại, vui lòng thử lại.");
						return;
					}

				} catch (Exception e2) {

					e2.printStackTrace();
				}

			}
			
			
			
		});

		JLabel lbl_NgayTaoPhong = new JLabel("Ngày tạo phòng");
		lbl_NgayTaoPhong.setBounds(493, 115, 105, 25);
		lbl_NgayTaoPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl_NgayTaoPhong);

		JLabel lbl_ViTriPhong = new JLabel("Vị trí phòng");
		lbl_ViTriPhong.setBounds(489, 67, 109, 30);
		lbl_ViTriPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		panel_1.add(lbl_ViTriPhong);

		Box verticalBox_1 = Box.createVerticalBox();
		verticalBox_1.setBounds(641, 42, 0, 0);
		panel_1.add(verticalBox_1);

		Box horizontalBox_4 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_4);

		Box horizontalBox_2 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_2);

		Box horizontalBox_6 = Box.createHorizontalBox();
		verticalBox_1.add(horizontalBox_6);

		JLabel lbl__tieuDe = new JLabel("Thêm phòng mới");
		lbl__tieuDe.setForeground(SystemColor.textHighlight);
		lbl__tieuDe.setBounds(43, 10, 849, 39);
		panel_1.add(lbl__tieuDe);
		lbl__tieuDe.setFont(new Font("Segoe UI", Font.BOLD, 16));

		date_NgayTaoPhong = new JDateChooser();
		date_NgayTaoPhong.setBounds(621, 115, 255, 25);
		panel_1.add(date_NgayTaoPhong);

		JPanel pnl_GhiChu = new JPanel();
		pnl_GhiChu.setBackground(new Color(255, 255, 255));
		pnl_GhiChu.setBorder(new LineBorder(new Color(192, 192, 192)));
		pnl_GhiChu.setBounds(621, 160, 261, 81);
		panel_1.add(pnl_GhiChu);
		pnl_GhiChu.setLayout(null);

		txtA_GhiChu = new JTextArea();
		txtA_GhiChu.setBounds(3, 3, 255, 70);
		pnl_GhiChu.add(txtA_GhiChu);
		txtA_GhiChu.setBackground(new Color(255, 255, 255));
		txtA_GhiChu.setLineWrap(true);

		txt_TenPhong = new JTextField();
		txt_TenPhong.setColumns(10);
		txt_TenPhong.setBounds(172, 111, 255, 25);
		panel_1.add(txt_TenPhong);

		txt_ViTriPhong = new JTextField();
		txt_ViTriPhong.setColumns(10);
		txt_ViTriPhong.setBounds(621, 65, 255, 25);
		panel_1.add(txt_ViTriPhong);

		JLabel lbl_TrangThaiPhong = new JLabel("Trạng thái phòng");
		lbl_TrangThaiPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_TrangThaiPhong.setBounds(43, 214, 119, 27);
		panel_1.add(lbl_TrangThaiPhong);

		cbBox_TrangThaiPhong = new JComboBox<String>();
		cbBox_TrangThaiPhong.setBackground(Color.WHITE);
		cbBox_TrangThaiPhong.setBounds(172, 218, 255, 25);
		panel_1.add(cbBox_TrangThaiPhong);
		DAO_TTP = new TrangThaiPhong_DAO();
		try {
			listTTP = DAO_TTP.layTatCaTrangThaiPhong();
			if (listTTP != null) {
				listTTP.forEach((loaiTTP) -> {
					cbBox_TrangThaiPhong.addItem(loaiTTP.getTenTrangThai().trim());
				});
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		cbBox_LoaiPhong = new JComboBox<String>();
		cbBox_LoaiPhong.setBackground(Color.WHITE);
		cbBox_LoaiPhong.setBounds(172, 161, 255, 25);
		panel_1.add(cbBox_LoaiPhong);

		JLabel lbl_TinhTrangPhong = new JLabel("Tình trạng phòng");
		lbl_TinhTrangPhong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		lbl_TinhTrangPhong.setBounds(43, 270, 119, 25);
		panel_1.add(lbl_TinhTrangPhong);

		cbBox_TinhTrangPhong_1 = new JComboBox<String>();
		cbBox_TinhTrangPhong_1.setBackground(Color.WHITE);
		cbBox_TinhTrangPhong_1.setBounds(172, 271, 255, 25);
		cbBox_TinhTrangPhong_1.addItem("Sửa chữa");
		cbBox_TinhTrangPhong_1.addItem("Đang dọn dẹp");
		cbBox_TinhTrangPhong_1.addItem("Chưa dọn dẹp");
		cbBox_TinhTrangPhong_1.addItem("Đang hoạt động");
		panel_1.add(cbBox_TinhTrangPhong_1);

		DAO_LP = new LoaiPhong_DAO();
		try {
			listLP = DAO_LP.layTatCaLoaiPhong();
			if (listLP != null) {
				listLP.forEach((loaiP) -> {
					cbBox_LoaiPhong.addItem(loaiP.getTenLoaiPhong().trim());
				});
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}