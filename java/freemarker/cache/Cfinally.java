package freemarker.cache;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* renamed from: freemarker.cache.finally, reason: invalid class name */
/* loaded from: classes.dex */
class Cfinally {

    /* renamed from: do, reason: not valid java name */
    private final URL f23341do;

    /* renamed from: for, reason: not valid java name */
    private InputStream f23342for;

    /* renamed from: if, reason: not valid java name */
    private URLConnection f23343if;

    /* renamed from: new, reason: not valid java name */
    private Boolean f23344new;

    public Cfinally(URL url, Boolean bool) throws IOException {
        this.f23341do = url;
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        this.f23343if = uRLConnectionOpenConnection;
        this.f23344new = bool;
        if (bool != null) {
            uRLConnectionOpenConnection.setUseCaches(bool.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public void m27686do() throws IOException {
        try {
            InputStream inputStream = this.f23342for;
            if (inputStream != null) {
                inputStream.close();
            } else {
                this.f23343if.getInputStream().close();
            }
        } finally {
            this.f23342for = null;
            this.f23343if = null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cfinally) {
            return this.f23341do.equals(((Cfinally) obj).f23341do);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public Boolean m27687for() {
        return this.f23344new;
    }

    public int hashCode() {
        return this.f23341do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public InputStream m27688if() throws IOException {
        InputStream inputStream = this.f23342for;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            this.f23343if = this.f23341do.openConnection();
        }
        InputStream inputStream2 = this.f23343if.getInputStream();
        this.f23342for = inputStream2;
        return inputStream2;
    }

    /* renamed from: new, reason: not valid java name */
    public long m27689new() throws IOException {
        URLConnection uRLConnection = this.f23343if;
        if (!(uRLConnection instanceof JarURLConnection)) {
            long lastModified = uRLConnection.getLastModified();
            return (lastModified == -1 && this.f23341do.getProtocol().equals("file")) ? new File(this.f23341do.getFile()).lastModified() : lastModified;
        }
        URL jarFileURL = ((JarURLConnection) uRLConnection).getJarFileURL();
        if (jarFileURL.getProtocol().equals("file")) {
            return new File(jarFileURL.getFile()).lastModified();
        }
        URLConnection uRLConnectionOpenConnection = null;
        try {
            uRLConnectionOpenConnection = jarFileURL.openConnection();
            long lastModified2 = uRLConnectionOpenConnection.getLastModified();
            try {
                uRLConnectionOpenConnection.getInputStream().close();
            } catch (IOException unused) {
            }
            return lastModified2;
        } catch (IOException unused2) {
            if (uRLConnectionOpenConnection != null) {
                try {
                    uRLConnectionOpenConnection.getInputStream().close();
                } catch (IOException unused3) {
                }
            }
            return -1L;
        } catch (Throwable th) {
            if (uRLConnectionOpenConnection != null) {
                try {
                    uRLConnectionOpenConnection.getInputStream().close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    public String toString() {
        return this.f23341do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m27690try(boolean z) {
        URLConnection uRLConnection = this.f23343if;
        if (uRLConnection != null) {
            uRLConnection.setUseCaches(z);
            this.f23344new = Boolean.valueOf(z);
        }
    }
}
