package webapptest;

/* import source.seleniumtest;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
//import org.junit.Before;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.*;
//import org.junit.platform.commons.annotation.Testable;
//import static net.sourceforge.jwebunit.junit.JWebUnit.*;
import static net.sourceforge.jwebunit.junit.JWebUnit.assertLinkPresent;
import static net.sourceforge.jwebunit.junit.JWebUnit.assertTitleEquals;
import static net.sourceforge.jwebunit.junit.JWebUnit.beginAt;
import static net.sourceforge.jwebunit.junit.JWebUnit.clickLink;
import static net.sourceforge.jwebunit.junit.JWebUnit.setBaseUrl;
import static net.sourceforge.jwebunit.junit.JWebUnit.setTestingEngineKey;
import static net.sourceforge.jwebunit.junit.JWebUnit.*;
import org.junit.Before;
import org.junit.Test;


import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;

import net.sourceforge.jwebunit.util.TestingEngineRegistry;
//import org.junit.jupiter.api.Test;
import net.sourceforge.jwebunit.junit.WebTester;

public class test {
    private WebTester tester;
    
  //  WebClient wc = new WebClient(BrowserVersion.CHROME);
    		
   // wc.getOptions().setThrowExceptionOnScriptError(false);
   
    private static final String WEBSITE_URL = "http://localhost:8060/WebApp-1/";
    @Before
    public void setUp() {
     
      WebClient wc = new WebClient(BrowserVersion.CHROME);
      wc.getOptions().setThrowExceptionOnFailingStatusCode(false);
    }

    
    @Before
    public void prepare() {
        setTestingEngineKey(TestingEngineRegistry.TESTING_ENGINE_HTMLUNIT); 
        setBaseUrl(WEBSITE_URL);
    }
  
    @Test
    public void testLoginPage() {
       beginAt("index.jsp"); //Open the browser on http://localhost:8080/test/home.xhtml
       assertTitleEquals("JSP Example");
       setTextField("userName", "suriyags");
       setTextField("password", "gs");
       submit();
       assertTitleEquals("Landing Page");
      //  System.setProperty("webdriver.chrome.driver", "/usr/local/bin/chromedriver");
       // WebDriver driver=new ChromeDriver();
       // driver.get("http://localhost:8060/WebApp-1/index.jsp");
    //	WebElement username=driver.findElement(By.id("uname"));
   // 	WebElement password=driver.findElement(By.id("password"));
   // 	WebElement login=driver.findElement(By.name("login"));
   // 	username.sendKeys("suriyags");
   // 	password.sendKeys("gs");
   // 	login.click();
   // 	String actualUrl="http://localhost:8060/WebApp-1/landingpage.jsp";
   // 	String expectedUrl= driver.getCurrentUrl();
   // 	Assert.assertEquals(expectedUrl,actualUrl);
   // 	driver.close();
    }    

    @Test
    public void testSelenium(){
      seleniumtest mc = new seleniumtest();
      mc.seleniumTest();
    }
     
}

*/