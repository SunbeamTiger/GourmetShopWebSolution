using System;
using System.Security.Cryptography;
using System.Text;

namespace GourmetShopWeb.Tools
{
    public static class Account
    {
        private static string GenerateSalt()
        {
            return string.Empty;
        }
        private static string ComputeHash(byte[] bytesToHash, byte[] salt)
        {
            return string.Empty;
        }
        public static string CreatePasswordHash(string password)
        {
            return string.Empty;
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