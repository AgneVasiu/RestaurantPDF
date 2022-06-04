package lt.viko.eif.avasiukeviciute.RestaurantsTwwo;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/**
 * This class transforms xml and his xsl file to pdf
 * @Restaurants Agnė Vasiukevičiutė PI20S
 */

public class Restaurants {

    public static void main( String[] args )
    {
        try {
            converInToPDF();
        } catch (FOPException | IOException | TransformerException e) {
            e.printStackTrace();
        }
    }

    /**
     * This method takes xml and his xls fo file
     * creates fop factory with desired output format and uses user agent to transform files to pdf
     * @throws IOException
     * @throws FOPException
     * @throws TransformerException
     */

    public static void converInToPDF() throws IOException, FOPException, TransformerException {
        File xsltFile = new File("Restaurants.xsl");
        StreamSource xmlSource = new StreamSource(new File ("Restaurants.xml"));
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
        OutputStream out;
        out = new java.io.FileOutputStream("Restaurants.pdf");
        try{
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));
            Result res = new SAXResult(fop.getDefaultHandler());
            transformer.transform(xmlSource, res);
        } finally {
            out.close();
        }
    }
}
