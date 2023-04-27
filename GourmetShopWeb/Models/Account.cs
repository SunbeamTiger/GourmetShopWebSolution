using System;
using System.IO;
using System.IO.Pipes;
using System.Security.Cryptography;
using System.Text;

namespace GourmetShopWeb.Tools
{
    public static class Account
    {
        public static string GenerateSalt()
        {
            Guid guid= Guid.NewGuid();
            return guid.ToString();
        }

        private static string ComputeHash(byte[] bytesToHash, byte[] salt)
        {
            return string.Empty;
        }

        public static string CreatePasswordHash(string password, string salt)
        {
            SHA256 sha256Hash = SHA256.Create();
            string source = password + salt;            
            byte[] hashValue = sha256Hash.ComputeHash(Encoding.ASCII.GetBytes(source));

            return sha256Hash.ToString();
        }

        public static bool VerifyPassword(string password) 
        {
            // retrieve salt and hash from db
            // compare to current hash w/salt
            // if match, return true; else false;
            return true;
        }
    }
}