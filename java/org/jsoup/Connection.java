package org.jsoup;

import android.support.v4.y41;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieStore;
import java.net.Proxy;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;

/* loaded from: classes3.dex */
public interface Connection {

    public interface Base<T extends Base<T>> {
        T addHeader(String str, String str2);

        @y41
        String cookie(String str);

        T cookie(String str, String str2);

        Map<String, String> cookies();

        boolean hasCookie(String str);

        boolean hasHeader(String str);

        boolean hasHeaderWithValue(String str, String str2);

        @y41
        String header(String str);

        T header(String str, String str2);

        List<String> headers(String str);

        Map<String, String> headers();

        T method(Method method);

        Method method();

        Map<String, List<String>> multiHeaders();

        T removeCookie(String str);

        T removeHeader(String str);

        URL url();

        T url(URL url);
    }

    public interface KeyVal {
        @y41
        String contentType();

        KeyVal contentType(String str);

        boolean hasInputStream();

        @y41
        InputStream inputStream();

        KeyVal inputStream(InputStream inputStream);

        String key();

        KeyVal key(String str);

        String value();

        KeyVal value(String str);
    }

    public enum Method {
        GET(false),
        POST(true),
        PUT(true),
        DELETE(false),
        PATCH(true),
        HEAD(false),
        OPTIONS(false),
        TRACE(false);

        private final boolean hasBody;

        Method(boolean z) {
            this.hasBody = z;
        }

        public final boolean hasBody() {
            return this.hasBody;
        }
    }

    public interface Request extends Base<Request> {
        Collection<KeyVal> data();

        Request data(KeyVal keyVal);

        Request followRedirects(boolean z);

        boolean followRedirects();

        Request ignoreContentType(boolean z);

        boolean ignoreContentType();

        Request ignoreHttpErrors(boolean z);

        boolean ignoreHttpErrors();

        int maxBodySize();

        Request maxBodySize(int i);

        Request parser(Parser parser);

        Parser parser();

        String postDataCharset();

        Request postDataCharset(String str);

        @y41
        Proxy proxy();

        Request proxy(String str, int i);

        Request proxy(@y41 Proxy proxy);

        @y41
        String requestBody();

        Request requestBody(@y41 String str);

        @y41
        SSLSocketFactory sslSocketFactory();

        void sslSocketFactory(SSLSocketFactory sSLSocketFactory);

        int timeout();

        Request timeout(int i);
    }

    public interface Response extends Base<Response> {
        String body();

        byte[] bodyAsBytes();

        BufferedInputStream bodyStream();

        Response bufferUp();

        @y41
        String charset();

        Response charset(String str);

        @y41
        String contentType();

        Document parse() throws IOException;

        int statusCode();

        String statusMessage();
    }

    Connection cookie(String str, String str2);

    CookieStore cookieStore();

    Connection cookieStore(CookieStore cookieStore);

    Connection cookies(Map<String, String> map);

    @y41
    KeyVal data(String str);

    Connection data(String str, String str2);

    Connection data(String str, String str2, InputStream inputStream);

    Connection data(String str, String str2, InputStream inputStream, String str3);

    Connection data(Collection<KeyVal> collection);

    Connection data(Map<String, String> map);

    Connection data(String... strArr);

    Response execute() throws IOException;

    Connection followRedirects(boolean z);

    Document get() throws IOException;

    Connection header(String str, String str2);

    Connection headers(Map<String, String> map);

    Connection ignoreContentType(boolean z);

    Connection ignoreHttpErrors(boolean z);

    Connection maxBodySize(int i);

    Connection method(Method method);

    Connection newRequest();

    Connection parser(Parser parser);

    Document post() throws IOException;

    Connection postDataCharset(String str);

    Connection proxy(String str, int i);

    Connection proxy(@y41 Proxy proxy);

    Connection referrer(String str);

    Request request();

    Connection request(Request request);

    Connection requestBody(String str);

    Response response();

    Connection response(Response response);

    Connection sslSocketFactory(SSLSocketFactory sSLSocketFactory);

    Connection timeout(int i);

    Connection url(String str);

    Connection url(URL url);

    Connection userAgent(String str);
}
