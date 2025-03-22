/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import modelo.Nacionalidad;
import vista.FrmNacionalidad;

/**
 *
 * @author alumno
 */
public class CNacionalidad implements ActionListener{
     // instancias
    Nacionalidad nacionalidad = new Nacionalidad();
    NacionalidadDAO nacionalidaddao = new NacionalidadDAO();
    FrmNacionalidad vista = new FrmNacionalidad();
    DefaultTableModel modeloTabla = new DefaultTableModel();

    // variables globales
    private int id;
    private String descripcion;
    private boolean estado;

    public CNacionalidad(FrmNacionalidad vista) {
        this.vista = vista;
        vista.setVisible(true);
        agregarEvento();
        listarTabla();
    }

    private void agregarEvento() {
        vista.getBtnAgregar().addActionListener(this);
        vista.getBtnActualizar().addActionListener(this);
        vista.getBtnCancelar().addActionListener(this);
        vista.getTbNacionalidad().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                llenarCampos(e);
            }
        });
    }

    private void listarTabla() {
        String[] titulos = new String[]{"Codigo", "Descripcion", "Estado"};
        modeloTabla = new DefaultTableModel(titulos, 0);

        List<Nacionalidad> listaNacionalidad = nacionalidaddao.listar();

        for (Nacionalidad nacionalidad : listaNacionalidad) {
            String estado = nacionalidad.isEstado() ? "Activo" : "Inactivo";
            modeloTabla.addRow(new Object[]{
                nacionalidad.getIdNacionalidad(),
                nacionalidad.getDescripcion(),
                estado
            });
        }

        vista.getTbNacionalidad().setModel(modeloTabla);
    }

    private void llenarCampos(MouseEvent e) {
        JTable target = (JTable) e.getSource();
        id = (int) vista.getTbNacionalidad().getModel().getValueAt(target.getSelectedRow(), 0);
        vista.getTxtNacionalidad().setText(vista.getTbNacionalidad().getModel().getValueAt(target.getSelectedRow(), 1).toString());

        // Obtener el estado como un número (1 o 0) y convertirlo a boolean
        int estadoNumero = (int) vista.getTbNacionalidad().getModel().getValueAt(target.getSelectedRow(), 2);
        estado = estadoNumero == 1;

        // Seleccionar el radio button correcto según el estado
        vista.getRbActivo().setSelected(estado);
        vista.getRbInactivo().setSelected(!estado);

    }
  

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == vista.getBtnAgregar()) {
            //agregarNacionalidad();
        } else if (e.getSource() == vista.getBtnActualizar()) {
            //actualizarNacionalidad();
        } else if (e.getSource() == vista.getBtnCancelar()) {
            //eliminarNacionalidad();
        }
    }
}
