using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HappyTrip.Model.BusinessLayer.AirTravel;
using HappyTrip.Model.Entities.AirTravel;

namespace HappyTrip.UnitTestLayer.BusinessLayer.AirTravel
{
    [TestClass]
    public class Test
    {
        [TestMethod]
        public void TestMethod1()
        {
            AirLineManager target = new AirLineManager(); // TODO: Initialize to an appropriate value
            Airline[] expected = null; // TODO: Initialize to an appropriate value
            Airline[] actual;
            actual = target.GetAirLines();
            Assert.AreNotEqual(expected, actual);

        }
    }
}
