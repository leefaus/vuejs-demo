// export const API_URL = "https://conduit.productionready.io/api";
// export const API_URL = "http://a4abc87b85da511eab2c30a08148cbfd-1658932707.us-west-2.elb.amazonaws.com/";
export const API_URL = process.env.VUE_APP_API_URL;
console.log(API_URL);
// export const API_URL = "http://localhost:8080";
export default API_URL;
