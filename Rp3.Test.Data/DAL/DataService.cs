using Rp3.Test.Data.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rp3.Test.Data
{
    public class DataService : IDisposable
    {
        private Context context;

        public DataService()
        {
            this.context = new Context();
        }

        private CategoryRepository categoryRepository;
        private UsuarioRepository usuarioRepository;
        private TransactionTypeRepository transactionTypeRepository;
        private TransactionRepository transactionRepository;
        public UsuarioRepository Usuarios
        {
            get
            {
                if (usuarioRepository == null)
                    usuarioRepository = new UsuarioRepository(this.context);
                return usuarioRepository;
            }
        }
        public CategoryRepository Categories
        {
            get
            {
                if (categoryRepository == null)
                    categoryRepository = new CategoryRepository(this.context);
                return categoryRepository;
            }
        }

        public TransactionTypeRepository TransactionTypes
        {
            get
            {
                if (transactionTypeRepository == null)
                    transactionTypeRepository = new TransactionTypeRepository(this.context);
                return transactionTypeRepository;
            }
        }

        public TransactionRepository Transactions
        {
            get
            {
                if (transactionRepository == null)
                    transactionRepository = new TransactionRepository(this.context);
                return transactionRepository;
            }
        }

        public void SaveChanges()
        {
            this.context.SaveChanges();
        }

        public void Dispose()
        {
            this.context.Dispose();
        }
    }
}
