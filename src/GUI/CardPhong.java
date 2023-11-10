package GUI;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.Calendar;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;

import DAO.KhachHang_DAO;
import DAO.LoaiPhong_DAO;
import DAO.NhanVien_DAO;
import DAO.PhieuDatPhong_DAO;
import DAO.Phong_DAO;
import DAO.TrangThaiPhong_DAO;
import Entity.KhachHang;
import Entity.LoaiPhong;
import Entity.NhanVien;
import Entity.PhieuDatPhong;
import Entity.Phong;
import Entity.TrangThaiPhong;

/**
 * CardPhong
 * 
 * 
 */
public class CardPhong extends JPanel {
	private Phong phong;
	private int width = 157;
	private int height = 157;

	private String hexColor_Blue1 = "#054A91";
	private String hexColor_Blue2 = "#3E7CB1";
	private String hexColor_Blue3 = "#81A4CD";
	private String hexColor_Blue4 = "#DBE4EE";

	private LoaiPhong loaiP;
	private KhachHang kh;
	private NhanVien nv;
	private Phong ph;
	private PhieuDatPhong pdp;
	private PhieuDatPhong phieu;
	private ArrayList<Phong> dsPhong;
	private ArrayList<KhachHang> dsKhachHang;
	private ArrayList<NhanVien> dsNhanVien;
	private ArrayList<PhieuDatPhong> dsPhieuDatPhong;
	private KhachHang_DAO DAO_KH;
	private NhanVien_DAO DAO_NV;
	private PhieuDatPhong_DAO DAO_PDP;
	private Phong_DAO DAO_P;
	private Calendar cal = Calendar.getInstance();
	private String tenNV;
	private String tenKH;
	private String sdtKH;

	/**
	 * @param phong
	 */
	public CardPhong(Phong phong) {
		this.phong = phong;

		setPreferredSize(new Dimension(width, height));

		/**
		 * tenPhong
		 */
		setBackground(Color.decode(hexColor_Blue4));
		setLayout(new BorderLayout());

		JLabel nameLabel = new JLabel(phong.getMaPhong());
		nameLabel.setForeground(Color.decode(hexColor_Blue1));

		nameLabel.setHorizontalAlignment(SwingConstants.CENTER);
		add(nameLabel, BorderLayout.CENTER);

		addMouseListener((MouseListener) new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (SwingUtilities.isRightMouseButton(e)) {
					showPopupMenu(e);
				}
			}
		});

	}

	public CardPhong(Phong phong, int width, int height) {
		super();
		this.phong = phong;
		this.width = width;
		this.height = height;
	}

	public Phong getPhong() {
		return phong;
	}

	public void setPhong(Phong phong) {
		this.phong = phong;
	}

	@Override
	protected void paintComponent(Graphics g) {
		super.paintComponent(g);

		TrangThaiPhong trangThaiP = null;

		TrangThaiPhong_DAO DAO_TTP = new TrangThaiPhong_DAO();

		try {
			trangThaiP = DAO_TTP.timTrangThaiPhong_TheoMaTrangThai(phong.getTrangThaiPhong().getMaTrangThai());
		} catch (Exception e) {
			// TODO: handle exception
		}

		// Trong
		if (phong.getTrangThaiPhong().getMaTrangThai().trim().equals("VC")) {
			g.setColor(Color.decode("#00a65a"));
		}

		// Dang hat
		if (phong.getTrangThaiPhong().getMaTrangThai().trim().equals("OC")) {
			g.setColor(Color.decode("#ff6868"));
		}
		// Dat truoc
		if (phong.getTrangThaiPhong().getMaTrangThai().trim().equals("OCP")) {
			g.setColor(Color.decode("#3c8dbc"));
		}
		// Dang sua chua
		if (phong.getTrangThaiPhong().getMaTrangThai().trim().equals("OOO")) {
			g.setColor(Color.decode("#b0bec5"));
		}
		g.fillRect(0, getHeight() - 20, getWidth(), 20);
		g.setColor(Color.white);
		g.drawString(trangThaiP.getTenTrangThai(), 10, getHeight() - 5);
	}

	private void showPopupMenu(MouseEvent e) {

		JPopupMenu menu = new JPopupMenu();
		JMenuItem xemThongTinMenuItem = new JMenuItem("Xem thông tin phòng");
		JMenuItem chuyenPhongMenuItem = new JMenuItem("Chuyển phòng");

		xemThongTinMenuItem.addActionListener(e1 -> {
			JOptionPane.showMessageDialog(this, "Thông tin phòng...");
		});

		chuyenPhongMenuItem.addActionListener(e1 -> {
			DAO_PDP = new PhieuDatPhong_DAO();
			DAO_NV = new NhanVien_DAO();
			DAO_P = new Phong_DAO();
			DAO_KH = new KhachHang_DAO();
			nv = new NhanVien();
			phieu = new PhieuDatPhong();
			dsPhieuDatPhong = DAO_PDP.layTatCaPhieuDatPhong();

			try {
				if (dsPhieuDatPhong != null)
					for (PhieuDatPhong pdp : dsPhieuDatPhong) {
						phieu = DAO_PDP.layPhieuDatPhong_TheoMaPhong(phong.getMaPhong());
						nv = phieu.getNhanVien();
						tenNV = DAO_NV.timNhanVien_TheoMaNhanVien(nv.getMaNhanVien()).getHoTen();
						kh = phieu.getKhachHang();
						tenKH = DAO_KH.layKhachHang_TheoMaKhachHang(kh.getMaKhachHang()).getHoTen();
						sdtKH = DAO_KH.layKhachHang_TheoMaKhachHang(kh.getMaKhachHang()).getSoDienThoai();
						if (phieu != null)
							break;
					}
				Modal_PhieuChuyenPhong phieuChuyenPhong = new Modal_PhieuChuyenPhong();
				phieuChuyenPhong.setVisible(true);
				phieuChuyenPhong.SetModal_PhieuChuyenPhong(phieu.getThoiGianNhanPhong(), phieu.getMaPhieuDat(), tenNV, tenKH, sdtKH);

			} catch (Exception e2) {
				JOptionPane.showMessageDialog(null, "Phòng này chưa được đặt!");
			}

		});
		menu.add(xemThongTinMenuItem);
		menu.add(chuyenPhongMenuItem);
		menu.show(this, e.getX(), e.getY());
	}
}
