package com.gchart;
import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.w3c.dom.Document;

public class Main {

    public static void main(String args[]) throws Exception {


        /*-----------------*/
        /*-----------------*/
        Properties prop = new Properties();
        InputStream input = null;

        try {

            input = new FileInputStream("src/main/config.properties");

            // load a properties file
            prop.load(input);

            // get the property value and print it out
            System.out.println(prop.getProperty("xmlfolder"));
            System.out.println(prop.getProperty("stylefolder"));
            System.out.println(prop.getProperty("dbpassword"));

        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


        /*--- */

       // File stylesheet = new File("src/main/style2.xsl");
        // File xmlSource = new File("src/main/data1.xml");

        File stylesheet = new File(prop.getProperty("stylefolder"));
        File xmlSource = new File(prop.getProperty("xmlfolder"));

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(xmlSource);

        StreamSource stylesource = new StreamSource(stylesheet);
        Transformer transformer = TransformerFactory.newInstance()
                .newTransformer(stylesource);
        Source source = new DOMSource(document);
        Result outputTarget = new StreamResult(new File(prop.getProperty("outputfile")));
        transformer.transform(source, outputTarget);
    }


    private static void loadProperties()
    {


        /*-----------------*/
        Properties prop = new Properties();
        InputStream input = null;

        try {

            input = new FileInputStream("src/main/config.properties");

            // load a properties file
            prop.load(input);

            // get the property value and print it out
            System.out.println(prop.getProperty("xmlfolder"));
            System.out.println(prop.getProperty("stylefolder"));
            System.out.println(prop.getProperty("dbpassword"));

        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


    }

}
