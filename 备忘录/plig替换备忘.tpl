1.修改   language/chinese文件
2.修改   /alidata/www/www.moadd.com/templates/bootstrap/index_center.php 文件
3.删除 /templates/bootstrap/sidebar.tpl 删除关于 <!-- {include file=$the_template."/about_box.tpl"} -->
4.注销  /templates/bootstrap/search_box.tpl  
    <!--<div class="headline">
		<div class="sectiontitle">Search</div>
	</div>-->
5.翻译修改  
      /alidata/www/develop.pandorabox.cn/templates/bootstrap/breadcrumb.tpl
      MOST修改为最高
6.翻译消息
/alidata/www/develop.pandorabox.cn/modules/simple_messaging/lang.conf 重新复制为defalt
7.修改翻译
/alidata/www/develop.pandorabox.cn/templates/bootstrap/user_navigation.tpl
留存default
7.修改翻译
/alidata/www/develop.pandorabox.cn/templates/bootstrap/submit_step_2_center.tpl
变为 PLIGG_EXTEND_BEING_SUBMITTED_NOW

8.修改/alidata/www/develop.pandorabox.cn/templates/bootstrapgroup_center.tpl
9.修改 libs/group.php
10.pligg.tpl 登录默认选中
11.login_center.tpl 默认选中
12.修改 link_summary.tpl
{$story_content|strip_tags:"<img><embed>"} 添加标签过滤
13.修改  categories.tpl
将a标签间距变为10px
14.修改 sidebar_comments_index.tpl
ShortenText函数
15.修改header.tpl
16.去掉首字母大写 user_navigation.tpl
17.去掉首字母大写字母 user_profile_center.tpl
18.添加百度统计  foot.tpl
19.背景颜色     185ACC 替换为5972AB
                2D6CE0 替换为
20.修改头像英文 替换为  PLIGG_EXTEND_USER_EDIT_AVATAR
21.去掉排行榜 submitter_rank link_summary.tpl
22.去掉 所有链接显示
22.修改用户名字段长度 utf8_strlen   checkfield.php
23.添加 class.smtp.php
24.修改 logoin.php 文件  $mail->IsSMTP();
25.修改 stmp.php 文件
26.修改  setting.php 添加配置信息
27.修改 user.php
28.新增 commonconfig.php 文件
29.修config.php 导入commonconfig.php
30.修改样式去掉  float left
31 样式修改  votebox 62修改为50
32.去掉自动跳转到评论框  <textarea autofocus="autofocus"   common_form.tpl
33.去掉 PLIGG_Visual_Submit2_DescInstruct
PLIGG_Visual_Submit2_CatInstruct
PLIGG_Visual_Submit2_TitleInstruct  请输入你提交资源的标题. (最多 400 个字符)

    'bold', 'italic', 'underline', 'removeformat',  'forecolor', 'backcolor', 
             'fontfamily', 'fontsize', '|',
             'indent', '|',
             'justifycenter',  '|',
34.修改内容链接
link_summary.tpl
 {if $pagename eq "story"}
					 <span>{$title_short}</span>
					  {else}
					   <a href="{$story_url}">{$title_short}</a>
					  {/if}

35.修改  libs/search.php 修改published 为   published+new  排序按照日志投票进行排序
36.注销掉   breadcrumb.tpl 的排序  注销掉 热门资源
37. 注销掉日期  link.php
38. 修改   simple_messaging_main.php   的 $array[$key]['date']= date('Y-m-d H:i:s',strtotime($array[$key]['date'])-misc_timezone*3600); 日期显示
39. 修改 kmessaging_v.   日期显示 $message['date'] = date('Y-m-d H:i:s',strtotime($row->date)-misc_timezone*3600);   
    修改inbox 日期	
40.修改 link_summary.php 日期显示
41.修改submit.php 简介截取
42.修改edit_link.php 简介截取
43.注销掉 white main.php 的清空 session