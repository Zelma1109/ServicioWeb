using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace OperadorPrueba1._3
{
    public class validaciones
    {
		public void SoloNumeros(KeyPressEventArgs e)
		{
			try
			{
				if (Char.IsNumber(e.KeyChar))
				{
					e.Handled = false;

				}
				else if (Char.IsControl(e.KeyChar))
				{
					e.Handled = false;
				}
				else if (char.IsSeparator(e.KeyChar))
				{
					e.Handled = false;
				}
				else
				{
					e.Handled = true;
				}
			}
			catch (Exception ex)
			{

			}
		}
	}
}