using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GourmetShopWeb
{
    public class Customer
    {
        private string _Lastname;
        private string _FirstName;
        private string _address;
        private int _visitNumber;
        public ShoppingCart Cart { get; set; }
        public Customer(string lastname, string firstName, string address, int visitNumber)
        {
            _Lastname = lastname;
            _FirstName = firstName;
            _address = address;
            _visitNumber = visitNumber;
        }

        public string Firstname
        {
            get { return _FirstName; }
        }
        public string Lastname
        {
            get { return _Lastname; }
        }
        public string Address
        {
            get { return _address; }
        }
        public string FullName
        {
            get { return _FirstName + " " + _Lastname; }
        }
        public bool SaveChanges()
        {
            // write to db
            return true;
        }

    }
}