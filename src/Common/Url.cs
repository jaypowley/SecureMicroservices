namespace Common
{
    public class Url
    {
        public const string Api_Gateway = "https://localhost:44330";
        public const string Identity_Server = "https://localhost:44320";
        public const string Movies_Api = "https://localhost:44350";
        public const string Movies_Client = "https://localhost:44360";

        public const string Sign_In = Movies_Client + "/signin-oidc";
        public const string Sign_Out = Movies_Client + "/signout-callback-oidc";

        public const string Movies = "/movies";
        public const string Movies_Id = "/movies/{0}";
    }
}
