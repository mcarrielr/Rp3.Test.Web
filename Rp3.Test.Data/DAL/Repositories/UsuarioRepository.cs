﻿using Rp3.Test.Data.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rp3.Test.Data.Repositories
{
    public class UsuarioRepository : Repository<Usuario>
    {
        public UsuarioRepository(DbContext context) : base(context)
        {
        }

    }
}
