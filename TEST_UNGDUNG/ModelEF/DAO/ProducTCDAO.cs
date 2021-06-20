using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
   public class ProducTCDAO
    {
        NguyenThanhTrungContext db = null;
        public ProducTCDAO()
        {
            db = new NguyenThanhTrungContext();
        }
        public List<SanPham> ListNewProduct(int top)
        {
            return db.SanPhams.Where(x => x.UniCost >= 10000000).Take(top).ToList();
        }
        public List<SanPham> ListFeatureProduct(int top)
        {
            return db.SanPhams.Where(x => x.UniCost <= 10000000).Take(top).ToList();
        }
    }
}
