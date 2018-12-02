using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class Document_DH
    {
        public List<CategoryDocument > getAllCategoryDocument()
        {
            List<CategoryDocument> ListDocument;
            using (var context = new HouzingEntities())
            {

              ListDocument = (from s in context.CategoryDocuments select s).ToList();


            }
            return ListDocument;
        }


        public void deleteCategoryDocument(Int32 ID)
        {

            using (var context = new HouzingEntities())
            {

                CategoryDocument  obj = (from s in context.CategoryDocuments where s.ID == ID select s).Single();
                context.CategoryDocuments.Remove(obj);

                context.SaveChanges();

            }

        }

        public void updateCategoryDocument(Int32 ID, String NameCategory)
        {

            using (var context = new HouzingEntities())
            {

                CategoryDocument objCategory = (from s in context.CategoryDocuments where s.ID == ID select s).Single();
                objCategory.NameCategory = NameCategory;
                context.SaveChanges();

            }

        }

        public void insertCategoryDocument(String NameCategory)
        {

            using (var context = new HouzingEntities())
            {
                CategoryDocument item = new CategoryDocument();
                item.NameCategory = NameCategory;
                context.CategoryDocuments.Add(item);
                context.SaveChanges();

            }

        }

        public CategoryDocument getCategoryDocumentByName(String Name)
        {
            CategoryDocument item;
            using (var context = new HouzingEntities())
            {

                item = (from s in context.CategoryDocuments where s.NameCategory == Name select s).FirstOrDefault();


            }
            return item;
        }

        public List<Document> getDocumentByIDCategory(Int32 IDCategory)
        {
            List<Document> lstItem;
            using (var context = new HouzingEntities())
            {

                lstItem = (from s in context.Documents where s.ID_Category == IDCategory select s).ToList ();


            }
            return lstItem;
        }

        public Document deleteDocument(Int64 ID)
        {
            Document obj;
            using (var context = new HouzingEntities())
            {

                 obj = (from s in context.Documents where s.ID == ID select s).Single();
                context.Documents.Remove(obj);

                context.SaveChanges();

            }
            return obj;
        }

        public void insertDocument(String NameDocument,String Path,Int32? IDCategory)
        {

            using (var context = new HouzingEntities())
            {
                Document item = new Document();
                item.NameDocument = NameDocument;
                item.PathDocument = Path;
                item.ID_Category  = IDCategory;
                item.CreateDate = DateTime.Now;
                context.Documents.Add(item);
                context.SaveChanges();

            }

        }

    }
}
