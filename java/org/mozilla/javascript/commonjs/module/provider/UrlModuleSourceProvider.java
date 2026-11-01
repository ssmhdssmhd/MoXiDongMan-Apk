package org.mozilla.javascript.commonjs.module.provider;

import android.support.v4.pk0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class UrlModuleSourceProvider extends ModuleSourceProviderBase {
    private static final long serialVersionUID = 1;
    private final Iterable<URI> fallbackUris;
    private final Iterable<URI> privilegedUris;
    private final UrlConnectionExpiryCalculator urlConnectionExpiryCalculator;
    private final UrlConnectionSecurityDomainProvider urlConnectionSecurityDomainProvider;

    public static class URLValidator implements Serializable {
        private static final long serialVersionUID = 1;
        private final String entityTags;
        private long expiry;
        private final long lastModified;
        private final URI uri;

        public URLValidator(URI uri, URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) {
            this.uri = uri;
            this.lastModified = uRLConnection.getLastModified();
            this.entityTags = getEntityTags(uRLConnection);
            this.expiry = calculateExpiry(uRLConnection, j, urlConnectionExpiryCalculator);
        }

        private long calculateExpiry(URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) {
            if ("no-cache".equals(uRLConnection.getHeaderField(pk0.f5076try))) {
                return 0L;
            }
            String headerField = uRLConnection.getHeaderField(pk0.f5048do);
            if (headerField != null) {
                if (headerField.indexOf("no-cache") != -1) {
                    return 0L;
                }
                int maxAge = getMaxAge(headerField);
                if (-1 != maxAge) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    return (maxAge * 1000) + (jCurrentTimeMillis - (Math.max(Math.max(0L, jCurrentTimeMillis - uRLConnection.getDate()), uRLConnection.getHeaderFieldInt(pk0.j, 0) * 1000) + (jCurrentTimeMillis - j)));
                }
            }
            long headerFieldDate = uRLConnection.getHeaderFieldDate(pk0.z, -1L);
            if (headerFieldDate != -1) {
                return headerFieldDate;
            }
            if (urlConnectionExpiryCalculator == null) {
                return 0L;
            }
            return urlConnectionExpiryCalculator.calculateExpiry(uRLConnection);
        }

        private String getEntityTags(URLConnection uRLConnection) {
            List<String> list = uRLConnection.getHeaderFields().get(pk0.y);
            if (list == null || list.isEmpty()) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            sb.append(it.next());
            while (it.hasNext()) {
                sb.append(", ");
                sb.append(it.next());
            }
            return sb.toString();
        }

        private int getMaxAge(String str) {
            int iIndexOf;
            int iIndexOf2 = str.indexOf("max-age");
            if (iIndexOf2 == -1 || (iIndexOf = str.indexOf(61, iIndexOf2 + 7)) == -1) {
                return -1;
            }
            int i = iIndexOf + 1;
            int iIndexOf3 = str.indexOf(44, i);
            try {
                return Integer.parseInt(iIndexOf3 == -1 ? str.substring(i) : str.substring(i, iIndexOf3));
            } catch (NumberFormatException unused) {
                return -1;
            }
        }

        private boolean isResourceChanged(URLConnection uRLConnection) throws IOException {
            return uRLConnection instanceof HttpURLConnection ? ((HttpURLConnection) uRLConnection).getResponseCode() == 304 : this.lastModified != uRLConnection.getLastModified();
        }

        public boolean appliesTo(URI uri) {
            return this.uri.equals(uri);
        }

        public void applyConditionals(URLConnection uRLConnection) {
            long j = this.lastModified;
            if (j != 0) {
                uRLConnection.setIfModifiedSince(j);
            }
            String str = this.entityTags;
            if (str == null || str.length() <= 0) {
                return;
            }
            uRLConnection.addRequestProperty(pk0.f5052finally, this.entityTags);
        }

        public boolean entityNeedsRevalidation() {
            return System.currentTimeMillis() > this.expiry;
        }

        public boolean updateValidator(URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) throws IOException {
            boolean zIsResourceChanged = isResourceChanged(uRLConnection);
            if (!zIsResourceChanged) {
                this.expiry = calculateExpiry(uRLConnection, j, urlConnectionExpiryCalculator);
            }
            return zIsResourceChanged;
        }
    }

    public UrlModuleSourceProvider(Iterable<URI> iterable, Iterable<URI> iterable2) {
        this(iterable, iterable2, new DefaultUrlConnectionExpiryCalculator(), null);
    }

    private void close(URLConnection uRLConnection) throws IOException {
        try {
            uRLConnection.getInputStream().close();
        } catch (IOException e) {
            onFailedClosingUrlConnection(uRLConnection, e);
        }
    }

    private static String getCharacterEncoding(URLConnection uRLConnection) {
        ParsedContentType parsedContentType = new ParsedContentType(uRLConnection.getContentType());
        String encoding = parsedContentType.getEncoding();
        if (encoding != null) {
            return encoding;
        }
        String contentType = parsedContentType.getContentType();
        return (contentType == null || !contentType.startsWith("text/")) ? "utf-8" : "8859_1";
    }

    private static Reader getReader(URLConnection uRLConnection) throws IOException {
        return new InputStreamReader(uRLConnection.getInputStream(), getCharacterEncoding(uRLConnection));
    }

    private Object getSecurityDomain(URLConnection uRLConnection) {
        UrlConnectionSecurityDomainProvider urlConnectionSecurityDomainProvider = this.urlConnectionSecurityDomainProvider;
        if (urlConnectionSecurityDomainProvider == null) {
            return null;
        }
        return urlConnectionSecurityDomainProvider.getSecurityDomain(uRLConnection);
    }

    private ModuleSource loadFromPathList(String str, Object obj, Iterable<URI> iterable) throws URISyntaxException, IOException {
        if (iterable == null) {
            return null;
        }
        for (URI uri : iterable) {
            ModuleSource moduleSourceLoadFromUri = loadFromUri(uri.resolve(str), uri, obj);
            if (moduleSourceLoadFromUri != null) {
                return moduleSourceLoadFromUri;
            }
        }
        return null;
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    public boolean entityNeedsRevalidation(Object obj) {
        return !(obj instanceof URLValidator) || ((URLValidator) obj).entityNeedsRevalidation();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ModuleSource loadFromActualUri(URI uri, URI uri2, Object obj) throws IOException {
        URLValidator uRLValidator;
        URL url = new URL(uri2 == null ? null : uri2.toURL(), uri.toString());
        long jCurrentTimeMillis = System.currentTimeMillis();
        URLConnection uRLConnectionOpenUrlConnection = openUrlConnection(url);
        if (obj instanceof URLValidator) {
            uRLValidator = (URLValidator) obj;
            if (!uRLValidator.appliesTo(uri)) {
                uRLValidator = null;
            }
        }
        if (uRLValidator != null) {
            uRLValidator.applyConditionals(uRLConnectionOpenUrlConnection);
        }
        try {
            uRLConnectionOpenUrlConnection.connect();
            if (uRLValidator == null || uRLValidator.updateValidator(uRLConnectionOpenUrlConnection, jCurrentTimeMillis, this.urlConnectionExpiryCalculator)) {
                return new ModuleSource(getReader(uRLConnectionOpenUrlConnection), getSecurityDomain(uRLConnectionOpenUrlConnection), uri, uri2, new URLValidator(uri, uRLConnectionOpenUrlConnection, jCurrentTimeMillis, this.urlConnectionExpiryCalculator));
            }
            close(uRLConnectionOpenUrlConnection);
            return ModuleSourceProvider.NOT_MODIFIED;
        } catch (FileNotFoundException unused) {
            return null;
        } catch (IOException e) {
            close(uRLConnectionOpenUrlConnection);
            throw e;
        } catch (RuntimeException e2) {
            close(uRLConnectionOpenUrlConnection);
            throw e2;
        }
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    public ModuleSource loadFromFallbackLocations(String str, Object obj) throws URISyntaxException, IOException {
        return loadFromPathList(str, obj, this.fallbackUris);
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    public ModuleSource loadFromPrivilegedLocations(String str, Object obj) throws URISyntaxException, IOException {
        return loadFromPathList(str, obj, this.privilegedUris);
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    public ModuleSource loadFromUri(URI uri, URI uri2, Object obj) throws URISyntaxException, IOException {
        ModuleSource moduleSourceLoadFromActualUri = loadFromActualUri(new URI(uri + ".js"), uri2, obj);
        return moduleSourceLoadFromActualUri != null ? moduleSourceLoadFromActualUri : loadFromActualUri(uri, uri2, obj);
    }

    public void onFailedClosingUrlConnection(URLConnection uRLConnection, IOException iOException) {
    }

    public URLConnection openUrlConnection(URL url) throws IOException {
        return url.openConnection();
    }

    public UrlModuleSourceProvider(Iterable<URI> iterable, Iterable<URI> iterable2, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator, UrlConnectionSecurityDomainProvider urlConnectionSecurityDomainProvider) {
        this.privilegedUris = iterable;
        this.fallbackUris = iterable2;
        this.urlConnectionExpiryCalculator = urlConnectionExpiryCalculator;
        this.urlConnectionSecurityDomainProvider = urlConnectionSecurityDomainProvider;
    }
}
