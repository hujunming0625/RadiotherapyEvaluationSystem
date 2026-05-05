package cn.iocoder.yudao.server.config;

import cn.binarywang.wx.miniapp.api.WxMaService;
import cn.binarywang.wx.miniapp.api.impl.WxMaServiceImpl;
import com.binarywang.spring.starter.wxjava.miniapp.properties.WxMaProperties;
import com.binarywang.spring.starter.wxjava.mp.properties.WxMpProperties;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.impl.WxMpServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

/**
 * Desktop mode configuration: provides stub beans for disabled third-party services (WeChat).
 * MySQL and Redis now connect to remote servers — no more H2 or no-op stubs needed.
 */
@Configuration
@Profile("desktop")
public class DesktopConfiguration {

    @Bean
    public WxMpService wxMpService() { return new WxMpServiceImpl(); }

    @Bean
    public WxMpProperties wxMpProperties() { return new WxMpProperties(); }

    @Bean
    public WxMaService wxMaService() { return new WxMaServiceImpl(); }

    @Bean
    public WxMaProperties wxMaProperties() { return new WxMaProperties(); }
}
