using System.ComponentModel;
using System.IO;

namespace randomTal
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Start();
        }

        #region Controller
        static void Start()
        {
            ran();
        }
        #endregion

        #region Model
        static int ran()
        {
            int mil = 1000000;

            string pathnavn = "C:\\Users\\rune1\\Desktop\\test.txt";

            Random bignum = new Random();

            for (int i = 0;i < mil; i++)
            {
                string num = i +" ," + bignum.Next(0, 100000) + ", \n ";
                File.AppendAllText(pathnavn, num);
            }

            return 1;
        }
        #endregion
    }
}