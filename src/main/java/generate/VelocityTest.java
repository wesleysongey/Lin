package generate;

import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;

public class VelocityTest {
	public static void main(String[] args) throws IOException {
		String modelName = "thing";
		VelocityEngine ve = new VelocityEngine();
		ve.setProperty(VelocityEngine.RESOURCE_LOADER, "classpath");
		ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
		ve.setProperty(Velocity.ENCODING_DEFAULT, "utf8");
		ve.setProperty(Velocity.INPUT_ENCODING, "utf8");
		ve.setProperty(Velocity.OUTPUT_ENCODING, "utf8"); 
		ve.init();
		Template t = ve.getTemplate("/templates/vm/Page.js.vm");
		VelocityContext vc = new VelocityContext();
		vc.put("model", modelName);
		//首写字母大写
		vc.put("model1", modelName.substring(0, 1).toUpperCase() + modelName.substring(1));
		vc.put("model2", "中文名");
		
		List<String> attrs = new ArrayList<String>();
		attrs.add("name");
		attrs.add("text");
		attrs.add("state");
		attrs.add("name1");
		attrs.add("name2");
		attrs.add("name3");
		vc.put("attrs", attrs);
		FileWriter fw = new FileWriter("d:\\aaaa.txt");
		t.merge(vc, fw);
		
		fw.flush();
		fw.close();

	}
}
