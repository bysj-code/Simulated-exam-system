const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"科目","menuJump":"列表","tableName":"kemu"}],"menu":"科目管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"复习资料","menuJump":"列表","tableName":"fuxiziliao"}],"menu":"复习资料管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"参考文献","menuJump":"列表","tableName":"cankaowenxian"}],"menu":"参考文献管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"考试资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"复习资料列表","menuJump":"列表","tableName":"fuxiziliao"}],"menu":"复习资料模块"},{"child":[{"buttons":["查看"],"menu":"参考文献列表","menuJump":"列表","tableName":"cankaowenxian"}],"menu":"参考文献模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"复习资料","menuJump":"列表","tableName":"fuxiziliao"}],"menu":"复习资料管理"},{"child":[{"buttons":["查看"],"menu":"参考文献","menuJump":"列表","tableName":"cankaowenxian"}],"menu":"参考文献管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["查看"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["查看"],"menu":"考试记录","tableName":"examrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"复习资料列表","menuJump":"列表","tableName":"fuxiziliao"}],"menu":"复习资料模块"},{"child":[{"buttons":["查看"],"menu":"参考文献列表","menuJump":"列表","tableName":"cankaowenxian"}],"menu":"参考文献模块"}],"roleName":"用户","tableName":"yonghu"}]
    }
}
export default menu;