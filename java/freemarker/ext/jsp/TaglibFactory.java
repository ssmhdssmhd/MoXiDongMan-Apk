package freemarker.ext.jsp;

import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.on0;
import android.support.v4.w41;
import androidx.multidex.MultiDexExtractor;
import freemarker.core.d0;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.beans.IntrospectionException;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipInputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.tagext.Tag;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes3.dex */
public class TaglibFactory implements TemplateHashModel {

    /* renamed from: import, reason: not valid java name */
    private static final int f24734import = 2;

    /* renamed from: native, reason: not valid java name */
    private static final String f24735native = "META-INF/";

    /* renamed from: public, reason: not valid java name */
    private static final String f24736public = "/META-INF/";

    /* renamed from: return, reason: not valid java name */
    private static final String f24737return = "/META-INF/taglib.tld";

    /* renamed from: static, reason: not valid java name */
    private static final String f24738static = "!/";

    /* renamed from: throw, reason: not valid java name */
    private static final int f24741throw = 0;

    /* renamed from: while, reason: not valid java name */
    private static final int f24742while = 1;

    /* renamed from: do, reason: not valid java name */
    private final ServletContext f24747do;

    /* renamed from: if, reason: not valid java name */
    private ObjectWrapper f24751if;

    /* renamed from: const, reason: not valid java name */
    public static final List f24732const = Collections.EMPTY_LIST;

    /* renamed from: final, reason: not valid java name */
    public static final List f24733final = Collections.singletonList(Cnative.f24770do);

    /* renamed from: super, reason: not valid java name */
    private static final freemarker.log.Cif f24739super = freemarker.log.Cif.m29193break("freemarker.jsp");

    /* renamed from: switch, reason: not valid java name */
    private static final String f24740switch = freemarker.template.utility.Cconst.m29258for("file.encoding", "utf-8");

    /* renamed from: for, reason: not valid java name */
    private List f24749for = f24733final;

    /* renamed from: new, reason: not valid java name */
    private List f24752new = f24732const;

    /* renamed from: try, reason: not valid java name */
    public boolean f24754try = false;

    /* renamed from: case, reason: not valid java name */
    public boolean f24744case = false;

    /* renamed from: else, reason: not valid java name */
    public boolean f24748else = false;

    /* renamed from: goto, reason: not valid java name */
    private final Object f24750goto = new Object();

    /* renamed from: this, reason: not valid java name */
    private final Map f24753this = new HashMap();

    /* renamed from: break, reason: not valid java name */
    private final Map f24743break = new HashMap();

    /* renamed from: catch, reason: not valid java name */
    private List f24745catch = new ArrayList();

    /* renamed from: class, reason: not valid java name */
    private int f24746class = 0;

    public interface InputStreamFactory {
        InputStream getInputStream();
    }

    public interface TldLocation {
        InputStream getInputStream() throws IOException;

        String getXmlSystemId() throws IOException;
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$break, reason: invalid class name */
    public static abstract class Cbreak {
        public /* synthetic */ Cbreak(Cdo cdo) {
            this();
        }

