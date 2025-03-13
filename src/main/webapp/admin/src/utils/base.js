const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm2a90b/",
            name: "ssm2a90b",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm2a90b/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "高校生活服务平台"
        } 
    }
}
export default base
