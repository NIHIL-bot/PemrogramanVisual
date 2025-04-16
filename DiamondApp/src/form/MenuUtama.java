/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package form;
import javax.swing.*;

/**
 *
 * @author user
 */
public class MenuUtama extends JFrame {
    public MenuUtama() {
        setTitle("Menu Utama");
        setSize(400, 300);
        setLayout(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JButton btnPelanggan = new JButton("Form Pelanggan");
        JButton btnKasir = new JButton("Form Kasir");

        btnPelanggan.setBounds(100, 60, 200, 40);
        btnKasir.setBounds(100, 120, 200, 40);

        add(btnPelanggan);
        add(btnKasir);

        // Event buka form
        btnPelanggan.addActionListener(e -> {
            new PelangganForm().setVisible(true);
        });

        btnKasir.addActionListener(e -> {
            new KasirForm().setVisible(true);
        });
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new MenuUtama().setVisible(true));
    }

}