        private Cbreak() {
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$case, reason: invalid class name */
    public static final class Ccase implements EntityResolver {
        private Ccase() {
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            InputSource inputSource = new InputSource(new ByteArrayInputStream(new byte[0]));
            inputSource.setPublicId(str);
            inputSource.setSystemId(str2);
            return inputSource;
        }

        public /* synthetic */ Ccase(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$catch, reason: invalid class name */
    public class Ccatch extends Cgoto {

        /* renamed from: freemarker.ext.jsp.TaglibFactory$catch$do, reason: invalid class name */
        public class Cdo implements InputStreamFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ TaglibFactory f24756do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ String f24757if;

            public Cdo(TaglibFactory taglibFactory, String str) {
                this.f24756do = taglibFactory;
                this.f24757if = str;
            }

            @Override // freemarker.ext.jsp.TaglibFactory.InputStreamFactory
            public InputStream getInputStream() {
                return this.f24756do.f24747do.getResourceAsStream(this.f24757if);
            }

            public String toString() {
                return "servletContext:" + this.f24757if;
            }
        }

        public /* synthetic */ Ccatch(TaglibFactory taglibFactory, String str, String str2, Cdo cdo) {
            this(str, str2);
        }

        private Ccatch(String str, String str2) {
            super(TaglibFactory.j(TaglibFactory.this.f24747do, str, str2), new Cdo(TaglibFactory.this, str), str2);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$class, reason: invalid class name */
    public class Cclass implements TldLocation {

        /* renamed from: do, reason: not valid java name */
        private final String f24758do;

        public Cclass(String str) {
            this.f24758do = str;
        }

        /* renamed from: do, reason: not valid java name */
        private IOException m28870do() {
            return new IOException("Resource not found: servletContext:" + this.f24758do);
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public InputStream getInputStream() throws IOException {
            InputStream resourceAsStream = TaglibFactory.this.f24747do.getResourceAsStream(this.f24758do);
            if (resourceAsStream != null) {
                return resourceAsStream;
            }
            throw m28870do();
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public String getXmlSystemId() throws IOException {
            URL resource = TaglibFactory.this.f24747do.getResource(this.f24758do);
            if (resource != null) {
                return resource.toExternalForm();
            }
            return null;
        }

        public final String toString() {
            return "servletContext:" + this.f24758do;
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$const, reason: invalid class name */
    public static final class Cconst implements TemplateHashModel {

        /* renamed from: do, reason: not valid java name */
        private final Map f24760do;

        public Cconst(ServletContext servletContext, TldLocation tldLocation, ObjectWrapper objectWrapper) throws SAXException, IOException {
            this.f24760do = m28871do(servletContext, tldLocation, objectWrapper);
        }

        /* renamed from: do, reason: not valid java name */
        private static final Map m28871do(ServletContext servletContext, TldLocation tldLocation, ObjectWrapper objectWrapper) throws SAXException, IOException {
            Csuper csuper = new Csuper(objectWrapper);
            InputStream inputStream = tldLocation.getInputStream();
            try {
                TaglibFactory.c(inputStream, tldLocation.getXmlSystemId(), csuper);
                inputStream.close();
                freemarker.ext.jsp.Cif cifM29024class = freemarker.ext.jsp.Cif.m29024class(servletContext);
                if (cifM29024class != null) {
                    cifM29024class.m29033for(csuper.m28881if());
                } else if (csuper.m28881if().size() > 0) {
                    throw new Cwhile("Event listeners specified in the TLD could not be  registered since the web application doesn't have a listener of class " + freemarker.ext.jsp.Cif.class.getName() + ". To remedy this, add this element to web.xml:\n| <listener>\n|   <listener-class>" + freemarker.ext.jsp.Cif.class.getName() + "</listener-class>\n| </listener>", null);
                }
                return csuper.m28880for();
            } catch (Throwable th) {
                inputStream.close();
                throw th;
            }
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) {
            return (TemplateModel) this.f24760do.get(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return this.f24760do.isEmpty();
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$do, reason: invalid class name */
    public class Cdo implements FilenameFilter {
        public Cdo() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return TaglibFactory.m28848instanceof(str);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$else, reason: invalid class name */
    public static class Celse implements TldLocation {

        /* renamed from: do, reason: not valid java name */
        private final File f24762do;

        public Celse(File file) {
            this.f24762do = file;
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public InputStream getInputStream() throws IOException {
            return new FileInputStream(this.f24762do);
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public String getXmlSystemId() throws IOException {
            return this.f24762do.toURI().toURL().toExternalForm();
        }

        public String toString() {
            return this.f24762do.toString();
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$final, reason: invalid class name */
    public static class Cfinal extends Exception {
        public Cfinal(String str, Throwable th) {
            super(str, th);
        }

        public Cfinal(String str) {
            super(str);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$for, reason: invalid class name */
    public static final class Cfor extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        private final Pattern f24763do;

        public Cfor(Pattern pattern) {
            super(null);
            this.f24763do = pattern;
        }

        /* renamed from: do, reason: not valid java name */
        public Pattern m28872do() {
            return this.f24763do;
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$goto, reason: invalid class name */
    public abstract class Cgoto implements TldLocation {

        /* renamed from: do, reason: not valid java name */
        private final URL f24764do;

        /* renamed from: for, reason: not valid java name */
        private final String f24765for;

        /* renamed from: if, reason: not valid java name */
        private final InputStreamFactory f24766if;

        public Cgoto(URL url, InputStreamFactory inputStreamFactory, String str) {
            if (url == null) {
                w41.check(inputStreamFactory);
                w41.check(str);
            }
            this.f24764do = url;
            this.f24766if = inputStreamFactory;
            this.f24765for = str != null ? TaglibFactory.b(str, false) : null;
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public InputStream getInputStream() throws Throwable {
            InputStream inputStream;
            ZipEntry nextEntry;
            URL url = this.f24764do;
            if (url != null) {
                try {
                    if (TaglibFactory.this.f24748else) {
                        throw new RuntimeException("Test only");
                    }
                    return url.openStream();
                } catch (Exception e) {
                    if (this.f24766if == null) {
                        if (e instanceof IOException) {
                            throw ((IOException) e);
                        }
                        if (e instanceof RuntimeException) {
                            throw ((RuntimeException) e);
                        }
                        throw new RuntimeException(e);
                    }
                    TaglibFactory.f24739super.mo29179case("Failed to open InputStream for URL (will try fallback stream): " + this.f24764do);
                }
            }
            String strB = this.f24765for;
            if (strB == null) {
                URL url2 = this.f24764do;
                if (url2 == null) {
                    throw new IOException("Nothing to deduce jar entry path from.");
                }
                String externalForm = url2.toExternalForm();
                int iIndexOf = externalForm.indexOf(TaglibFactory.f24738static);
                if (iIndexOf == -1) {
                    throw new IOException("Couldn't extract jar entry path from: " + externalForm);
                }
                strB = TaglibFactory.b(URLDecoder.decode(externalForm.substring(iIndexOf + 2), TaglibFactory.f24740switch), false);
            }
            ZipInputStream zipInputStream = null;
            try {
                inputStream = this.f24766if.getInputStream();
                try {
                    if (inputStream == null) {
                        throw new IOException("Jar's InputStreamFactory (" + this.f24766if + ") says the resource doesn't exist.");
                    }
                    ZipInputStream zipInputStream2 = new ZipInputStream(inputStream);
                    do {
                        try {
                            nextEntry = zipInputStream2.getNextEntry();
                            if (nextEntry == null) {
                                throw new IOException("Could not find JAR entry " + freemarker.template.utility.Csuper.b(strB) + ".");
                            }
                        } catch (Throwable th) {
                            th = th;
                            zipInputStream = zipInputStream2;
                            if (zipInputStream != null) {
                                zipInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } while (!strB.equals(TaglibFactory.b(nextEntry.getName(), false)));
                    return zipInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public String getXmlSystemId() {
            URL url = this.f24764do;
            if (url != null) {
                return url.toExternalForm();
            }
            return null;
        }

        public String toString() {
            URL url = this.f24764do;
            if (url != null) {
                return url.toExternalForm();
            }
            return "jar:{" + this.f24766if + "}!" + this.f24765for;
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$if, reason: invalid class name */
    public static class Cif extends FilterInputStream {
        public Cif(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$import, reason: invalid class name */
    public static class Cimport implements Comparable {

        /* renamed from: do, reason: not valid java name */
        private final URL f24768do;

        /* renamed from: if, reason: not valid java name */
        private final String f24769if;

        public Cimport(URL url) {
            this.f24768do = url;
            this.f24769if = url.toExternalForm();
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return m28875if().compareTo(((Cimport) obj).m28875if());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return !this.f24769if.equals(((Cimport) obj).f24769if);
            }
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public URL m28874for() {
            return this.f24768do;
        }

        public int hashCode() {
            return this.f24769if.hashCode();
        }

        /* renamed from: if, reason: not valid java name */
        public String m28875if() {
            return this.f24769if;
        }

        public String toString() {
            return "URLWithExternalForm(" + this.f24769if + ")";
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$native, reason: invalid class name */
    public static final class Cnative extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        public static final Cnative f24770do = new Cnative();

        private Cnative() {
            super(null);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$new, reason: invalid class name */
    public static class Cnew implements TldLocation {

        /* renamed from: do, reason: not valid java name */
        private final String f24771do;

        public Cnew(String str) {
            if (!str.startsWith(on0.f4694final)) {
                throw new IllegalArgumentException("\"resourcePath\" must start with /");
            }
            this.f24771do = str;
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public InputStream getInputStream() throws IOException {
            InputStream inputStreamM29283this;
            ClassLoader classLoaderK = TaglibFactory.k();
            return (classLoaderK == null || (inputStreamM29283this = freemarker.template.utility.Cif.m29283this(classLoaderK, this.f24771do, true)) == null) ? freemarker.template.utility.Cif.m29279goto(getClass(), this.f24771do, false) : inputStreamM29283this;
        }

        @Override // freemarker.ext.jsp.TaglibFactory.TldLocation
        public String getXmlSystemId() throws IOException {
            URL resource;
            ClassLoader classLoaderK = TaglibFactory.k();
            if (classLoaderK != null && (resource = classLoaderK.getResource(this.f24771do)) != null) {
                return resource.toExternalForm();
            }
            URL resource2 = getClass().getResource(this.f24771do);
            if (resource2 == null) {
                return null;
            }
            return resource2.toExternalForm();
        }

        public String toString() {
            return freemarker.ext.servlet.Ccase.f24960if + this.f24771do;
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$public, reason: invalid class name */
    public class Cpublic extends DefaultHandler {

        /* renamed from: case, reason: not valid java name */
        private static final String f24772case = "taglib";

        /* renamed from: else, reason: not valid java name */
        private static final String f24773else = "taglib-location";

        /* renamed from: goto, reason: not valid java name */
        private static final String f24774goto = "taglib-uri";

        /* renamed from: do, reason: not valid java name */
        private StringBuilder f24775do;

        /* renamed from: for, reason: not valid java name */
        private String f24776for;

        /* renamed from: if, reason: not valid java name */
        private String f24777if;

        /* renamed from: new, reason: not valid java name */
        private Locator f24778new;

        private Cpublic() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            StringBuilder sb = this.f24775do;
            if (sb != null) {
                sb.append(cArr, i, i2);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws Cwhile {
            Cdo cdo = null;
            if (f24774goto.equals(str3)) {
                this.f24777if = this.f24775do.toString().trim();
                this.f24775do = null;
                return;
            }
            if (!f24773else.equals(str3)) {
                if (f24772case.equals(str3)) {
                    TaglibFactory.this.m28835class(TaglibFactory.m28863transient(this.f24776for) ? new Ccatch(TaglibFactory.this, this.f24776for, TaglibFactory.f24737return, cdo) : TaglibFactory.this.new Cclass(this.f24776for), this.f24777if);
                    return;
                }
                return;
            }
            String strTrim = this.f24775do.toString().trim();
            this.f24776for = strTrim;
            if (strTrim.length() == 0) {
                throw new Cwhile("Required \"taglib-uri\" element was missing or empty", this.f24778new);
            }
            try {
                if (TaglibFactory.m28849interface(this.f24776for) == 2) {
                    this.f24776for = "/WEB-INF/" + this.f24776for;
                }
                this.f24775do = null;
            } catch (MalformedURLException e) {
                throw new Cwhile("Failed to detect URI type for: " + this.f24776for, this.f24778new, e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.f24778new = locator;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (f24774goto.equals(str3) || f24773else.equals(str3)) {
                this.f24775do = new StringBuilder();
            }
        }

        public /* synthetic */ Cpublic(TaglibFactory taglibFactory, Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$super, reason: invalid class name */
    public static final class Csuper extends DefaultHandler {

        /* renamed from: const, reason: not valid java name */
        private static final String f24780const = "tag";

        /* renamed from: final, reason: not valid java name */
        private static final String f24781final = "name";

        /* renamed from: import, reason: not valid java name */
        private static final String f24782import = "function-class";

        /* renamed from: native, reason: not valid java name */
        private static final String f24783native = "function-signature";

        /* renamed from: public, reason: not valid java name */
        private static final String f24784public = "listener";

        /* renamed from: return, reason: not valid java name */
        private static final String f24785return = "listener-class";

        /* renamed from: super, reason: not valid java name */
        private static final String f24786super = "tag-class";

        /* renamed from: throw, reason: not valid java name */
        private static final String f24787throw = "tagclass";

        /* renamed from: while, reason: not valid java name */
        private static final String f24788while = "function";

        /* renamed from: break, reason: not valid java name */
        private String f24789break;

        /* renamed from: catch, reason: not valid java name */
        private String f24791catch;

        /* renamed from: class, reason: not valid java name */
        private String f24792class;

        /* renamed from: do, reason: not valid java name */
        private final freemarker.ext.beans.Ctry f24793do;

        /* renamed from: else, reason: not valid java name */
        private String f24794else;

        /* renamed from: goto, reason: not valid java name */
        private String f24796goto;

        /* renamed from: new, reason: not valid java name */
        private Locator f24798new;

        /* renamed from: this, reason: not valid java name */
        private String f24799this;

        /* renamed from: try, reason: not valid java name */
        private StringBuilder f24800try;

        /* renamed from: if, reason: not valid java name */
        private final Map<String, TemplateModel> f24797if = new HashMap();

        /* renamed from: for, reason: not valid java name */
        private final List f24795for = new ArrayList();

        /* renamed from: case, reason: not valid java name */
        private Stack f24790case = new Stack();

        public Csuper(ObjectWrapper objectWrapper) {
            String str;
            if (objectWrapper instanceof freemarker.ext.beans.Ctry) {
                this.f24793do = (freemarker.ext.beans.Ctry) objectWrapper;
                return;
            }
            this.f24793do = null;
            if (TaglibFactory.f24739super.mo29189public()) {
                freemarker.log.Cif cif = TaglibFactory.f24739super;
                StringBuilder sb = new StringBuilder();
                sb.append("Custom EL functions won't be loaded because ");
                if (objectWrapper == null) {
                    str = "no ObjectWrapper was specified for the TaglibFactory (via TaglibFactory.setObjectWrapper(...), exists since 2.3.22)";
                } else {
                    str = "the ObjectWrapper wasn't instance of " + freemarker.ext.beans.Ctry.class.getName();
                }
                sb.append(str);
                sb.append(".");
                cif.mo29187package(sb.toString());
            }
        }

        /* renamed from: case, reason: not valid java name */
        private Class m28876case(String str, String str2, String str3) throws Cwhile {
            try {
                return freemarker.template.utility.Cif.m29285try(str);
            } catch (ClassNotFoundException e) {
                throw m28878new(e, str, str2, str3);
            } catch (LinkageError e2) {
                throw m28878new(e2, str, str2, str3);
            }
        }

        /* renamed from: do, reason: not valid java name */
        private void m28877do(String str, String str2, String str3) throws Cwhile {
            if (str3 != null) {
                return;
            }
            throw new Cwhile("Missing required \"" + str2 + "\" element inside the \"" + str + "\" element.", this.f24798new);
        }

        /* renamed from: new, reason: not valid java name */
        private Cwhile m28878new(Throwable th, String str, String str2, String str3) throws Cwhile {
            String str4;
            int i;
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                iLastIndexOf = str.lastIndexOf(46, iLastIndexOf - 1);
            }
            boolean z = iLastIndexOf != -1 && str.length() > (i = iLastIndexOf + 1) && Character.isUpperCase(str.charAt(i));
            StringBuilder sb = new StringBuilder();
            sb.append(th instanceof ClassNotFoundException ? "Not found class " : "Can't load class ");
            sb.append(freemarker.template.utility.Csuper.m29330synchronized(str));
            sb.append(" for ");
            sb.append(str2);
            if (str3 != null) {
                str4 = org.apache.commons.lang3.Cclass.f28652do + freemarker.template.utility.Csuper.m29330synchronized(str3);
            } else {
                str4 = "";
            }
            sb.append(str4);
            sb.append(".");
            sb.append(z ? " Hint: Before nested classes, use \"$\", not \".\"." : "");
            return new Cwhile(sb.toString(), this.f24798new, th);
        }

        /* renamed from: try, reason: not valid java name */
        private String m28879try() {
            String strTrim = this.f24800try.toString().trim();
            this.f24800try = null;
            return strTrim;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            StringBuilder sb = this.f24800try;
            if (sb != null) {
                sb.append(cArr, i, i2);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws Cwhile {
            if (!this.f24790case.peek().equals(str3)) {
                throw new Cwhile("Unbalanced tag nesting at \"" + str3 + "\" end-tag.", this.f24798new);
            }
            if (this.f24790case.size() == 3) {
                if (f24781final.equals(str3)) {
                    if ("tag".equals(this.f24790case.get(1))) {
                        this.f24794else = m28879try();
                    } else if (f24788while.equals(this.f24790case.get(1))) {
                        this.f24799this = m28879try();
                    }
                } else if (f24787throw.equals(str3) || f24786super.equals(str3)) {
                    this.f24796goto = m28879try();
                } else if (f24785return.equals(str3)) {
                    this.f24792class = m28879try();
                } else if (f24782import.equals(str3)) {
                    this.f24789break = m28879try();
                } else if (f24783native.equals(str3)) {
                    this.f24791catch = m28879try();
                }
            } else if (this.f24790case.size() == 2) {
                if ("tag".equals(str3)) {
                    m28877do(str3, f24781final, this.f24794else);
                    m28877do(str3, f24786super, this.f24796goto);
                    Class clsM28876case = m28876case(this.f24796goto, "custom tag", this.f24794else);
                    try {
                        TemplateModel cfinal = Tag.class.isAssignableFrom(clsM28876case) ? new freemarker.ext.jsp.Cfinal(this.f24794else, clsM28876case) : new freemarker.ext.jsp.Cconst(this.f24794else, clsM28876case);
                        TemplateModel templateModelPut = this.f24797if.put(this.f24794else, cfinal);
                        if (templateModelPut != null) {
                            if (freemarker.ext.jsp.Cdo.m28923if(templateModelPut)) {
                                this.f24797if.put(this.f24794else, freemarker.ext.jsp.Cdo.m28922for(cfinal, (TemplateMethodModelEx) templateModelPut));
                            } else {
                                TaglibFactory.f24739super.mo29187package("TLD contains multiple tags with name " + freemarker.template.utility.Csuper.m29330synchronized(this.f24794else) + "; keeping only the last one.");
                            }
                        }
                        this.f24794else = null;
                        this.f24796goto = null;
                    } catch (IntrospectionException e) {
                        throw new Cwhile("JavaBean introspection failed on custom tag class " + this.f24796goto, this.f24798new, e);
                    }
                } else if (f24788while.equals(str3) && this.f24793do != null) {
                    m28877do(str3, f24782import, this.f24789break);
                    m28877do(str3, f24783native, this.f24791catch);
                    m28877do(str3, f24781final, this.f24799this);
                    Class clsM28876case2 = m28876case(this.f24789break, "custom EL function", this.f24799this);
                    try {
                        Method methodM29042do = freemarker.ext.jsp.Csuper.m29042do(clsM28876case2, this.f24791catch);
                        int modifiers = methodM29042do.getModifiers();
                        if (!Modifier.isPublic(modifiers) || !Modifier.isStatic(modifiers)) {
                            throw new Cwhile("The custom EL function method must be public and static: " + methodM29042do, this.f24798new);
                        }
                        try {
                            TemplateMethodModelEx templateMethodModelExY = this.f24793do.y(null, methodM29042do);
                            TemplateModel templateModelPut2 = this.f24797if.put(this.f24799this, templateMethodModelExY);
                            if (templateModelPut2 != null) {
                                if (freemarker.ext.jsp.Cdo.m28921do(templateModelPut2)) {
                                    this.f24797if.put(this.f24799this, freemarker.ext.jsp.Cdo.m28922for(templateModelPut2, templateMethodModelExY));
                                } else {
                                    TaglibFactory.f24739super.mo29187package("TLD contains multiple functions with name " + freemarker.template.utility.Csuper.m29330synchronized(this.f24799this) + "; keeping only the last one.");
                                }
                            }
                            this.f24799this = null;
                            this.f24789break = null;
                            this.f24791catch = null;
                        } catch (Exception unused) {
                            throw new Cwhile("FreeMarker object wrapping failed on method : " + methodM29042do, this.f24798new);
                        }
                    } catch (Exception e2) {
                        throw new Cwhile("Error while trying to resolve signature " + freemarker.template.utility.Csuper.m29330synchronized(this.f24791catch) + " on class " + freemarker.template.utility.Csuper.m29330synchronized(clsM28876case2.getName()) + " for custom EL function " + freemarker.template.utility.Csuper.m29330synchronized(this.f24799this) + ".", this.f24798new, e2);
                    }
                } else if (f24784public.equals(str3)) {
                    m28877do(str3, f24785return, this.f24792class);
                    try {
                        this.f24795for.add(m28876case(this.f24792class, f24784public, null).newInstance());
                        this.f24792class = null;
                    } catch (Exception e3) {
                        throw new Cwhile("Failed to create new instantiate from listener class " + this.f24792class, this.f24798new, e3);
                    }
                }
            }
            this.f24790case.pop();
        }

        /* renamed from: for, reason: not valid java name */
        public Map<String, TemplateModel> m28880for() {
            return this.f24797if;
        }

        /* renamed from: if, reason: not valid java name */
        public List m28881if() {
            return this.f24795for;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.f24798new = locator;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            this.f24790case.push(str3);
            if (this.f24790case.size() == 3) {
                if (f24781final.equals(str3) || f24787throw.equals(str3) || f24786super.equals(str3) || f24785return.equals(str3) || f24782import.equals(str3) || f24783native.equals(str3)) {
                    this.f24800try = new StringBuilder();
                }
            }
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$this, reason: invalid class name */
    public class Cthis extends Cgoto {
        public /* synthetic */ Cthis(TaglibFactory taglibFactory, URL url, InputStreamFactory inputStreamFactory, Cdo cdo) {
            this(url, inputStreamFactory);
        }

        private Cthis(URL url, InputStreamFactory inputStreamFactory) {
            super(url, inputStreamFactory, null);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$throw, reason: invalid class name */
    public static class Cthrow extends DefaultHandler {

        /* renamed from: for, reason: not valid java name */
        private static final String f24802for = "uri";

        /* renamed from: do, reason: not valid java name */
        private StringBuilder f24803do;

        /* renamed from: if, reason: not valid java name */
        private String f24804if;

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            StringBuilder sb = this.f24803do;
            if (sb != null) {
                sb.append(cArr, i, i2);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public String m28882do() {
            return this.f24804if;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            if ("uri".equals(str3)) {
                this.f24804if = this.f24803do.toString().trim();
                this.f24803do = null;
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if ("uri".equals(str3)) {
                this.f24803do = new StringBuilder();
            }
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$try, reason: invalid class name */
    public static final class Ctry extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        public static final Ctry f24805do = new Ctry();

        private Ctry() {
            super(null);
        }
    }

    /* renamed from: freemarker.ext.jsp.TaglibFactory$while, reason: invalid class name */
    public static class Cwhile extends SAXParseException {
        private final Throwable cause;

        public Cwhile(String str, Locator locator) {
            this(str, locator, null);
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            Throwable cause = super.getCause();
            return cause == null ? this.cause : cause;
        }

        @Override // org.xml.sax.SAXException, java.lang.Throwable
        public String toString() {
            StringBuilder sb = new StringBuilder(getClass().getName());
            sb.append(": ");
            int length = sb.length();
            String systemId = getSystemId();
            String publicId = getPublicId();
            if (systemId != null || publicId != null) {
                sb.append("In ");
                if (systemId != null) {
                    sb.append(systemId);
                }
                if (publicId != null) {
                    if (systemId != null) {
                        sb.append(" (public ID: ");
                    }
                    sb.append(publicId);
                    if (systemId != null) {
                        sb.append(')');
                    }
                }
            }
            int lineNumber = getLineNumber();
            if (lineNumber != -1) {
                sb.append(sb.length() != length ? ", at " : "At ");
                sb.append("line ");
                sb.append(lineNumber);
                int columnNumber = getColumnNumber();
                if (columnNumber != -1) {
                    sb.append(", column ");
                    sb.append(columnNumber);
                }
            }
            String localizedMessage = getLocalizedMessage();
            if (localizedMessage != null) {
                if (sb.length() != length) {
                    sb.append(":\n");
                }
                sb.append(localizedMessage);
            }
            return sb.toString();
        }

        public Cwhile(String str, Locator locator, Throwable th) {
            super(str, locator, th instanceof Exception ? (Exception) th : new Exception("Unchecked exception; see cause", th));
            this.cause = th;
        }
    }

    public TaglibFactory(ServletContext servletContext) {
        this.f24747do = servletContext;
    }

    private static MalformedURLException a(URL url) {
        return new MalformedURLException("Failed to extract jar entry path from: " + url);
    }

    /* renamed from: abstract, reason: not valid java name */
    private String m28831abstract() {
        synchronized (this.f24745catch) {
            if (this.f24745catch.isEmpty()) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.f24745catch.size(); i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(freemarker.template.utility.Csuper.m29317instanceof(this.f24745catch.get(i)));
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z) {
        if (!str.startsWith(on0.f4694final)) {
            str = on0.f4694final + str;
        }
        if (!z || str.endsWith(on0.f4694final)) {
            return str;
        }
        return str + on0.f4694final;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(InputStream inputStream, String str, DefaultHandler defaultHandler) throws SAXException, IOException {
        InputSource inputSource = new InputSource();
        inputSource.setSystemId(str);
        inputSource.setByteStream(i(inputStream));
        SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
        sAXParserFactoryNewInstance.setNamespaceAware(false);
        sAXParserFactoryNewInstance.setValidating(false);
        try {
            XMLReader xMLReader = sAXParserFactoryNewInstance.newSAXParser().getXMLReader();
            xMLReader.setEntityResolver(new Ccase(null));
            xMLReader.setContentHandler(defaultHandler);
            xMLReader.setErrorHandler(defaultHandler);
            xMLReader.parse(inputSource);
        } catch (ParserConfigurationException e) {
            throw new RuntimeException("XML parser setup failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m28835class(TldLocation tldLocation, String str) {
        if (this.f24743break.containsKey(str)) {
            freemarker.log.Cif cif = f24739super;
            if (cif.mo29190throw()) {
                cif.mo29183for("Ignored duplicate mapping of taglib URI " + freemarker.template.utility.Csuper.b(str) + " to TLD location " + freemarker.template.utility.Csuper.a(tldLocation));
                return;
            }
            return;
        }
        this.f24743break.put(str, tldLocation);
        freemarker.log.Cif cif2 = f24739super;
        if (cif2.mo29190throw()) {
            cif2.mo29183for("Mapped taglib URI " + freemarker.template.utility.Csuper.b(str) + " to TLD location " + freemarker.template.utility.Csuper.a(tldLocation));
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m28836const(TldLocation tldLocation) throws SAXException, IOException {
        InputStream inputStream = tldLocation.getInputStream();
        try {
            m28841final(inputStream, tldLocation);
        } finally {
            inputStream.close();
        }
    }

    private static String d(String str) throws Cfinal {
        try {
            TemplateModel templateModelD2 = d0.w1().D2(FreemarkerServlet.u);
            if (!(templateModelD2 instanceof freemarker.ext.servlet.Cif)) {
                throw new Cfinal("Can't resolve relative URI " + str + " as request URL information is unavailable.");
            }
            HttpServletRequest httpServletRequestM29121if = ((freemarker.ext.servlet.Cif) templateModelD2).m29121if();
            String pathInfo = httpServletRequestM29121if.getPathInfo();
            String servletPath = httpServletRequestM29121if.getServletPath();
            if (servletPath == null) {
                servletPath = "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(servletPath);
            if (pathInfo == null) {
                pathInfo = "";
            }
            sb.append(pathInfo);
            String string = sb.toString();
            int iLastIndexOf = string.lastIndexOf(47);
            if (iLastIndexOf != -1) {
                return string.substring(0, iLastIndexOf + 1) + str;
            }
            return org.jsoup.nodes.Attributes.InternalPrefix + str;
        } catch (k52 e) {
            throw new Cfinal("Failed to get FreemarkerServlet request information", e);
        }
    }

    /* renamed from: default, reason: not valid java name */
    private static void m28837default(ClassLoader classLoader, Set set) throws IOException {
        Enumeration<URL> resources = classLoader.getResources(f24735native);
        if (resources != null) {
            while (resources.hasMoreElements()) {
                set.add(new Cimport(resources.nextElement()));
            }
        }
    }

    private JarFile e(String str) throws IOException {
        URL resource = this.f24747do.getResource(str);
        if (resource == null) {
            f24739super.mo29179case("ServletContext resource URL was null (missing resource?): " + str);
            return null;
        }
        File fileL = l(resource);
        if (fileL == null) {
            return null;
        }
        if (fileL.isFile()) {
            return new JarFile(fileL);
        }
        f24739super.mo29179case("Jar file doesn't exist - falling back to stream mode: " + fileL);
        return null;
    }

    /* renamed from: extends, reason: not valid java name */
    private static Set m28840extends() throws IOException {
        TreeSet treeSet = new TreeSet();
        ClassLoader classLoaderK = k();
        if (classLoaderK != null) {
            m28837default(classLoaderK, treeSet);
        }
        ClassLoader classLoader = TaglibFactory.class.getClassLoader();
        if (!m28853protected(classLoaderK, classLoader)) {
            m28837default(classLoader, treeSet);
        }
        return treeSet;
    }

    /* renamed from: final, reason: not valid java name */
    private void m28841final(InputStream inputStream, TldLocation tldLocation) throws SAXException, IOException {
        String strM28865volatile;
        try {
            strM28865volatile = m28865volatile(inputStream, tldLocation.getXmlSystemId());
        } catch (SAXException e) {
            f24739super.mo29181else("Error while parsing TLD; skipping: " + tldLocation, e);
            synchronized (this.f24745catch) {
                this.f24745catch.add(tldLocation.toString());
                strM28865volatile = null;
            }
        }
        if (strM28865volatile != null) {
            m28835class(tldLocation, strM28865volatile);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private static URL m28842finally(URL url, String str) throws MalformedURLException {
        if (str.startsWith(on0.f4694final)) {
            str = str.substring(1);
        }
        try {
            return new URL(url, freemarker.template.utility.Csuper.m29300break(str, f24740switch));
        } catch (UnsupportedEncodingException unused) {
            throw new mc();
        }
    }

    private static FilterInputStream i(InputStream inputStream) {
        return new Cif(inputStream);
    }

    /* renamed from: implements, reason: not valid java name */
    private static boolean m28846implements(URL url) {
        String protocol = url.getProtocol();
        return "jar".equals(protocol) || "zip".equals(protocol) || "vfszip".equals(protocol) || "wsjar".equals(protocol);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x003c -> B:48:0x00f7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0084 -> B:48:0x00f7). Please report as a decompilation issue!!! */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m28847import() throws SAXException, IOException {
        List list = this.f24749for;
        if (list == null || list.isEmpty()) {
            return;
        }
        Set<Cimport> setM28840extends = null;
        int size = this.f24749for.size();
        do {
            size--;
            if (size < 0) {
                size = 0;
                break;
            }
        } while (!(this.f24749for.get(size) instanceof Ctry));
        size++;
        if (size >= this.f24749for.size()) {
            return;
        }
        Cbreak cbreak = (Cbreak) this.f24749for.get(size);
        if (cbreak == Cnative.f24770do) {
            m28855return();
        } else {
            if (!(cbreak instanceof Cfor)) {
                throw new mc();
            }
            Cfor cfor = (Cfor) cbreak;
            freemarker.log.Cif cif = f24739super;
            if (cif.mo29190throw()) {
                cif.mo29183for("Looking for TLD-s in classpathRoots[" + cfor.m28872do() + "]" + f24736public + "**/*.tld");
            }
            if (setM28840extends == null) {
                setM28840extends = m28840extends();
            }
            for (Cimport cimport : setM28840extends) {
                URL urlM28874for = cimport.m28874for();
                boolean zM28846implements = m28846implements(urlM28874for);
                String strSubstring = cimport.f24769if;
                if (zM28846implements) {
                    int iIndexOf = strSubstring.indexOf(f24738static);
                    if (iIndexOf != -1) {
                        strSubstring = strSubstring.substring(0, iIndexOf);
                    }
                } else if (strSubstring.endsWith(f24736public)) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 9);
                }
                if (cfor.m28872do().matcher(strSubstring).matches()) {
                    File fileL = l(urlM28874for);
                    if (fileL != null) {
                        m28861throw(fileL);
                    } else if (zM28846implements) {
                        m28866while(urlM28874for);
                    } else {
                        freemarker.log.Cif cif2 = f24739super;
                        if (cif2.mo29190throw()) {
                            cif2.mo29183for("Can't list entries under this URL; TLD-s won't be discovered here: " + cimport.m28875if());
                        }
                    }
                }
            }
        }
        size++;
        if (size >= this.f24749for.size()) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m28848instanceof(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return false;
        }
        return str.substring(iLastIndexOf + 1).toLowerCase().equalsIgnoreCase("tld");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public static int m28849interface(String str) throws MalformedURLException {
        int iIndexOf;
        if (str == null) {
            throw new IllegalArgumentException("null is not a valid URI");
        }
        if (str.length() == 0) {
            throw new MalformedURLException("empty string is not a valid URI");
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            return 1;
        }
        if (cCharAt < 'a' || cCharAt > 'z' || (iIndexOf = str.indexOf(58)) == -1) {
            return 2;
        }
        for (int i = 1; i < iIndexOf; i++) {
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '+' || cCharAt2 == '-' || cCharAt2 == '.')) {
                return 2;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static URL j(ServletContext servletContext, String str, String str2) throws IOException {
        try {
            URL resource = servletContext.getResource(str);
            if (resource == null) {
                throw new IOException("Servlet context resource not found: " + str);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("jar:");
            sb.append(resource.toURI());
            sb.append(f24738static);
            sb.append(URLEncoder.encode(str2.startsWith(on0.f4694final) ? str2.substring(1) : str2, f24740switch));
            return new URL(sb.toString());
        } catch (Exception e) {
            f24739super.mo29181else("Couldn't get URL for serlvetContext resource " + freemarker.template.utility.Csuper.b(str) + " / jar entry " + freemarker.template.utility.Csuper.b(str2), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ClassLoader k() {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException e) {
            f24739super.mo29188private("Can't access Thread Context ClassLoader", e);
            return null;
        }
    }

    private File l(URL url) throws UnsupportedEncodingException {
        String strDecode;
        if (this.f24754try || !"file".equals(url.getProtocol())) {
            return null;
        }
        try {
            try {
                strDecode = url.toURI().getSchemeSpecificPart();
            } catch (URISyntaxException unused) {
                strDecode = URLDecoder.decode(url.getFile(), f24740switch);
            }
            return new File(strDecode);
        } catch (UnsupportedEncodingException e) {
            throw new mc(e);
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m28850native(String str) throws SAXException, IOException {
        String strB = b(f24736public, true);
        JarFile jarFileE = e(str);
        Cdo cdo = null;
        if (jarFileE != null) {
            freemarker.log.Cif cif = f24739super;
            if (cif.mo29190throw()) {
                cif.mo29183for("Scanning for /META-INF/*.tld-s in JarFile: servletContext:" + str);
            }
            Enumeration<JarEntry> enumerationEntries = jarFileE.entries();
            while (enumerationEntries.hasMoreElements()) {
                String strB2 = b(enumerationEntries.nextElement().getName(), false);
                if (strB2.startsWith(strB) && strB2.endsWith(".tld")) {
                    m28836const(new Ccatch(this, str, strB2, cdo));
                }
            }
            return;
        }
        freemarker.log.Cif cif2 = f24739super;
        if (cif2.mo29190throw()) {
            cif2.mo29183for("Scanning for /META-INF/*.tld-s in ZipInputStream (slow): servletContext:" + str);
        }
        InputStream resourceAsStream = this.f24747do.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new IOException("ServletContext resource not found: " + str);
        }
        try {
            ZipInputStream zipInputStream = new ZipInputStream(resourceAsStream);
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        return;
                    }
                    String strB3 = b(nextEntry.getName(), false);
                    if (strB3.startsWith(strB) && strB3.endsWith(".tld")) {
                        m28841final(zipInputStream, new Ccatch(this, str, strB3, cdo));
                    }
                } finally {
                    zipInputStream.close();
                }
            }
        } finally {
            resourceAsStream.close();
        }
    }

    /* renamed from: private, reason: not valid java name */
    private TldLocation m28852private(String str) throws Cfinal, SAXException, IOException {
        while (true) {
            TldLocation tldLocation = (TldLocation) this.f24743break.get(str);
            if (tldLocation != null) {
                return tldLocation;
            }
            int i = this.f24746class;
            if (i == 0) {
                m28857super();
            } else if (i == 1) {
                m28858switch();
            } else if (i == 2) {
                m28856static();
            } else {
                if (i != 3) {
                    if (i == 4) {
                        return null;
                    }
                    throw new mc();
                }
                m28847import();
            }
            this.f24746class++;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private static boolean m28853protected(ClassLoader classLoader, ClassLoader classLoader2) {
        while (classLoader != null) {
            if (classLoader == classLoader2) {
                return true;
            }
            classLoader = classLoader.getParent();
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    private void m28854public(String str) throws SAXException, IOException {
        Set resourcePaths = this.f24747do.getResourcePaths(str);
        if (resourcePaths != null) {
            ArrayList<String> arrayList = new ArrayList(resourcePaths);
            Collections.sort(arrayList);
            for (String str2 : arrayList) {
                if (str2.endsWith(".tld")) {
                    m28836const(new Cclass(str2));
                }
            }
            for (String str3 : arrayList) {
                if (str3.endsWith(on0.f4694final)) {
                    m28854public(str3);
                }
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m28855return() throws SAXException, IOException {
        freemarker.log.Cif cif = f24739super;
        if (cif.mo29190throw()) {
            cif.mo29183for("Looking for TLD locations in servletContext:/WEB-INF/lib/*.{jar,zip}/META-INF/*.tld");
        }
        Set<String> resourcePaths = this.f24747do.getResourcePaths("/WEB-INF/lib");
        if (resourcePaths != null) {
            for (String str : resourcePaths) {
                if (m28863transient(str)) {
                    m28850native(str);
                }
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m28856static() throws SAXException, IOException {
        f24739super.mo29183for("Looking for TLD locations in servletContext:/WEB-INF/**/*.tld");
        m28854public("/WEB-INF");
    }

    /* renamed from: super, reason: not valid java name */
    private void m28857super() throws Cfinal, SAXException, IOException {
        InputStream inputStream;
        List list = this.f24752new;
        if (list == null || list.size() == 0) {
            return;
        }
        f24739super.mo29183for("Looking for TLD locations in TLD-s specified in cfg.classpathTlds");
        for (String str : this.f24752new) {
            if (str.trim().length() == 0) {
                throw new Cfinal("classpathTlds can't contain empty item");
            }
            if (!str.startsWith(on0.f4694final)) {
                str = on0.f4694final + str;
            }
            if (str.endsWith(on0.f4694final)) {
                throw new Cfinal("classpathTlds can't specify a directory: " + str);
            }
            Cnew cnew = new Cnew(str);
            try {
                inputStream = cnew.getInputStream();
            } catch (IOException e) {
                if (f24739super.mo29189public()) {
                    f24739super.mo29188private("Ignored classpath TLD location " + freemarker.template.utility.Csuper.b(str) + " because of error", e);
                }
                inputStream = null;
            }
            if (inputStream != null) {
                try {
                    m28841final(inputStream, cnew);
                } finally {
                    inputStream.close();
                }
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m28858switch() throws SAXException, IOException {
        freemarker.log.Cif cif = f24739super;
        cif.mo29183for("Looking for TLD locations in servletContext:/WEB-INF/web.xml");
        Cpublic cpublic = new Cpublic(this, null);
        InputStream resourceAsStream = this.f24747do.getResourceAsStream("/WEB-INF/web.xml");
        if (resourceAsStream == null) {
            cif.mo29183for("No web.xml was found in servlet context");
            return;
        }
        try {
            c(resourceAsStream, this.f24747do.getResource("/WEB-INF/web.xml").toExternalForm(), cpublic);
        } finally {
            resourceAsStream.close();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    private TemplateHashModel m28859synchronized(TldLocation tldLocation, String str) throws SAXException, IOException {
        freemarker.log.Cif cif = f24739super;
        if (cif.mo29190throw()) {
            cif.mo29183for("Loading taglib for URI " + freemarker.template.utility.Csuper.b(str) + " from TLD location " + freemarker.template.utility.Csuper.a(tldLocation));
        }
        Cconst cconst = new Cconst(this.f24747do, tldLocation, this.f24751if);
        this.f24753this.put(str, cconst);
        this.f24743break.remove(str);
        return cconst;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m28861throw(File file) throws SAXException, IOException {
        if (!file.isDirectory()) {
            f24739super.mo29187package("Skipped scanning for *.tld for non-existent directory: " + freemarker.template.utility.Csuper.a(file));
            return;
        }
        freemarker.log.Cif cif = f24739super;
        if (cif.mo29190throw()) {
            cif.mo29183for("Scanning for *.tld-s in File directory: " + freemarker.template.utility.Csuper.a(file));
        }
        File[] fileArrListFiles = file.listFiles(new Cdo());
        if (fileArrListFiles == null) {
            throw new IOException("Can't list this directory for some reason: " + file);
        }
        for (File file2 : fileArrListFiles) {
            m28836const(new Celse(file2));
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m28862throws() {
        synchronized (this.f24750goto) {
            if (this.f24746class != 0) {
                throw new IllegalStateException(TaglibFactory.class.getName() + " object was already in use.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public static boolean m28863transient(String str) {
        return str.endsWith(".jar") || str.endsWith(MultiDexExtractor.EXTRACTED_SUFFIX);
    }

    /* renamed from: volatile, reason: not valid java name */
    private String m28865volatile(InputStream inputStream, String str) throws SAXException, IOException {
        Cthrow cthrow = new Cthrow();
        c(inputStream, str, cthrow);
        return cthrow.m28882do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: while, reason: not valid java name */
    private void m28866while(URL url) throws SAXException, IOException {
        String strSubstring;
        String strB;
        JarFile jarFile;
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        InputStreamFactory inputStreamFactory = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (this.f24744case || !(uRLConnectionOpenConnection instanceof JarURLConnection)) {
            String externalForm = url.toExternalForm();
            int iIndexOf = externalForm.indexOf(f24738static);
            if (iIndexOf == -1) {
                throw a(url);
            }
            strSubstring = externalForm.substring(externalForm.indexOf(58) + 1, iIndexOf);
            strB = b(externalForm.substring(iIndexOf + 2), true);
            File fileL = l(new URL(strSubstring));
            jarFile = fileL != null ? new JarFile(fileL) : null;
        } else {
            JarURLConnection jarURLConnection = (JarURLConnection) uRLConnectionOpenConnection;
            jarFile = jarURLConnection.getJarFile();
            strB = b(jarURLConnection.getEntryName(), true);
            if (strB == null) {
                throw a(url);
            }
            strSubstring = null;
        }
        if (jarFile != null) {
            freemarker.log.Cif cif = f24739super;
            if (cif.mo29190throw()) {
                cif.mo29183for("Scanning for /META-INF/**/*.tld-s in random access mode: " + url);
            }
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                String strB2 = b(enumerationEntries.nextElement().getName(), false);
                if (strB2.startsWith(strB) && strB2.endsWith(".tld")) {
                    m28836const(new Cthis(this, m28842finally(url, strB2.substring(strB.length())), inputStreamFactory, objArr3 == true ? 1 : 0));
                }
            }
            return;
        }
        freemarker.log.Cif cif2 = f24739super;
        if (cif2.mo29190throw()) {
            cif2.mo29183for("Scanning for /META-INF/**/*.tld-s in stream mode (slow): " + strSubstring);
        }
        InputStream inputStreamOpenStream = new URL(strSubstring).openStream();
        try {
            try {
                ZipInputStream zipInputStream = new ZipInputStream(inputStreamOpenStream);
                while (true) {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            return;
                        }
                        String strB3 = b(nextEntry.getName(), false);
                        if (strB3.startsWith(strB) && strB3.endsWith(".tld")) {
                            m28841final(zipInputStream, new Cthis(this, m28842finally(url, strB3.substring(strB.length())), objArr2 == true ? 1 : 0, objArr == true ? 1 : 0));
                        }
                    } finally {
                        zipInputStream.close();
                    }
                }
            } catch (ZipException e) {
                IOException iOException = new IOException("Error reading ZIP (see cause excepetion) from: " + strSubstring);
                try {
                    iOException.initCause(e);
                    throw iOException;
                } catch (Exception unused) {
                    throw e;
                }
            }
        } finally {
            inputStreamOpenStream.close();
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public List m28867continue() {
        return this.f24749for;
    }

    public void f(List list) {
        m28862throws();
        w41.check("classpathTlds", list);
        this.f24752new = list;
    }

    public void g(List list) {
        m28862throws();
        w41.check("metaInfTldSources", list);
        this.f24749for = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        String str2;
        String str3;
        String strD;
        Cconst cconst;
        synchronized (this.f24750goto) {
            Cconst cconst2 = (Cconst) this.f24753this.get(str);
            if (cconst2 != null) {
                return cconst2;
            }
            boolean z = false;
            Object[] objArr = 0;
            try {
                freemarker.log.Cif cif = f24739super;
                if (cif.mo29190throw()) {
                    cif.mo29183for("Locating TLD for taglib URI " + freemarker.template.utility.Csuper.b(str) + ".");
                }
                TldLocation tldLocationM28852private = m28852private(str);
                if (tldLocationM28852private == null) {
                    try {
                        int iM28849interface = m28849interface(str);
                        if (iM28849interface == 2) {
                            strD = d(str);
                        } else {
                            if (iM28849interface != 1) {
                                if (iM28849interface != 0) {
                                    throw new mc();
                                }
                                String strM28831abstract = m28831abstract();
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("No TLD was found for the ");
                                    sb.append(freemarker.template.utility.Csuper.b(str));
                                    sb.append(" JSP taglib URI. (TLD-s are searched according the JSP 2.2 specification. In development- and embedded-servlet-container setups you may also need the \"");
                                    sb.append(FreemarkerServlet.f24924private);
                                    sb.append("\" and \"");
                                    sb.append(FreemarkerServlet.f24915continue);
                                    sb.append("\" ");
                                    sb.append(FreemarkerServlet.class.getName());
                                    sb.append(" init-params or the similar system properites.");
                                    if (strM28831abstract == null) {
                                        str3 = "";
                                    } else {
                                        str3 = " Also note these TLD-s were skipped earlier due to errors; see error in the log: " + strM28831abstract;
                                    }
                                    sb.append(str3);
                                    sb.append(")");
                                    throw new Cfinal(sb.toString());
                                } catch (Exception e) {
                                    e = e;
                                    z = true;
                                    String strM28831abstract2 = z ? null : m28831abstract();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Error while looking for TLD file for ");
                                    sb2.append(freemarker.template.utility.Csuper.b(str));
                                    sb2.append("; see cause exception.");
                                    if (strM28831abstract2 == null) {
                                        str2 = "";
                                    } else {
                                        str2 = " (Note: These TLD-s were skipped earlier due to errors; see errors in the log: " + strM28831abstract2 + ")";
                                    }
                                    sb2.append(str2);
                                    throw new k52(sb2.toString(), e);
                                }
                            }
                            strD = str;
                        }
                        if (!strD.equals(str) && (cconst = (Cconst) this.f24753this.get(strD)) != null) {
                            return cconst;
                        }
                        tldLocationM28852private = m28863transient(strD) ? new Ccatch(this, strD, f24737return, objArr == true ? 1 : 0) : new Cclass(strD);
                        str = strD;
                    } catch (MalformedURLException e2) {
                        throw new Cfinal("Malformed taglib URI: " + freemarker.template.utility.Csuper.m29330synchronized(str), e2);
                    }
                }
                try {
                    return m28859synchronized(tldLocationM28852private, str);
                } catch (Exception e3) {
                    throw new k52("Error while loading tag library for URI " + freemarker.template.utility.Csuper.b(str) + " from TLD location " + freemarker.template.utility.Csuper.a(tldLocationM28852private) + "; see cause exception.", e3);
                }
            } catch (Exception e4) {
                e = e4;
            }
        }
    }

    public void h(ObjectWrapper objectWrapper) {
        m28862throws();
        this.f24751if = objectWrapper;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public List m28868package() {
        return this.f24752new;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public ObjectWrapper m28869strictfp() {
        return this.f24751if;
    }
}
