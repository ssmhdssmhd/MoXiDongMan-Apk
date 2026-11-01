package fi.iki.elonen;

import android.support.v4.l80;
import android.support.v4.pk0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.efs.sdk.base.Constants;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public abstract class NanoHTTPD {
    public static final String MIME_HTML = "text/html";
    public static final String MIME_PLAINTEXT = "text/plain";
    public static Map<String, String> MIME_TYPES = null;
    private static final String QUERY_STRING_PARAMETER = "NanoHttpd.QUERY_STRING";
    public static final int SOCKET_READ_TIMEOUT = 5000;
    public AsyncRunner asyncRunner;
    private final String hostname;
    private final int myPort;
    private volatile ServerSocket myServerSocket;
    private Thread myThread;
    private ServerSocketFactory serverSocketFactory;
    private TempFileManagerFactory tempFileManagerFactory;
    private static final String CONTENT_DISPOSITION_REGEX = "([ |\t]*Content-Disposition[ |\t]*:)(.*)";
    private static final Pattern CONTENT_DISPOSITION_PATTERN = Pattern.compile(CONTENT_DISPOSITION_REGEX, 2);
    private static final String CONTENT_TYPE_REGEX = "([ |\t]*content-type[ |\t]*:)(.*)";
    private static final Pattern CONTENT_TYPE_PATTERN = Pattern.compile(CONTENT_TYPE_REGEX, 2);
    private static final String CONTENT_DISPOSITION_ATTRIBUTE_REGEX = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*['|\"]([^\"^']*)['|\"]";
    private static final Pattern CONTENT_DISPOSITION_ATTRIBUTE_PATTERN = Pattern.compile(CONTENT_DISPOSITION_ATTRIBUTE_REGEX);
    private static final Logger LOG = Logger.getLogger(NanoHTTPD.class.getName());

    public interface AsyncRunner {
        void closeAll();

        void closed(Cif cif);

        void exec(Cif cif);
    }

    public interface IHTTPSession {
        void execute() throws IOException;

        Ctry getCookies();

        Map<String, String> getHeaders();

        InputStream getInputStream();

        Cclass getMethod();

        Map<String, List<String>> getParameters();

        @Deprecated
        Map<String, String> getParms();

        String getQueryParameterString();

        String getRemoteHostName();

        String getRemoteIpAddress();

        String getUri();

        void parseBody(Map<String, String> map) throws Cconst, IOException;
    }

    public static class Response implements Closeable {

        /* renamed from: break, reason: not valid java name */
        private boolean f23214break;

        /* renamed from: do, reason: not valid java name */
        private IStatus f23216do;

        /* renamed from: else, reason: not valid java name */
        private Cclass f23217else;

        /* renamed from: for, reason: not valid java name */
        private InputStream f23218for;

        /* renamed from: goto, reason: not valid java name */
        private boolean f23219goto;

        /* renamed from: if, reason: not valid java name */
        private String f23220if;

        /* renamed from: new, reason: not valid java name */
        private long f23221new;

        /* renamed from: this, reason: not valid java name */
        private boolean f23222this;

        /* renamed from: try, reason: not valid java name */
        private final Map<String, String> f23223try = new Cdo();

        /* renamed from: case, reason: not valid java name */
        private final Map<String, String> f23215case = new HashMap();

        public interface IStatus {
            String getDescription();

            int getRequestStatus();
        }

        /* renamed from: fi.iki.elonen.NanoHTTPD$Response$do, reason: invalid class name */
        public class Cdo extends HashMap<String, String> {
            public Cdo() {
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public String put(String str, String str2) {
                Response.this.f23215case.put(str == null ? str : str.toLowerCase(), str2);
                return (String) super.put((Cdo) str, str2);
            }
        }

        /* renamed from: fi.iki.elonen.NanoHTTPD$Response$for, reason: invalid class name */
        public enum Cfor implements IStatus {
            SWITCH_PROTOCOL(101, "Switching Protocols"),
            OK(200, "OK"),
            CREATED(201, "Created"),
            ACCEPTED(202, "Accepted"),
            NO_CONTENT(204, "No Content"),
            PARTIAL_CONTENT(206, "Partial Content"),
            MULTI_STATUS(207, "Multi-Status"),
            REDIRECT(301, "Moved Permanently"),
            FOUND(302, "Found"),
            REDIRECT_SEE_OTHER(303, "See Other"),
            NOT_MODIFIED(304, "Not Modified"),
            TEMPORARY_REDIRECT(307, "Temporary Redirect"),
            BAD_REQUEST(400, "Bad Request"),
            UNAUTHORIZED(401, "Unauthorized"),
            FORBIDDEN(403, "Forbidden"),
            NOT_FOUND(l80.f3570goto, "Not Found"),
            METHOD_NOT_ALLOWED(l80.f3574this, "Method Not Allowed"),
            NOT_ACCEPTABLE(406, "Not Acceptable"),
            REQUEST_TIMEOUT(408, "Request Timeout"),
            CONFLICT(l80.f3561break, "Conflict"),
            GONE(410, "Gone"),
            LENGTH_REQUIRED(411, "Length Required"),
            PRECONDITION_FAILED(412, "Precondition Failed"),
            PAYLOAD_TOO_LARGE(413, "Payload Too Large"),
            UNSUPPORTED_MEDIA_TYPE(415, "Unsupported Media Type"),
            RANGE_NOT_SATISFIABLE(TypedValues.Cycle.TYPE_PATH_ROTATE, "Requested Range Not Satisfiable"),
            EXPECTATION_FAILED(417, "Expectation Failed"),
            TOO_MANY_REQUESTS(l80.f3564class, "Too Many Requests"),
            INTERNAL_ERROR(500, "Internal Server Error"),
            NOT_IMPLEMENTED(TypedValues.Position.TYPE_TRANSITION_EASING, "Not Implemented"),
            SERVICE_UNAVAILABLE(503, "Service Unavailable"),
            UNSUPPORTED_HTTP_VERSION(TypedValues.Position.TYPE_SIZE_PERCENT, "HTTP Version Not Supported");

            private final String description;
            private final int requestStatus;

            Cfor(int i, String str) {
                this.requestStatus = i;
                this.description = str;
            }

            public static Cfor lookup(int i) {
                for (Cfor cfor : values()) {
                    if (cfor.getRequestStatus() == i) {
                        return cfor;
                    }
                }
                return null;
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response.IStatus
            public String getDescription() {
                return "" + this.requestStatus + org.apache.commons.lang3.Cclass.f28652do + this.description;
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response.IStatus
            public int getRequestStatus() {
                return this.requestStatus;
            }
        }

        /* renamed from: fi.iki.elonen.NanoHTTPD$Response$if, reason: invalid class name */
        public static class Cif extends FilterOutputStream {
            public Cif(OutputStream outputStream) {
                super(outputStream);
            }

            /* renamed from: do, reason: not valid java name */
            public void m27583do() throws IOException {
                ((FilterOutputStream) this).out.write("0\r\n\r\n".getBytes());
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) throws IOException {
                write(new byte[]{(byte) i}, 0, 1);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                write(bArr, 0, bArr.length);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                if (i2 == 0) {
                    return;
                }
                ((FilterOutputStream) this).out.write(String.format("%x\r\n", Integer.valueOf(i2)).getBytes());
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                ((FilterOutputStream) this).out.write("\r\n".getBytes());
            }
        }

        public Response(IStatus iStatus, String str, InputStream inputStream, long j) {
            this.f23216do = iStatus;
            this.f23220if = str;
            if (inputStream == null) {
                this.f23218for = new ByteArrayInputStream(new byte[0]);
                this.f23221new = 0L;
            } else {
                this.f23218for = inputStream;
                this.f23221new = j;
            }
            this.f23219goto = this.f23221new < 0;
            this.f23214break = true;
        }

        /* renamed from: class, reason: not valid java name */
        private void m27561class(OutputStream outputStream, long j) throws IOException {
            byte[] bArr = new byte[(int) 16384];
            boolean z = j == -1;
            while (true) {
                if (j <= 0 && !z) {
                    return;
                }
                int i = this.f23218for.read(bArr, 0, (int) (z ? 16384L : Math.min(j, 16384L)));
                if (i <= 0) {
                    return;
                }
                outputStream.write(bArr, 0, i);
                if (!z) {
                    j -= i;
                }
            }
        }

        /* renamed from: const, reason: not valid java name */
        private void m27562const(OutputStream outputStream, long j) throws IOException {
            if (!this.f23222this) {
                m27561class(outputStream, j);
                return;
            }
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            m27561class(gZIPOutputStream, -1L);
            gZIPOutputStream.finish();
        }

        /* renamed from: final, reason: not valid java name */
        private void m27564final(OutputStream outputStream, long j) throws IOException {
            if (this.f23217else == Cclass.HEAD || !this.f23219goto) {
                m27562const(outputStream, j);
                return;
            }
            Cif cif = new Cif(outputStream);
            m27562const(cif, -1L);
            cif.m27583do();
        }

        /* renamed from: break, reason: not valid java name */
        public void m27565break(PrintWriter printWriter, String str, String str2) {
            printWriter.append((CharSequence) str).append(": ").append((CharSequence) str2).append("\r\n");
        }

        /* renamed from: case, reason: not valid java name */
        public String m27566case() {
            return this.f23220if;
        }

        /* renamed from: catch, reason: not valid java name */
        public void mo27567catch(OutputStream outputStream) throws IOException, NumberFormatException {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                if (this.f23216do == null) {
                    throw new Error("sendResponse(): Status can't be null.");
                }
                PrintWriter printWriter = new PrintWriter((Writer) new BufferedWriter(new OutputStreamWriter(outputStream, new Cfor(this.f23220if).m27600try())), false);
                printWriter.append("HTTP/1.1 ").append((CharSequence) this.f23216do.getDescription()).append(" \r\n");
                String str = this.f23220if;
                if (str != null) {
                    m27565break(printWriter, "Content-Type", str);
                }
                if (m27581try("date") == null) {
                    m27565break(printWriter, pk0.f5061new, simpleDateFormat.format(new Date()));
                }
                for (Map.Entry<String, String> entry : this.f23223try.entrySet()) {
                    m27565break(printWriter, entry.getKey(), entry.getValue());
                }
                if (m27581try(fi.iki.elonen.Cdo.HEADER_CONNECTION) == null) {
                    m27565break(printWriter, pk0.f5069super, this.f23214break ? "keep-alive" : "close");
                }
                if (m27581try("content-length") != null) {
                    this.f23222this = false;
                }
                if (this.f23222this) {
                    m27565break(printWriter, "Content-Encoding", Constants.CP_GZIP);
                    m27580throw(true);
                }
                long jM27578super = this.f23218for != null ? this.f23221new : 0L;
                if (this.f23217else != Cclass.HEAD && this.f23219goto) {
                    m27565break(printWriter, pk0.S, "chunked");
                } else if (!this.f23222this) {
                    jM27578super = m27578super(printWriter, jM27578super);
                }
                printWriter.append("\r\n");
                printWriter.flush();
                m27564final(outputStream, jM27578super);
                outputStream.flush();
                NanoHTTPD.safeClose(this.f23218for);
            } catch (IOException e) {
                NanoHTTPD.LOG.log(Level.SEVERE, "Could not send response to the client", (Throwable) e);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.f23218for;
            if (inputStream != null) {
                inputStream.close();
            }
        }

        /* renamed from: else, reason: not valid java name */
        public Cclass m27568else() {
            return this.f23217else;
        }

        /* renamed from: for, reason: not valid java name */
        public void m27569for(boolean z) {
            if (z) {
                this.f23223try.put(fi.iki.elonen.Cdo.HEADER_CONNECTION, "close");
            } else {
                this.f23223try.remove(fi.iki.elonen.Cdo.HEADER_CONNECTION);
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public IStatus m27570goto() {
            return this.f23216do;
        }

        /* renamed from: if, reason: not valid java name */
        public void m27571if(String str, String str2) {
            this.f23223try.put(str, str2);
        }

        /* renamed from: import, reason: not valid java name */
        public void m27572import(boolean z) {
            this.f23222this = z;
        }

        /* renamed from: native, reason: not valid java name */
        public void m27573native(boolean z) {
            this.f23214break = z;
        }

        /* renamed from: new, reason: not valid java name */
        public InputStream m27574new() {
            return this.f23218for;
        }

        /* renamed from: public, reason: not valid java name */
        public void m27575public(String str) {
            this.f23220if = str;
        }

        /* renamed from: return, reason: not valid java name */
        public void m27576return(Cclass cclass) {
            this.f23217else = cclass;
        }

        /* renamed from: static, reason: not valid java name */
        public void m27577static(IStatus iStatus) {
            this.f23216do = iStatus;
        }

        /* renamed from: super, reason: not valid java name */
        public long m27578super(PrintWriter printWriter, long j) throws NumberFormatException {
            String strM27581try = m27581try("content-length");
            if (strM27581try != null) {
                try {
                    j = Long.parseLong(strM27581try);
                } catch (NumberFormatException unused) {
                    NanoHTTPD.LOG.severe("content-length was no number " + strM27581try);
                }
            }
            printWriter.print("Content-Length: " + j + "\r\n");
            return j;
        }

        /* renamed from: this, reason: not valid java name */
        public boolean m27579this() {
            return "close".equals(m27581try(fi.iki.elonen.Cdo.HEADER_CONNECTION));
        }

        /* renamed from: throw, reason: not valid java name */
        public void m27580throw(boolean z) {
            this.f23219goto = z;
        }

        /* renamed from: try, reason: not valid java name */
        public String m27581try(String str) {
            return this.f23215case.get(str.toLowerCase());
        }

        /* renamed from: while, reason: not valid java name */
        public void m27582while(InputStream inputStream) {
            this.f23218for = inputStream;
        }
    }

    public interface ServerSocketFactory {
        ServerSocket create() throws IOException;
    }

    public interface TempFile {
        void delete() throws Exception;

        String getName();

        OutputStream open() throws Exception;
    }

    public interface TempFileManager {
        void clear();

        TempFile createTempFile(String str) throws Exception;
    }

    public interface TempFileManagerFactory {
        TempFileManager create();
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$break, reason: invalid class name */
    public class Cbreak implements TempFileManagerFactory {
        private Cbreak() {
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManagerFactory
        public TempFileManager create() {
            return new Cthis();
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$case, reason: invalid class name */
    public static class Ccase implements AsyncRunner {

        /* renamed from: do, reason: not valid java name */
        private long f23226do;

        /* renamed from: if, reason: not valid java name */
        private final List<Cif> f23227if = Collections.synchronizedList(new ArrayList());

        @Override // fi.iki.elonen.NanoHTTPD.AsyncRunner
        public void closeAll() throws IOException {
            Iterator it = new ArrayList(this.f23227if).iterator();
            while (it.hasNext()) {
                ((Cif) it.next()).m27601do();
            }
        }

        @Override // fi.iki.elonen.NanoHTTPD.AsyncRunner
        public void closed(Cif cif) {
            this.f23227if.remove(cif);
        }

        /* renamed from: do, reason: not valid java name */
        public List<Cif> m27584do() {
            return this.f23227if;
        }

        @Override // fi.iki.elonen.NanoHTTPD.AsyncRunner
        public void exec(Cif cif) {
            this.f23226do++;
            Thread thread = new Thread(cif);
            thread.setDaemon(true);
            thread.setName("NanoHttpd Request Processor (#" + this.f23226do + ")");
            this.f23227if.add(cif);
            thread.start();
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$class, reason: invalid class name */
    public enum Cclass {
        GET,
        PUT,
        POST,
        DELETE,
        HEAD,
        OPTIONS,
        TRACE,
        CONNECT,
        PATCH,
        PROPFIND,
        PROPPATCH,
        MKCOL,
        MOVE,
        COPY,
        LOCK,
        UNLOCK;

        public static Cclass lookup(String str) {
            if (str == null) {
                return null;
            }
            try {
                return valueOf(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$else, reason: invalid class name */
    public static class Celse implements ServerSocketFactory {
        @Override // fi.iki.elonen.NanoHTTPD.ServerSocketFactory
        public ServerSocket create() throws IOException {
            return new ServerSocket();
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$final, reason: invalid class name */
    public static class Cfinal implements ServerSocketFactory {

        /* renamed from: do, reason: not valid java name */
        private SSLServerSocketFactory f23248do;

        /* renamed from: if, reason: not valid java name */
        private String[] f23249if;

        public Cfinal(SSLServerSocketFactory sSLServerSocketFactory, String[] strArr) {
            this.f23248do = sSLServerSocketFactory;
            this.f23249if = strArr;
        }

        @Override // fi.iki.elonen.NanoHTTPD.ServerSocketFactory
        public ServerSocket create() throws IOException {
            SSLServerSocket sSLServerSocket = (SSLServerSocket) this.f23248do.createServerSocket();
            String[] strArr = this.f23249if;
            if (strArr != null) {
                sSLServerSocket.setEnabledProtocols(strArr);
            } else {
                sSLServerSocket.setEnabledProtocols(sSLServerSocket.getSupportedProtocols());
            }
            sSLServerSocket.setUseClientMode(false);
            sSLServerSocket.setWantClientAuth(false);
            sSLServerSocket.setNeedClientAuth(false);
            return sSLServerSocket;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: case, reason: not valid java name */
        private static final String f23251case = "multipart/form-data";

        /* renamed from: try, reason: not valid java name */
        private static final String f23257try = "US-ASCII";

        /* renamed from: do, reason: not valid java name */
        private final String f23258do;

        /* renamed from: for, reason: not valid java name */
        private final String f23259for;

        /* renamed from: if, reason: not valid java name */
        private final String f23260if;

        /* renamed from: new, reason: not valid java name */
        private final String f23261new;

        /* renamed from: else, reason: not valid java name */
        private static final String f23254else = "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)";

        /* renamed from: goto, reason: not valid java name */
        private static final Pattern f23255goto = Pattern.compile(f23254else, 2);

        /* renamed from: this, reason: not valid java name */
        private static final String f23256this = "[ |\t]*(charset)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";

        /* renamed from: break, reason: not valid java name */
        private static final Pattern f23250break = Pattern.compile(f23256this, 2);

        /* renamed from: catch, reason: not valid java name */
        private static final String f23252catch = "[ |\t]*(boundary)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";

        /* renamed from: class, reason: not valid java name */
        private static final Pattern f23253class = Pattern.compile(f23252catch, 2);

        public Cfor(String str) {
            this.f23258do = str;
            if (str != null) {
                this.f23260if = m27594new(str, f23255goto, "", 1);
                this.f23259for = m27594new(str, f23250break, null, 2);
            } else {
                this.f23260if = "";
                this.f23259for = "UTF-8";
            }
            if ("multipart/form-data".equalsIgnoreCase(this.f23260if)) {
                this.f23261new = m27594new(str, f23253class, null, 2);
            } else {
                this.f23261new = null;
            }
        }

        /* renamed from: new, reason: not valid java name */
        private String m27594new(String str, Pattern pattern, String str2, int i) {
            Matcher matcher = pattern.matcher(str);
            return matcher.find() ? matcher.group(i) : str2;
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m27595case() {
            return "multipart/form-data".equalsIgnoreCase(this.f23260if);
        }

        /* renamed from: do, reason: not valid java name */
        public String m27596do() {
            return this.f23261new;
        }

        /* renamed from: else, reason: not valid java name */
        public Cfor m27597else() {
            if (this.f23259for != null) {
                return this;
            }
            return new Cfor(this.f23258do + "; charset=UTF-8");
        }

        /* renamed from: for, reason: not valid java name */
        public String m27598for() {
            return this.f23258do;
        }

        /* renamed from: if, reason: not valid java name */
        public String m27599if() {
            return this.f23260if;
        }

        /* renamed from: try, reason: not valid java name */
        public String m27600try() {
            String str = this.f23259for;
            return str == null ? "US-ASCII" : str;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$goto, reason: invalid class name */
    public static class Cgoto implements TempFile {

        /* renamed from: do, reason: not valid java name */
        private final File f23262do;

        /* renamed from: if, reason: not valid java name */
        private final OutputStream f23263if;

        public Cgoto(File file) throws IOException {
            File fileCreateTempFile = File.createTempFile("NanoHTTPD-", "", file);
            this.f23262do = fileCreateTempFile;
            this.f23263if = new FileOutputStream(fileCreateTempFile);
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public void delete() throws Exception {
            NanoHTTPD.safeClose(this.f23263if);
            if (this.f23262do.delete()) {
                return;
            }
            throw new Exception("could not delete temporary file: " + this.f23262do.getAbsolutePath());
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public String getName() {
            return this.f23262do.getAbsolutePath();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public OutputStream open() throws Exception {
            return this.f23263if;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final InputStream f23264do;

        /* renamed from: if, reason: not valid java name */
        private final Socket f23266if;

        public Cif(InputStream inputStream, Socket socket) {
            this.f23264do = inputStream;
            this.f23266if = socket;
        }

        /* renamed from: do, reason: not valid java name */
        public void m27601do() throws IOException {
            NanoHTTPD.safeClose(this.f23264do);
            NanoHTTPD.safeClose(this.f23266if);
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            OutputStream outputStream = null;
            try {
                try {
                    outputStream = this.f23266if.getOutputStream();
                    Ccatch ccatch = NanoHTTPD.this.new Ccatch(NanoHTTPD.this.tempFileManagerFactory.create(), this.f23264do, outputStream, this.f23266if.getInetAddress());
                    while (!this.f23266if.isClosed()) {
                        ccatch.execute();
                    }
                } catch (Exception e) {
                    if ((!(e instanceof SocketException) || !"NanoHttpd Shutdown".equals(e.getMessage())) && !(e instanceof SocketTimeoutException)) {
                        NanoHTTPD.LOG.log(Level.SEVERE, "Communication with the client broken, or an bug in the handler code", (Throwable) e);
                    }
                }
            } finally {
                NanoHTTPD.safeClose(outputStream);
                NanoHTTPD.safeClose(this.f23264do);
                NanoHTTPD.safeClose(this.f23266if);
                NanoHTTPD.this.asyncRunner.closed(this);
            }
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final String f23267do;

        /* renamed from: for, reason: not valid java name */
        private final String f23268for;

        /* renamed from: if, reason: not valid java name */
        private final String f23269if;

        public Cnew(String str, String str2) {
            this(str, str2, 30);
        }

        /* renamed from: if, reason: not valid java name */
        public static String m27602if(int i) {
            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            calendar.add(5, i);
            return simpleDateFormat.format(calendar.getTime());
        }

        /* renamed from: do, reason: not valid java name */
        public String m27603do() {
            return String.format("%s=%s; expires=%s", this.f23267do, this.f23269if, this.f23268for);
        }

        public Cnew(String str, String str2, int i) {
            this.f23267do = str;
            this.f23269if = str2;
            this.f23268for = m27602if(i);
        }

        public Cnew(String str, String str2, String str3) {
            this.f23267do = str;
            this.f23269if = str2;
            this.f23268for = str3;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$super, reason: invalid class name */
    public class Csuper implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final int f23270do;

        /* renamed from: for, reason: not valid java name */
        private boolean f23271for = false;

        /* renamed from: if, reason: not valid java name */
        private IOException f23272if;

        public Csuper(int i) {
            this.f23270do = i;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                NanoHTTPD.this.myServerSocket.bind(NanoHTTPD.this.hostname != null ? new InetSocketAddress(NanoHTTPD.this.hostname, NanoHTTPD.this.myPort) : new InetSocketAddress(NanoHTTPD.this.myPort));
                this.f23271for = true;
                do {
                    try {
                        Socket socketAccept = NanoHTTPD.this.myServerSocket.accept();
                        int i = this.f23270do;
                        if (i > 0) {
                            socketAccept.setSoTimeout(i);
                        }
                        InputStream inputStream = socketAccept.getInputStream();
                        NanoHTTPD nanoHTTPD = NanoHTTPD.this;
                        nanoHTTPD.asyncRunner.exec(nanoHTTPD.createClientHandler(socketAccept, inputStream));
                    } catch (IOException e) {
                        NanoHTTPD.LOG.log(Level.FINE, "Communication with the client broken", (Throwable) e);
                    }
                } while (!NanoHTTPD.this.myServerSocket.isClosed());
            } catch (IOException e2) {
                this.f23272if = e2;
            }
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$this, reason: invalid class name */
    public static class Cthis implements TempFileManager {

        /* renamed from: do, reason: not valid java name */
        private final File f23274do;

        /* renamed from: if, reason: not valid java name */
        private final List<TempFile> f23275if;

        public Cthis() {
            File file = new File(System.getProperty("java.io.tmpdir"));
            this.f23274do = file;
            if (!file.exists()) {
                file.mkdirs();
            }
            this.f23275if = new ArrayList();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public void clear() {
            Iterator<TempFile> it = this.f23275if.iterator();
            while (it.hasNext()) {
                try {
                    it.next().delete();
                } catch (Exception e) {
                    NanoHTTPD.LOG.log(Level.WARNING, "could not delete file ", (Throwable) e);
                }
            }
            this.f23275if.clear();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public TempFile createTempFile(String str) throws Exception {
            Cgoto cgoto = new Cgoto(this.f23274do);
            this.f23275if.add(cgoto);
            return cgoto;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$try, reason: invalid class name */
    public class Ctry implements Iterable<String> {

        /* renamed from: do, reason: not valid java name */
        private final HashMap<String, String> f23276do = new HashMap<>();

        /* renamed from: if, reason: not valid java name */
        private final ArrayList<Cnew> f23278if = new ArrayList<>();

        public Ctry(Map<String, String> map) {
            String str = map.get("cookie");
            if (str != null) {
                for (String str2 : str.split(";")) {
                    String[] strArrSplit = str2.trim().split("=");
                    if (strArrSplit.length == 2) {
                        this.f23276do.put(strArrSplit[0], strArrSplit[1]);
                    }
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m27606do(String str) {
            m27609new(str, "-delete-", -30);
        }

        /* renamed from: for, reason: not valid java name */
        public void m27607for(Cnew cnew) {
            this.f23278if.add(cnew);
        }

        /* renamed from: if, reason: not valid java name */
        public String m27608if(String str) {
            return this.f23276do.get(str);
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return this.f23276do.keySet().iterator();
        }

        /* renamed from: new, reason: not valid java name */
        public void m27609new(String str, String str2, int i) {
            this.f23278if.add(new Cnew(str, str2, Cnew.m27602if(i)));
        }

        /* renamed from: try, reason: not valid java name */
        public void m27610try(Response response) {
            Iterator<Cnew> it = this.f23278if.iterator();
            while (it.hasNext()) {
                response.m27571if(pk0.M, it.next().m27603do());
            }
        }
    }

    public NanoHTTPD(int i) {
        this(null, i);
    }

    public static Map<String, List<String>> decodeParameters(Map<String, String> map) {
        return decodeParameters(map.get(QUERY_STRING_PARAMETER));
    }

    public static String decodePercent(String str) {
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e) {
            LOG.log(Level.WARNING, "Encoding not supported, ignored", (Throwable) e);
            return null;
        }
    }

    public static String getMimeTypeForFile(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        String str2 = iLastIndexOf >= 0 ? mimeTypes().get(str.substring(iLastIndexOf + 1).toLowerCase()) : null;
        return str2 == null ? "application/octet-stream" : str2;
    }

    private static void loadMimeTypes(Map<String, String> map, String str) throws IOException {
        try {
            Enumeration<URL> resources = NanoHTTPD.class.getClassLoader().getResources(str);
            while (resources.hasMoreElements()) {
                URL urlNextElement = resources.nextElement();
                Properties properties = new Properties();
                InputStream inputStreamOpenStream = null;
                try {
                    try {
                        inputStreamOpenStream = urlNextElement.openStream();
                        properties.load(inputStreamOpenStream);
                    } catch (IOException e) {
                        LOG.log(Level.SEVERE, "could not load mimetypes from " + urlNextElement, (Throwable) e);
                    }
                    safeClose(inputStreamOpenStream);
                    map.putAll(properties);
                } catch (Throwable th) {
                    safeClose(inputStreamOpenStream);
                    throw th;
                }
            }
        } catch (IOException unused) {
            LOG.log(Level.INFO, "no mime types available at " + str);
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(KeyStore keyStore, KeyManager[] keyManagerArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, KeyManagementException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(keyManagerArr, trustManagerFactory.getTrustManagers(), null);
            return sSLContext.getServerSocketFactory();
        } catch (Exception e) {
            throw new IOException(e.getMessage());
        }
    }

    public static Map<String, String> mimeTypes() throws IOException {
        if (MIME_TYPES == null) {
            HashMap map = new HashMap();
            MIME_TYPES = map;
            loadMimeTypes(map, "META-INF/nanohttpd/default-mimetypes.properties");
            loadMimeTypes(MIME_TYPES, "META-INF/nanohttpd/mimetypes.properties");
            if (MIME_TYPES.isEmpty()) {
                LOG.log(Level.WARNING, "no mime types found in the classpath! please provide mimetypes.properties");
            }
        }
        return MIME_TYPES;
    }

    public static Response newChunkedResponse(Response.IStatus iStatus, String str, InputStream inputStream) {
        return new Response(iStatus, str, inputStream, -1L);
    }

    public static Response newFixedLengthResponse(Response.IStatus iStatus, String str, InputStream inputStream, long j) {
        return new Response(iStatus, str, inputStream, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safeClose(Object obj) throws IOException {
        if (obj != null) {
            try {
                if (obj instanceof Closeable) {
                    ((Closeable) obj).close();
                } else if (obj instanceof Socket) {
                    ((Socket) obj).close();
                } else {
                    if (!(obj instanceof ServerSocket)) {
                        throw new IllegalArgumentException("Unknown object to close");
                    }
                    ((ServerSocket) obj).close();
                }
            } catch (IOException e) {
                LOG.log(Level.SEVERE, "Could not close", (Throwable) e);
            }
        }
    }

    public synchronized void closeAllConnections() {
        stop();
    }

    public Cif createClientHandler(Socket socket, InputStream inputStream) {
        return new Cif(inputStream, socket);
    }

    public Csuper createServerRunnable(int i) {
        return new Csuper(i);
    }

    public String getHostname() {
        return this.hostname;
    }

    public final int getListeningPort() {
        if (this.myServerSocket == null) {
            return -1;
        }
        return this.myServerSocket.getLocalPort();
    }

    public ServerSocketFactory getServerSocketFactory() {
        return this.serverSocketFactory;
    }

    public TempFileManagerFactory getTempFileManagerFactory() {
        return this.tempFileManagerFactory;
    }

    public final boolean isAlive() {
        return wasStarted() && !this.myServerSocket.isClosed() && this.myThread.isAlive();
    }

    public void makeSecure(SSLServerSocketFactory sSLServerSocketFactory, String[] strArr) {
        this.serverSocketFactory = new Cfinal(sSLServerSocketFactory, strArr);
    }

    public Response serve(IHTTPSession iHTTPSession) {
        HashMap map = new HashMap();
        Cclass method = iHTTPSession.getMethod();
        if (Cclass.PUT.equals(method) || Cclass.POST.equals(method)) {
            try {
                iHTTPSession.parseBody(map);
            } catch (Cconst e) {
                return newFixedLengthResponse(e.getStatus(), MIME_PLAINTEXT, e.getMessage());
            } catch (IOException e2) {
                return newFixedLengthResponse(Response.Cfor.INTERNAL_ERROR, MIME_PLAINTEXT, "SERVER INTERNAL ERROR: IOException: " + e2.getMessage());
            }
        }
        Map<String, String> parms = iHTTPSession.getParms();
        parms.put(QUERY_STRING_PARAMETER, iHTTPSession.getQueryParameterString());
        return serve(iHTTPSession.getUri(), method, iHTTPSession.getHeaders(), parms, map);
    }

    public void setAsyncRunner(AsyncRunner asyncRunner) {
        this.asyncRunner = asyncRunner;
    }

    public void setServerSocketFactory(ServerSocketFactory serverSocketFactory) {
        this.serverSocketFactory = serverSocketFactory;
    }

    public void setTempFileManagerFactory(TempFileManagerFactory tempFileManagerFactory) {
        this.tempFileManagerFactory = tempFileManagerFactory;
    }

    public void start() throws IOException {
        start(SOCKET_READ_TIMEOUT);
    }

    public void stop() throws InterruptedException {
        try {
            safeClose(this.myServerSocket);
            this.asyncRunner.closeAll();
            Thread thread = this.myThread;
            if (thread != null) {
                thread.join();
            }
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Could not stop all connections", (Throwable) e);
        }
    }

    public boolean useGzipWhenAccepted(Response response) {
        return response.m27566case() != null && (response.m27566case().toLowerCase().contains("text/") || response.m27566case().toLowerCase().contains("/json"));
    }

    public final boolean wasStarted() {
        return (this.myServerSocket == null || this.myThread == null) ? false : true;
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$const, reason: invalid class name */
    public static final class Cconst extends Exception {
        private static final long serialVersionUID = 6569838532917408380L;
        private final Response.Cfor status;

        public Cconst(Response.Cfor cfor, String str) {
            super(str);
            this.status = cfor;
        }

        public Response.Cfor getStatus() {
            return this.status;
        }

        public Cconst(Response.Cfor cfor, String str, Exception exc) {
            super(str, exc);
            this.status = cfor;
        }
    }

    public NanoHTTPD(String str, int i) {
        this.serverSocketFactory = new Celse();
        this.hostname = str;
        this.myPort = i;
        setTempFileManagerFactory(new Cbreak());
        setAsyncRunner(new Ccase());
    }

    public static Map<String, List<String>> decodeParameters(String str) {
        HashMap map = new HashMap();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                String strTrim = (iIndexOf >= 0 ? decodePercent(strNextToken.substring(0, iIndexOf)) : decodePercent(strNextToken)).trim();
                if (!map.containsKey(strTrim)) {
                    map.put(strTrim, new ArrayList());
                }
                String strDecodePercent = iIndexOf >= 0 ? decodePercent(strNextToken.substring(iIndexOf + 1)) : null;
                if (strDecodePercent != null) {
                    ((List) map.get(strTrim)).add(strDecodePercent);
                }
            }
        }
        return map;
    }

    public static Response newFixedLengthResponse(Response.IStatus iStatus, String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        Cfor cfor = new Cfor(str);
        if (str2 == null) {
            return newFixedLengthResponse(iStatus, str, new ByteArrayInputStream(new byte[0]), 0L);
        }
        try {
            if (!Charset.forName(cfor.m27600try()).newEncoder().canEncode(str2)) {
                cfor = cfor.m27597else();
            }
            bytes = str2.getBytes(cfor.m27600try());
        } catch (UnsupportedEncodingException e) {
            LOG.log(Level.SEVERE, "encoding problem, responding nothing", (Throwable) e);
            bytes = new byte[0];
        }
        return newFixedLengthResponse(iStatus, cfor.m27598for(), new ByteArrayInputStream(bytes), bytes.length);
    }

    public void start(int i) throws IOException {
        start(i, true);
    }

    public void start(int i, boolean z) throws IOException {
        this.myServerSocket = getServerSocketFactory().create();
        this.myServerSocket.setReuseAddress(true);
        Csuper csuperCreateServerRunnable = createServerRunnable(i);
        Thread thread = new Thread(csuperCreateServerRunnable);
        this.myThread = thread;
        thread.setDaemon(z);
        this.myThread.setName("NanoHttpd Main Listener");
        this.myThread.start();
        while (!csuperCreateServerRunnable.f23271for && csuperCreateServerRunnable.f23272if == null) {
            try {
                Thread.sleep(10L);
            } catch (Throwable unused) {
            }
        }
        if (csuperCreateServerRunnable.f23272if != null) {
            throw csuperCreateServerRunnable.f23272if;
        }
    }

    /* renamed from: fi.iki.elonen.NanoHTTPD$catch, reason: invalid class name */
    public class Ccatch implements IHTTPSession {

        /* renamed from: import, reason: not valid java name */
        public static final int f23228import = 8192;

        /* renamed from: native, reason: not valid java name */
        public static final int f23229native = 1024;

        /* renamed from: throw, reason: not valid java name */
        private static final int f23230throw = 512;

        /* renamed from: while, reason: not valid java name */
        private static final int f23231while = 1024;

        /* renamed from: break, reason: not valid java name */
        private Ctry f23232break;

        /* renamed from: case, reason: not valid java name */
        private String f23233case;

        /* renamed from: catch, reason: not valid java name */
        private String f23234catch;

        /* renamed from: class, reason: not valid java name */
        private String f23235class;

        /* renamed from: const, reason: not valid java name */
        private String f23236const;

        /* renamed from: do, reason: not valid java name */
        private final TempFileManager f23237do;

        /* renamed from: else, reason: not valid java name */
        private Cclass f23238else;

        /* renamed from: final, reason: not valid java name */
        private String f23239final;

        /* renamed from: for, reason: not valid java name */
        private final BufferedInputStream f23240for;

        /* renamed from: goto, reason: not valid java name */
        private Map<String, List<String>> f23241goto;

        /* renamed from: if, reason: not valid java name */
        private final OutputStream f23242if;

        /* renamed from: new, reason: not valid java name */
        private int f23243new;

        /* renamed from: this, reason: not valid java name */
        private Map<String, String> f23245this;

        /* renamed from: try, reason: not valid java name */
        private int f23246try;

        public Ccatch(TempFileManager tempFileManager, InputStream inputStream, OutputStream outputStream) {
            this.f23237do = tempFileManager;
            this.f23240for = new BufferedInputStream(inputStream, 8192);
            this.f23242if = outputStream;
        }

        /* renamed from: case, reason: not valid java name */
        private int[] m27585case(ByteBuffer byteBuffer, byte[] bArr) {
            int[] iArr = new int[0];
            if (byteBuffer.remaining() < bArr.length) {
                return iArr;
            }
            int length = bArr.length + 4096;
            byte[] bArr2 = new byte[length];
            int iRemaining = byteBuffer.remaining() < length ? byteBuffer.remaining() : length;
            byteBuffer.get(bArr2, 0, iRemaining);
            int length2 = iRemaining - bArr.length;
            int i = 0;
            do {
                for (int i2 = 0; i2 < length2; i2++) {
                    for (int i3 = 0; i3 < bArr.length && bArr2[i2 + i3] == bArr[i3]; i3++) {
                        if (i3 == bArr.length - 1) {
                            int[] iArr2 = new int[iArr.length + 1];
                            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                            iArr2[iArr.length] = i + i2;
                            iArr = iArr2;
                        }
                    }
                }
                i += length2;
                System.arraycopy(bArr2, length - bArr.length, bArr2, 0, bArr.length);
                length2 = length - bArr.length;
                if (byteBuffer.remaining() < length2) {
                    length2 = byteBuffer.remaining();
                }
                byteBuffer.get(bArr2, bArr.length, length2);
            } while (length2 > 0);
            return iArr;
        }

        /* renamed from: do, reason: not valid java name */
        private void m27586do(BufferedReader bufferedReader, Map<String, String> map, Map<String, List<String>> map2, Map<String, String> map3) throws Cconst, IOException {
            String strDecodePercent;
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new Cconst(Response.Cfor.BAD_REQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                }
                map.put("method", stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new Cconst(Response.Cfor.BAD_REQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(63);
                if (iIndexOf >= 0) {
                    m27588for(strNextToken.substring(iIndexOf + 1), map2);
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken.substring(0, iIndexOf));
                } else {
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken);
                }
                if (stringTokenizer.hasMoreTokens()) {
                    this.f23239final = stringTokenizer.nextToken();
                } else {
                    this.f23239final = "HTTP/1.1";
                    NanoHTTPD.LOG.log(Level.FINE, "no protocol version specified, strange. Assuming HTTP/1.1.");
                }
                String line2 = bufferedReader.readLine();
                while (line2 != null && !line2.trim().isEmpty()) {
                    int iIndexOf2 = line2.indexOf(58);
                    if (iIndexOf2 >= 0) {
                        map3.put(line2.substring(0, iIndexOf2).trim().toLowerCase(Locale.US), line2.substring(iIndexOf2 + 1).trim());
                    }
                    line2 = bufferedReader.readLine();
                }
                map.put(NotificationCompat.MessagingStyle.Message.KEY_DATA_URI, strDecodePercent);
            } catch (IOException e) {
                throw new Cconst(Response.Cfor.INTERNAL_ERROR, "SERVER INTERNAL ERROR: IOException: " + e.getMessage(), e);
            }
        }

        /* renamed from: else, reason: not valid java name */
        private RandomAccessFile m27587else() {
            try {
                return new RandomAccessFile(this.f23237do.createTempFile(null).getName(), "rw");
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m27588for(String str, Map<String, List<String>> map) {
            String strTrim;
            String strDecodePercent;
            if (str == null) {
                this.f23234catch = "";
                return;
            }
            this.f23234catch = str;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf >= 0) {
                    strTrim = NanoHTTPD.decodePercent(strNextToken.substring(0, iIndexOf)).trim();
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken.substring(iIndexOf + 1));
                } else {
                    strTrim = NanoHTTPD.decodePercent(strNextToken).trim();
                    strDecodePercent = "";
                }
                List<String> arrayList = map.get(strTrim);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map.put(strTrim, arrayList);
                }
                arrayList.add(strDecodePercent);
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private String m27589goto(ByteBuffer byteBuffer, int i, int i2, String str) throws Throwable {
            TempFile tempFileCreateTempFile;
            ByteBuffer byteBufferDuplicate;
            FileOutputStream fileOutputStream;
            if (i2 <= 0) {
                return "";
            }
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    tempFileCreateTempFile = this.f23237do.createTempFile(str);
                    byteBufferDuplicate = byteBuffer.duplicate();
                    fileOutputStream = new FileOutputStream(tempFileCreateTempFile.getName());
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                FileChannel channel = fileOutputStream.getChannel();
                byteBufferDuplicate.position(i).limit(i + i2);
                channel.write(byteBufferDuplicate.slice());
                String name = tempFileCreateTempFile.getName();
                NanoHTTPD.safeClose(fileOutputStream);
                return name;
            } catch (Exception e2) {
                e = e2;
                fileOutputStream2 = fileOutputStream;
                throw new Error(e);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                NanoHTTPD.safeClose(fileOutputStream2);
                throw th;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x0199, code lost:
        
            throw new fi.iki.elonen.NanoHTTPD.Cconst(fi.iki.elonen.NanoHTTPD.Response.Cfor.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary.");
         */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void m27590if(Cfor cfor, ByteBuffer byteBuffer, Map<String, List<String>> map, Map<String, String> map2) throws Throwable {
            String strGroup;
            try {
                int[] iArrM27585case = m27585case(byteBuffer, cfor.m27596do().getBytes());
                int i = 2;
                if (iArrM27585case.length < 2) {
                    throw new Cconst(Response.Cfor.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings.");
                }
                int i2 = 1024;
                byte[] bArr = new byte[1024];
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = 1;
                    if (i4 >= iArrM27585case.length - 1) {
                        return;
                    }
                    byteBuffer.position(iArrM27585case[i4]);
                    int iRemaining = byteBuffer.remaining() < i2 ? byteBuffer.remaining() : 1024;
                    byteBuffer.get(bArr, i3, iRemaining);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, i3, iRemaining), Charset.forName(cfor.m27600try())), iRemaining);
                    String line = bufferedReader.readLine();
                    if (line == null || !line.contains(cfor.m27596do())) {
                        break;
                    }
                    String line2 = bufferedReader.readLine();
                    String str = null;
                    String str2 = null;
                    String strTrim = null;
                    int i7 = 2;
                    while (line2 != null && line2.trim().length() > 0) {
                        Matcher matcher = NanoHTTPD.CONTENT_DISPOSITION_PATTERN.matcher(line2);
                        if (matcher.matches()) {
                            Matcher matcher2 = NanoHTTPD.CONTENT_DISPOSITION_ATTRIBUTE_PATTERN.matcher(matcher.group(i));
                            while (matcher2.find()) {
                                String strGroup2 = matcher2.group(i6);
                                if ("name".equalsIgnoreCase(strGroup2)) {
                                    strGroup = matcher2.group(2);
                                } else {
                                    if ("filename".equalsIgnoreCase(strGroup2)) {
                                        String strGroup3 = matcher2.group(2);
                                        if (!strGroup3.isEmpty()) {
                                            if (i5 > 0) {
                                                strGroup = str + String.valueOf(i5);
                                                str2 = strGroup3;
                                                i5++;
                                            } else {
                                                i5++;
                                            }
                                        }
                                        str2 = strGroup3;
                                    }
                                    i6 = 1;
                                }
                                str = strGroup;
                                i6 = 1;
                            }
                        }
                        Matcher matcher3 = NanoHTTPD.CONTENT_TYPE_PATTERN.matcher(line2);
                        if (matcher3.matches()) {
                            strTrim = matcher3.group(2).trim();
                        }
                        line2 = bufferedReader.readLine();
                        i7++;
                        i = 2;
                        i6 = 1;
                    }
                    int iM27592this = 0;
                    while (true) {
                        int i8 = i7 - 1;
                        if (i7 <= 0) {
                            break;
                        }
                        iM27592this = m27592this(bArr, iM27592this);
                        i7 = i8;
                    }
                    if (iM27592this >= iRemaining - 4) {
                        throw new Cconst(Response.Cfor.INTERNAL_ERROR, "Multipart header size exceeds MAX_HEADER_SIZE.");
                    }
                    int i9 = iArrM27585case[i4] + iM27592this;
                    i4++;
                    int i10 = iArrM27585case[i4] - 4;
                    byteBuffer.position(i9);
                    List<String> arrayList = map.get(str);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        map.put(str, arrayList);
                    }
                    if (strTrim == null) {
                        byte[] bArr2 = new byte[i10 - i9];
                        byteBuffer.get(bArr2);
                        arrayList.add(new String(bArr2, cfor.m27600try()));
                    } else {
                        String strM27589goto = m27589goto(byteBuffer, i9, i10 - i9, str2);
                        if (map2.containsKey(str)) {
                            int i11 = 2;
                            while (true) {
                                if (!map2.containsKey(str + i11)) {
                                    break;
                                } else {
                                    i11++;
                                }
                            }
                            map2.put(str + i11, strM27589goto);
                        } else {
                            map2.put(str, strM27589goto);
                        }
                        arrayList.add(str2);
                    }
                    i2 = 1024;
                    i = 2;
                    i3 = 0;
                }
            } catch (Cconst e) {
                throw e;
            } catch (Exception e2) {
                throw new Cconst(Response.Cfor.INTERNAL_ERROR, e2.toString());
            }
        }

        /* renamed from: new, reason: not valid java name */
        private int m27591new(byte[] bArr, int i) {
            int i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i4 >= i) {
                    return 0;
                }
                if (bArr[i3] == 13 && bArr[i4] == 10 && (i2 = i3 + 3) < i && bArr[i3 + 2] == 13 && bArr[i2] == 10) {
                    return i3 + 4;
                }
                if (bArr[i3] == 10 && bArr[i4] == 10) {
                    return i3 + 2;
                }
                i3 = i4;
            }
        }

        /* renamed from: this, reason: not valid java name */
        private int m27592this(byte[] bArr, int i) {
            while (bArr[i] != 10) {
                i++;
            }
            return i + 1;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public void execute() throws IOException {
            byte[] bArr;
            boolean z;
            Response responseServe = null;
            try {
                try {
                    try {
                        try {
                            try {
                                bArr = new byte[8192];
                                z = false;
                                this.f23243new = 0;
                                this.f23246try = 0;
                                this.f23240for.mark(8192);
                            } catch (IOException e) {
                                NanoHTTPD.newFixedLengthResponse(Response.Cfor.INTERNAL_ERROR, NanoHTTPD.MIME_PLAINTEXT, "SERVER INTERNAL ERROR: IOException: " + e.getMessage()).mo27567catch(this.f23242if);
                                NanoHTTPD.safeClose(this.f23242if);
                            }
                        } catch (Cconst e2) {
                            NanoHTTPD.newFixedLengthResponse(e2.getStatus(), NanoHTTPD.MIME_PLAINTEXT, e2.getMessage()).mo27567catch(this.f23242if);
                            NanoHTTPD.safeClose(this.f23242if);
                        }
                    } catch (SocketException e3) {
                        throw e3;
                    }
                } catch (SocketTimeoutException e4) {
                    throw e4;
                } catch (SSLException e5) {
                    NanoHTTPD.newFixedLengthResponse(Response.Cfor.INTERNAL_ERROR, NanoHTTPD.MIME_PLAINTEXT, "SSL PROTOCOL FAILURE: " + e5.getMessage()).mo27567catch(this.f23242if);
                    NanoHTTPD.safeClose(this.f23242if);
                }
                try {
                    int i = this.f23240for.read(bArr, 0, 8192);
                    if (i == -1) {
                        NanoHTTPD.safeClose(this.f23240for);
                        NanoHTTPD.safeClose(this.f23242if);
                        throw new SocketException("NanoHttpd Shutdown");
                    }
                    while (i > 0) {
                        int i2 = this.f23246try + i;
                        this.f23246try = i2;
                        int iM27591new = m27591new(bArr, i2);
                        this.f23243new = iM27591new;
                        if (iM27591new > 0) {
                            break;
                        }
                        BufferedInputStream bufferedInputStream = this.f23240for;
                        int i3 = this.f23246try;
                        i = bufferedInputStream.read(bArr, i3, 8192 - i3);
                    }
                    if (this.f23243new < this.f23246try) {
                        this.f23240for.reset();
                        this.f23240for.skip(this.f23243new);
                    }
                    this.f23241goto = new HashMap();
                    Map<String, String> map = this.f23245this;
                    if (map == null) {
                        this.f23245this = new HashMap();
                    } else {
                        map.clear();
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, this.f23246try)));
                    HashMap map2 = new HashMap();
                    m27586do(bufferedReader, map2, this.f23241goto, this.f23245this);
                    String str = this.f23235class;
                    if (str != null) {
                        this.f23245this.put("remote-addr", str);
                        this.f23245this.put("http-client-ip", this.f23235class);
                    }
                    Cclass cclassLookup = Cclass.lookup(map2.get("method"));
                    this.f23238else = cclassLookup;
                    if (cclassLookup == null) {
                        throw new Cconst(Response.Cfor.BAD_REQUEST, "BAD REQUEST: Syntax error. HTTP verb " + map2.get("method") + " unhandled.");
                    }
                    this.f23233case = map2.get(NotificationCompat.MessagingStyle.Message.KEY_DATA_URI);
                    this.f23232break = NanoHTTPD.this.new Ctry(this.f23245this);
                    String str2 = this.f23245this.get(fi.iki.elonen.Cdo.HEADER_CONNECTION);
                    boolean z2 = "HTTP/1.1".equals(this.f23239final) && (str2 == null || !str2.matches("(?i).*close.*"));
                    responseServe = NanoHTTPD.this.serve(this);
                    if (responseServe == null) {
                        throw new Cconst(Response.Cfor.INTERNAL_ERROR, "SERVER INTERNAL ERROR: Serve() returned a null response.");
                    }
                    String str3 = this.f23245this.get("accept-encoding");
                    this.f23232break.m27610try(responseServe);
                    responseServe.m27576return(this.f23238else);
                    if (NanoHTTPD.this.useGzipWhenAccepted(responseServe) && str3 != null && str3.contains(Constants.CP_GZIP)) {
                        z = true;
                    }
                    responseServe.m27572import(z);
                    responseServe.m27573native(z2);
                    responseServe.mo27567catch(this.f23242if);
                    if (!z2 || responseServe.m27579this()) {
                        throw new SocketException("NanoHttpd Shutdown");
                    }
                } catch (SSLException e6) {
                    throw e6;
                } catch (IOException unused) {
                    NanoHTTPD.safeClose(this.f23240for);
                    NanoHTTPD.safeClose(this.f23242if);
                    throw new SocketException("NanoHttpd Shutdown");
                }
            } finally {
                NanoHTTPD.safeClose(null);
                this.f23237do.clear();
            }
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public Ctry getCookies() {
            return this.f23232break;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Map<String, String> getHeaders() {
            return this.f23245this;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final InputStream getInputStream() {
            return this.f23240for;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Cclass getMethod() {
            return this.f23238else;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Map<String, List<String>> getParameters() {
            return this.f23241goto;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        @Deprecated
        public final Map<String, String> getParms() {
            HashMap map = new HashMap();
            for (String str : this.f23241goto.keySet()) {
                map.put(str, this.f23241goto.get(str).get(0));
            }
            return map;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getQueryParameterString() {
            return this.f23234catch;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getRemoteHostName() {
            return this.f23236const;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getRemoteIpAddress() {
            return this.f23235class;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final String getUri() {
            return this.f23233case;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public void parseBody(Map<String, String> map) throws Throwable {
            long jM27593try;
            RandomAccessFile randomAccessFileM27587else;
            ByteArrayOutputStream byteArrayOutputStream;
            DataOutput dataOutputStream;
            ByteBuffer map2;
            RandomAccessFile randomAccessFile = null;
            try {
                jM27593try = m27593try();
                if (jM27593try < 1024) {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    randomAccessFileM27587else = null;
                } else {
                    randomAccessFileM27587else = m27587else();
                    byteArrayOutputStream = null;
                    dataOutputStream = randomAccessFileM27587else;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[512];
                while (this.f23246try >= 0 && jM27593try > 0) {
                    int i = this.f23240for.read(bArr, 0, (int) Math.min(jM27593try, 512L));
                    this.f23246try = i;
                    jM27593try -= i;
                    if (i > 0) {
                        dataOutputStream.write(bArr, 0, i);
                    }
                }
                if (byteArrayOutputStream != null) {
                    map2 = ByteBuffer.wrap(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                } else {
                    map2 = randomAccessFileM27587else.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFileM27587else.length());
                    randomAccessFileM27587else.seek(0L);
                }
                if (Cclass.POST.equals(this.f23238else)) {
                    Cfor cfor = new Cfor(this.f23245this.get("content-type"));
                    if (!cfor.m27595case()) {
                        byte[] bArr2 = new byte[map2.remaining()];
                        map2.get(bArr2);
                        String strTrim = new String(bArr2, cfor.m27600try()).trim();
                        if (HttpConnection.FORM_URL_ENCODED.equalsIgnoreCase(cfor.m27599if())) {
                            m27588for(strTrim, this.f23241goto);
                        } else if (strTrim.length() != 0) {
                            map.put("postData", strTrim);
                        }
                    } else {
                        if (cfor.m27596do() == null) {
                            throw new Cconst(Response.Cfor.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                        }
                        m27590if(cfor, map2, this.f23241goto, map);
                    }
                } else if (Cclass.PUT.equals(this.f23238else)) {
                    map.put("content", m27589goto(map2, 0, map2.limit(), null));
                }
                NanoHTTPD.safeClose(randomAccessFileM27587else);
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = randomAccessFileM27587else;
                NanoHTTPD.safeClose(randomAccessFile);
                throw th;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public long m27593try() {
            if (this.f23245this.containsKey("content-length")) {
                return Long.parseLong(this.f23245this.get("content-length"));
            }
            if (this.f23243new < this.f23246try) {
                return r1 - r0;
            }
            return 0L;
        }

        public Ccatch(TempFileManager tempFileManager, InputStream inputStream, OutputStream outputStream, InetAddress inetAddress) {
            this.f23237do = tempFileManager;
            this.f23240for = new BufferedInputStream(inputStream, 8192);
            this.f23242if = outputStream;
            this.f23235class = (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) ? "127.0.0.1" : inetAddress.getHostAddress().toString();
            this.f23236const = (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) ? "localhost" : inetAddress.getHostName().toString();
            this.f23245this = new HashMap();
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(KeyStore keyStore, KeyManagerFactory keyManagerFactory) throws IOException {
        try {
            return makeSSLSocketFactory(keyStore, keyManagerFactory.getKeyManagers());
        } catch (Exception e) {
            throw new IOException(e.getMessage());
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            InputStream resourceAsStream = NanoHTTPD.class.getResourceAsStream(str);
            if (resourceAsStream != null) {
                keyStore.load(resourceAsStream, cArr);
                KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                keyManagerFactory.init(keyStore, cArr);
                return makeSSLSocketFactory(keyStore, keyManagerFactory);
            }
            throw new IOException("Unable to load keystore from classpath: " + str);
        } catch (Exception e) {
            throw new IOException(e.getMessage());
        }
    }

    public static Response newFixedLengthResponse(String str) {
        return newFixedLengthResponse(Response.Cfor.OK, MIME_HTML, str);
    }

    @Deprecated
    public Response serve(String str, Cclass cclass, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        return newFixedLengthResponse(Response.Cfor.NOT_FOUND, MIME_PLAINTEXT, "Not Found");
    }
}
