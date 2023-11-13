package GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import DAO.DichVu_DAO;
import Entity.DichVu;

import java.awt.FlowLayout;
import java.awt.Color;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;

public class Modal_CapNhatSoLuong extends JFrame implements ActionListener {

	private JPanel contentPane;
	private JTextField txt_soLuong;
	private JButton btn_giam;
	private JButton btn_tang;
	private JButton btn_thoat;
	private JButton btn_save;
//	private DefaultTableModel model_datDichVu;
//	private DefaultTableModel model_dichVu;
	private JTable table_datDichVu;
	private JTable table_DichVu;

	private double donGiaDV;

	private int soLuong;
	private int colSelected;
	private int rowSelected;
	private int soLuongBanDau;
	private DichVu_DAO DAO_DV;
	private DichVu dv;
	private final DecimalFormat dcf = new DecimalFormat("#,##0 VND");

	/**
	 * Create the frame.
	 */
	public Modal_CapNhatSoLuong(JTable table_datDichVu, JTable table_DichVu, int soLuong, int colSelected,
			int rowSelected) {

		this.table_datDichVu = table_datDichVu;
		this.table_DichVu = table_DichVu;
		this.soLuong = soLuong;
		this.colSelected = colSelected;
		this.rowSelected = rowSelected;

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 400, 200);
		setTitle("Cập nhật số lượng");
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);

		JPanel panel = new JPanel();
		panel.setBounds(10, 43, 332, 51);
		contentPane.add(panel);
		panel.setLayout(null);
		panel.setBackground(Color.WHITE);

		txt_soLuong = new JTextField();
		txt_soLuong.setBounds(83, 10, 168, 36);
		panel.add(txt_soLuong);
		txt_soLuong.setColumns(10);

		btn_giam = new JButton("Giảm");
		btn_giam.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_giam.setBounds(0, 10, 85, 36);
		panel.add(btn_giam);

		btn_tang = new JButton("Tăng");
		btn_tang.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_tang.setBounds(247, 10, 85, 36);
		panel.add(btn_tang);

		JLabel lblNewLabel = new JLabel("Cập nhật số lượng");
		lblNewLabel.setFont(new Font("Segoe UI", Font.BOLD, 14));
		lblNewLabel.setBounds(10, 10, 192, 35);
		contentPane.add(lblNewLabel);

		JPanel panel_1 = new JPanel();
		panel_1.setBounds(135, 104, 241, 42);
		contentPane.add(panel_1);
		panel_1.setLayout(null);
		panel_1.setBackground(Color.WHITE);

		btn_thoat = new JButton("Thoát");
		btn_thoat.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_thoat.setBounds(31, 5, 94, 35);
		panel_1.add(btn_thoat);

		btn_save = new JButton("Xác nhận");
		btn_save.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_save.setBounds(135, 5, 94, 35);
		panel_1.add(btn_save);

		txt_soLuong.setText(String.valueOf(soLuong));
		btn_giam.addActionListener(this);
		btn_save.addActionListener(this);
		btn_tang.addActionListener(this);
		btn_thoat.addActionListener(this);

	}

	public int getSoLuongBanDau() {
		return soLuongBanDau;
	}

	public void setSoLuongBanDau(int soLuongBanDau) {
		this.soLuongBanDau = soLuongBanDau;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub

		Object o = e.getSource();

		try {

			String maDichVu = table_datDichVu.getValueAt(rowSelected, 0).toString();
			DAO_DV = new DichVu_DAO();
			dv = DAO_DV.layDichVu_TheoMaDichVu(maDichVu);

			if (dv != null) {
				setSoLuongBanDau(dv.getSoLuong());
				setDonGiaDV(dv.getDonGia());
			}

		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}

		if (o.equals(btn_giam)) {

			int sl = Integer.parseInt(txt_soLuong.getText());

			if (sl >= 1) {
				txt_soLuong.setText(String.valueOf(sl - 1));
			}
		}

		if (o.equals(btn_save)) {

			String soLuong = txt_soLuong.getText();

			String maDichVu = table_datDichVu.getValueAt(rowSelected, 0).toString();
			int rowCount = table_DichVu.getRowCount();

			if (soLuong.trim().equals("")) {
				setVisible(false);
			}
			if (Integer.parseInt(soLuong) == 0) {

				for (int i = 0; i <= rowCount; i++) {
					if (maDichVu.equals(table_datDichVu.getValueAt(i, 0).toString())) {

						DefaultTableModel model = (DefaultTableModel) table_datDichVu.getModel();
						model.removeRow(i);

						for (int i1 = 0; i1 <= rowCount; i1++) {
							if (maDichVu.equals(table_DichVu.getValueAt(i1, 0).toString())) {

								table_DichVu.setValueAt(String.valueOf(getSoLuongBanDau()), i1, colSelected);

							}
						}
						setVisible(false);
					}
				}

			}
//			if (Integer.parseInt(soLuong) == 1) {
//
//				JOptionPane.showMessageDialog(null, "Số lượng lớn hơn hoặc bằng 1");
//				table_datDichVu.setValueAt(1, rowSelected, colSelected);
//				// Cap nhat thanh tien moi
//				int soLuongMoiCapNhat = Integer.parseInt(txt_soLuong.getText());
//				double thanhTienMoi = soLuongMoiCapNhat * getDonGiaDV();
//
//				String dcf_thanhTienMoi = dcf.format(thanhTienMoi);
//				table_datDichVu.setValueAt(dcf_thanhTienMoi, rowSelected, 4);
//				setVisible(false);
//
//			} 
			else {

				if (Integer.parseInt(txt_soLuong.getText()) > getSoLuongBanDau()) {

					txt_soLuong.setText(String.valueOf(getSoLuongBanDau()));
					// Cap nhat thanh tien moi
					int soLuongMoiCapNhat = Integer.parseInt(txt_soLuong.getText());
					double thanhTienMoi = soLuongMoiCapNhat * getDonGiaDV();

					String dcf_thanhTienMoi = dcf.format(thanhTienMoi);
					table_datDichVu.setValueAt(dcf_thanhTienMoi, rowSelected, 4);

					for (int i = 0; i < rowCount; i++) {
						if (maDichVu.equals(table_DichVu.getValueAt(i, 0).toString())) {

							table_DichVu.setValueAt(0, i, colSelected);
						}
					}
					table_datDichVu.setValueAt(getSoLuongBanDau(), rowSelected, colSelected);
					JOptionPane.showMessageDialog(null, "Số lượng vượt quá số lượng tồn");
				}

				if (Integer.parseInt(txt_soLuong.getText()) <= getSoLuongBanDau()) {

					// Cap nhat thanh tien moi
					int soLuongMoiCapNhat = Integer.parseInt(txt_soLuong.getText());
					double thanhTienMoi = soLuongMoiCapNhat * getDonGiaDV();

					String dcf_thanhTienMoi = dcf.format(thanhTienMoi);
					table_datDichVu.setValueAt(dcf_thanhTienMoi, rowSelected, 4);

					table_datDichVu.setValueAt(Integer.parseInt(txt_soLuong.getText()), rowSelected, colSelected);
					for (int i = 0; i < rowCount; i++) {
						if (maDichVu.equals(table_DichVu.getValueAt(i, 0).toString())) {

							table_DichVu.setValueAt(String.valueOf(getSoLuongBanDau() - soLuongMoiCapNhat), i,
									colSelected);

						}
					}
					setVisible(false);
				}
			}

		}
		if (o.equals(btn_tang)) {

			int sl = Integer.parseInt(txt_soLuong.getText());

			String maDichVu = table_datDichVu.getValueAt(rowSelected, 0).toString();
			int rowCount = table_DichVu.getRowCount();

			for (int i = 0; i < rowCount; i++) {
				if (maDichVu.equals(table_DichVu.getValueAt(i, 0).toString())) {
					soLuongBanDau = Integer.parseInt(table_DichVu.getValueAt(i, 2).toString());

				}
			}

			if (sl == getSoLuongBanDau()) {
				JOptionPane.showMessageDialog(null, "Số lượng vượt quá số lượng tồn");
				txt_soLuong.setText(String.valueOf(sl));

			} else
				txt_soLuong.setText(String.valueOf(sl + 1));

		}
		if (o.equals(btn_thoat)) {
			this.setVisible(false);
		}

	}

	public double getDonGiaDV() {
		return donGiaDV;
	}

	public void setDonGiaDV(double donGiaDV) {
		this.donGiaDV = donGiaDV;
	}

}
