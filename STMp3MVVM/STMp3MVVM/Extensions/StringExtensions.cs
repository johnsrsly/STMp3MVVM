namespace STMp3MVVM.Extensions
{
    public static class StringExtensions
    {
        public static string TrimTrackName(this string str)
        {
            if (str.Contains("("))
            {
                int index = str.LastIndexOf("(");
                str = str.Substring(0, index - 1);
                return str;
            }
            else if (str.Contains("-"))
            {
                int index = str.LastIndexOf("-");
                str = str.Substring(0, index - 1);
                return str;
            }
            else if (str.Contains("*"))
            {
                int index = str.IndexOf("*");
                str = str.Substring(0, index - 1);
                return str;
            }
            else
                return str;
        }

        public static string RemoveAmpersand(this string str)
        {
            if (str.Contains("&"))
            {
                return str.Replace("&", "");
            }
            else if (str.Contains("och"))
            {
                return str.Replace("och", "");
            }
            else if (str.Contains("and"))
            {
                return str.Replace("and", "");
            }
            else
                return str;
        }
    }
}
