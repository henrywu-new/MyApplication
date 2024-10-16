// import axios, { AxiosResponse } from '@ohos/axios';
// import httpConstants from '../net/HttpConstants'
// import errorCode from '../utils/errorCode'
// import toast from '../utils/ToastUtils'
// import router from '../utils/RouterUtils'
// import SPUtils from '../utils/SPUtils'
// import SpConstants from '../net/SpConstants'
//
// axios.defaults.headers['Content-Type'] = 'application/json;charset=utf-8'
// // 创建axios实例
// const service = axios.create({
//   baseURL:httpConstants.url,
//   timeout:10000
// })
// // request拦截器
// service.interceptors.request.use(async config => {
//   // 是否需要设置 token
//   const access_token = await SPUtils.get(SpConstants.accessToken,"")
//   if (access_token != "") {
//     config.headers['Authorization'] = 'Bearer ' + access_token // 让每个请求携带自定义token 请根据实际情况自行修改
//   }
//   return config
// }, error => {
//   console.log(error)
//   Promise.reject(error)
// })
//
// // 响应拦截器
// service.interceptors.response.use(res => {
//   // 未设置状态码则默认成功状态
//   const code = res.data.code || 200;
//   // 获取错误信息
//   const msg = errorCode[code] || res.data.msg || errorCode['default']
//   if (code === 401) {
//     toast.show("登录状态已过期，您可以继续留在该页面，或者重新登录")
//     router.goNot('pages/Login')
//   } else if (code === 500) {
//     toast.show(msg)
//     return Promise.reject(new Error(msg))
//   } else if (code !== 200) {
//     toast.show(msg)
//     return Promise.reject('error')
//   } else {
//     return res
//   }
// },
//   error => {
//     console.log('err' + error)
//     let { message } = error;
//     if (message == "Network Error") {
//       message = "后端接口连接异常";
//     }
//     else if (message.includes("timeout")) {
//       message = "系统接口请求超时";
//     }
//     else if (message.includes("Request failed with status code")) {
//       message = "系统接口" + message.substr(message.length - 3) + "异常";
//     }
//     toast.show(message)
//     return Promise.reject(error)
//   }
// )
//
// export default service
//
//
