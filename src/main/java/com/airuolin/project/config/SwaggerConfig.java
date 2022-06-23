package com.airuolin.project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author chrischen
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    private static final String SERVICE_START_TIME = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    private static final String BASE_PACKAGE = "com.airuolin.project";

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(BASE_PACKAGE))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("基于Spring Boot微服务种子项目")
                .description("<br>当前版本<span style='color:red'>v1.0</span>"
                        + ", 更新时间<span style='color:red'>" + SERVICE_START_TIME + "</span>, 访问地址：http://项目部署地址/swagger-ui.html")
                .contact(new Contact("Chris Chen", "", "y_zhengchen@163.com"))
                .termsOfServiceUrl("https://github.com/chenyunzheng")
                .version("v1.0")
                .build();
    }

}
