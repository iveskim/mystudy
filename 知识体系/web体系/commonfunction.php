<?php
class Common{
    /** 
     * 手机端访问判断（wecenter）
     * @return 
     * @date      May 2, 2015
     * @author    jinjian  jin_jian@126.com  
     */
    function is_mobile($ignore_cookie = false)
    {
        if (HTTP::get_cookie('_ignore_ua_check') == 'TRUE' AND !$ignore_cookie)
        {
            return false;
        }
    
        $user_agent = strtolower($_SERVER['HTTP_USER_AGENT']);
    
        if (preg_match('/playstation/i', $user_agent) OR preg_match('/ipad/i', $user_agent) OR preg_match('/ucweb/i', $user_agent))
        {
            return false;
        }
    
        if (preg_match('/iemobile/i', $user_agent) OR preg_match('/mobile\ssafari/i', $user_agent) OR preg_match('/iphone\sos/i', $user_agent) OR preg_match('/android/i', $user_agent) OR preg_match('/symbian/i', $user_agent) OR preg_match('/series40/i', $user_agent))
        {
            return true;
        }
    
        return false;
    }
    
    /** 
     * 手机端判断（wordpress）
     * @return 
     * @date      May 2, 2015
     * @author    jinjian  jin_jian@126.com  
     */
    function wp_is_mobile() {
        static $is_mobile;
    
        if ( isset($is_mobile) )
            return $is_mobile;
    
        if ( empty($_SERVER['HTTP_USER_AGENT']) ) {
            $is_mobile = false;
        } elseif ( strpos($_SERVER['HTTP_USER_AGENT'], 'Mobile') !== false // many mobile devices (all iPhone, iPad, etc.)
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Android') !== false
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Silk/') !== false
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Kindle') !== false
                || strpos($_SERVER['HTTP_USER_AGENT'], 'BlackBerry') !== false
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Opera Mini') !== false
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Opera Mobi') !== false ) {
            $is_mobile = true;
        } else {
            $is_mobile = false;
        }
    
        return $is_mobile;
    }
    
}