<template>
    <div class='aboutsCls'>
        <el-collapse v-model="activeNames" @change="handleChange">
  <el-collapse-item  title="关于我们" name="1">
    <div >旅游网是一个在线旅游平台，是一家本地综合性旅游服务平台.</div>
    <div >带您领略四川的每一处风景！我们相信，通过我们的不断努力和追求，一定能够让旅行变的更加自在有趣！</div>
  </el-collapse-item>
  <el-collapse-item  title="提供服务" name="2">
    <div >
      <p>定制软件服务:
        &nbsp;&nbsp;&nbsp;&nbsp;官网开发,小程序开发,商城开发,旅游网开发,ERP,CRM,P2P,CMS管理系统开发,
      财务软件开发,考试系统等各种各样的软件开发服务。
      </p>
    </div>
    <div>
      <p>老司机带徒弟就业服务:
         &nbsp;&nbsp;&nbsp;&nbsp;项目实战,各种类型项目实战到爽.
        跟着10年以上经验架构师学习,随时都有可能进入BTMJ。
      </p>
    </div>

  </el-collapse-item>
  <el-collapse-item  title="商务合作" name="3">
    <div >合作联系人：Marker</div>
    <div >联系邮箱：ZHQ27@pitt.edu</div>
    <div >联系QQ：2579692606</div>
  </el-collapse-item>

    <el-collapse-item  title="招聘服务" name="3">
      <div >java工程师</div>
      <div >前端工程师</div>
      <div >UI工程师</div>
      <div >发送QQ邮箱：ZHQ27@pitt.edu</div>
    </el-collapse-item>


</el-collapse>
</div>
</template>
<script>
  export default {
    data() {
      return {
        activeNames: ['1','2','3']
      };
    },
    methods: {
      handleChange(val) {
        console.log(val);
      }
    }
  }
</script>
<style lang="less">
    .aboutsCls{
        margin-left:@lrwith;
        margin-right: @lrwith;
        margin-top:30px;
        margin-bottom:30px;
        .el-collapse-item__header{
             font-size:20px;
             color:black;
        }
        div{
             font-size:18px;

        }

    }
</style>
