using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SynergyServices;

namespace TestConsole
{
   public class TestClass
    {

        private static SynergyService _synergyService = null;

        #region Utility Methods

        public static SynergyService GetSynegyService()
        {
            if (_synergyService == null)
            {
                _synergyService = new SynergyService();
            } return _synergyService;
        }

        #endregion
    }
}
