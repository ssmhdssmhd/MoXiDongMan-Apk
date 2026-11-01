package org.chromium.net.urlconnection;

import android.annotation.SuppressLint;
import android.net.TrafficStats;
import android.os.Build;
import android.support.v4.rs;
import android.util.Pair;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import org.chromium.net.Celse;
import org.chromium.net.Cfor;
import org.chromium.net.Creturn;
import org.chromium.net.Cstatic;
import org.jsoup.helper.HttpConnection;

/* renamed from: org.chromium.net.urlconnection.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends HttpURLConnection {

    /* renamed from: import, reason: not valid java name */
    private static final String f33768import = "Content-Length";

    /* renamed from: while, reason: not valid java name */
    private static final String f33769while = Cnew.class.getSimpleName();

    /* renamed from: break, reason: not valid java name */
    private Celse f33770break;

    /* renamed from: case, reason: not valid java name */
    private int f33771case;

    /* renamed from: catch, reason: not valid java name */
    private Cstatic f33772catch;

    /* renamed from: class, reason: not valid java name */
    private IOException f33773class;

    /* renamed from: const, reason: not valid java name */
    private boolean f33774const;

    /* renamed from: do, reason: not valid java name */
    private final Cfor f33775do;

    /* renamed from: else, reason: not valid java name */
    private boolean f33776else;

    /* renamed from: final, reason: not valid java name */
    private boolean f33777final;

    /* renamed from: for, reason: not valid java name */
    private Creturn f33778for;

    /* renamed from: goto, reason: not valid java name */
    private int f33779goto;

    /* renamed from: if, reason: not valid java name */
    private final Cthis f33780if;

    /* renamed from: new, reason: not valid java name */
    private final List<Pair<String, String>> f33781new;

    /* renamed from: super, reason: not valid java name */
    private List<Map.Entry<String, String>> f33782super;

    /* renamed from: this, reason: not valid java name */
    private Ccase f33783this;

    /* renamed from: throw, reason: not valid java name */
    private Map<String, List<String>> f33784throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f33785try;

    /* renamed from: org.chromium.net.urlconnection.new$do, reason: invalid class name */
    public class Cdo extends Creturn.Cif {
        public Cdo() {
        }

        /* renamed from: else, reason: not valid java name */
        private void m37777else(IOException iOException) {
            Cnew.this.f33773class = iOException;
            if (Cnew.this.f33783this != null) {
                Cnew.this.f33783this.m37726for(iOException);
            }
            if (Cnew.this.f33770break != null) {
                Cnew.this.f33770break.m37734case(iOException);
            }
            Cnew.this.f33777final = true;
            Cnew.this.f33780if.m37780case();
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: case */
        public void mo26745case(Creturn creturn, Cstatic cstatic) {
            Cnew.this.f33772catch = cstatic;
            m37777else(null);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: do */
        public void mo26746do(Creturn creturn, Cstatic cstatic) {
            Cnew.this.f33772catch = cstatic;
            m37777else(new IOException("disconnect() called"));
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: for */
        public void mo26747for(Creturn creturn, Cstatic cstatic, ByteBuffer byteBuffer) {
            Cnew.this.f33772catch = cstatic;
            Cnew.this.f33780if.m37780case();
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: if */
        public void mo26748if(Creturn creturn, Cstatic cstatic, rs rsVar) {
            if (rsVar == null) {
                throw new IllegalStateException("Exception cannot be null in onFailed.");
            }
            Cnew.this.f33772catch = cstatic;
            m37777else(rsVar);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: new */
        public void mo26749new(Creturn creturn, Cstatic cstatic, String str) {
            Cnew.this.f33774const = true;
            try {
                URL url = new URL(str);
                boolean zEquals = url.getProtocol().equals(((HttpURLConnection) Cnew.this).url.getProtocol());
                if (((HttpURLConnection) Cnew.this).instanceFollowRedirects) {
                    ((HttpURLConnection) Cnew.this).url = url;
                }
                if (((HttpURLConnection) Cnew.this).instanceFollowRedirects && zEquals) {
                    Cnew.this.f33778for.mo37614if();
                    return;
                }
            } catch (MalformedURLException unused) {
            }
            Cnew.this.f33772catch = cstatic;
            Cnew.this.f33778for.mo37612do();
            m37777else(null);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: try */
        public void mo26750try(Creturn creturn, Cstatic cstatic) {
            Cnew.this.f33772catch = cstatic;
            Cnew.this.f33777final = true;
            Cnew.this.f33780if.m37780case();
        }
    }

    public Cnew(URL url, Cfor cfor) {
        super(url);
        this.f33775do = cfor;
        this.f33780if = new Cthis();
        this.f33783this = new Ccase(this);
        this.f33781new = new ArrayList();
    }

    /* renamed from: const, reason: not valid java name */
    private void m37754const() throws IOException {
        if (!this.f33777final) {
            throw new IllegalStateException("No response.");
        }
        IOException iOException = this.f33773class;
        if (iOException != null) {
            throw iOException;
        }
        Objects.requireNonNull(this.f33772catch, "Response info is null when there is no exception.");
    }

    /* renamed from: final, reason: not valid java name */
    private boolean m37757final() {
        if (this.f33785try) {
            return true;
        }
        int threadStatsTag = TrafficStats.getThreadStatsTag();
        if (threadStatsTag != -1) {
            this.f33771case = threadStatsTag;
            this.f33785try = true;
        }
        return this.f33785try;
    }

    /* renamed from: finally, reason: not valid java name */
    private void m37758finally() throws IOException {
        if (((HttpURLConnection) this).connected) {
            return;
        }
        Celse.Cdo cdo = (Celse.Cdo) this.f33775do.mo6663try(getURL().toString(), new Cdo(), this.f33780if);
        if (((HttpURLConnection) this).doOutput) {
            if (((HttpURLConnection) this).method.equals("GET")) {
                ((HttpURLConnection) this).method = "POST";
            }
            Celse celse = this.f33770break;
            if (celse != null) {
                cdo.mo1273else(celse.mo37732new(), this.f33780if);
                if (getRequestProperty("Content-Length") == null && !m37768switch()) {
                    addRequestProperty("Content-Length", Long.toString(this.f33770break.mo37732new().mo37419do()));
                }
                this.f33770break.mo37733try();
            } else if (getRequestProperty("Content-Length") == null) {
                addRequestProperty("Content-Length", "0");
            }
            if (getRequestProperty("Content-Type") == null) {
                addRequestProperty("Content-Type", HttpConnection.FORM_URL_ENCODED);
            }
        }
        for (Pair<String, String> pair : this.f33781new) {
            cdo.mo1272do((String) pair.first, (String) pair.second);
        }
        if (!getUseCaches()) {
            cdo.mo1282new();
        }
        cdo.mo1294try(((HttpURLConnection) this).method);
        if (m37757final()) {
            cdo.mo1280import(this.f33771case);
        }
        if (m37767super()) {
            cdo.mo1281native(this.f33779goto);
        }
        Celse celseMo1277for = cdo.mo1277for();
        this.f33778for = celseMo1277for;
        celseMo1277for.mo37609case();
        ((HttpURLConnection) this).connected = true;
    }

    /* renamed from: import, reason: not valid java name */
    private List<Map.Entry<String, String>> m37762import() {
        List<Map.Entry<String, String>> list = this.f33782super;
        if (list != null) {
            return list;
        }
        this.f33782super = new ArrayList();
        for (Map.Entry<String, String> entry : this.f33772catch.mo37702if()) {
            if (!entry.getKey().equalsIgnoreCase("Content-Encoding")) {
                this.f33782super.add(new AbstractMap.SimpleImmutableEntry(entry));
            }
        }
        List<Map.Entry<String, String>> listUnmodifiableList = Collections.unmodifiableList(this.f33782super);
        this.f33782super = listUnmodifiableList;
        return listUnmodifiableList;
    }

    /* renamed from: native, reason: not valid java name */
    private Map.Entry<String, String> m37763native(int i) {
        try {
            m37765return();
            List<Map.Entry<String, String>> listM37762import = m37762import();
            if (i >= listM37762import.size()) {
                return null;
            }
            return listM37762import.get(i);
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m37765return() throws IOException {
        Celse celse = this.f33770break;
        if (celse != null) {
            celse.mo37731for();
            if (m37768switch()) {
                this.f33770break.close();
            }
        }
        if (!this.f33777final) {
            m37758finally();
            this.f33780if.m37783new();
        }
        m37754const();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: static, reason: not valid java name */
    private long m37766static() throws IllegalAccessException, IllegalArgumentException {
        long j = ((HttpURLConnection) this).fixedContentLength;
        try {
            long j2 = getClass().getField("fixedContentLengthLong").getLong(this);
            return j2 != -1 ? j2 : j;
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return j;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m37767super() {
        if (this.f33776else) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        int threadStatsUid = TrafficStats.getThreadStatsUid();
        if (threadStatsUid != -1) {
            this.f33779goto = threadStatsUid;
            this.f33776else = true;
        }
        return this.f33776else;
    }

    /* renamed from: switch, reason: not valid java name */
    private boolean m37768switch() {
        return ((HttpURLConnection) this).chunkLength > 0;
    }

    /* renamed from: throw, reason: not valid java name */
    private int m37770throw(String str) {
        for (int i = 0; i < this.f33781new.size(); i++) {
            if (((String) this.f33781new.get(i).first).equalsIgnoreCase(str)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: throws, reason: not valid java name */
    private final void m37771throws(String str, String str2, boolean z) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot modify request property after connection is made.");
        }
        int iM37770throw = m37770throw(str);
        if (iM37770throw >= 0) {
            if (!z) {
                throw new UnsupportedOperationException("Cannot add multiple headers of the same key, " + str + ". crbug.com/432719.");
            }
            this.f33781new.remove(iM37770throw);
        }
        this.f33781new.add(Pair.create(str, str2));
    }

    /* renamed from: while, reason: not valid java name */
    private Map<String, List<String>> m37773while() {
        Map<String, List<String>> map = this.f33784throw;
        if (map != null) {
            return map;
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Map.Entry<String, String> entry : m37762import()) {
            ArrayList arrayList = new ArrayList();
            if (treeMap.containsKey(entry.getKey())) {
                arrayList.addAll((Collection) treeMap.get(entry.getKey()));
            }
            arrayList.add(entry.getValue());
            treeMap.put(entry.getKey(), Collections.unmodifiableList(arrayList));
        }
        Map<String, List<String>> mapUnmodifiableMap = Collections.unmodifiableMap(treeMap);
        this.f33784throw = mapUnmodifiableMap;
        return mapUnmodifiableMap;
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        m37771throws(str, str2, false);
    }

    @Override // java.net.URLConnection
    public void connect() throws IllegalAccessException, IOException, IllegalArgumentException {
        getOutputStream();
        m37758finally();
    }

    /* renamed from: default, reason: not valid java name */
    public void m37774default(int i) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot modify traffic stats tag after connection is made.");
        }
        this.f33785try = true;
        this.f33771case = i;
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        if (((HttpURLConnection) this).connected) {
            this.f33778for.mo37612do();
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void m37775extends(int i) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot modify traffic stats UID after connection is made.");
        }
        this.f33776else = true;
        this.f33779goto = i;
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        try {
            m37765return();
            if (this.f33772catch.mo37700for() >= 400) {
                return this.f33783this;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        try {
            m37765return();
            Map<String, List<String>> mapM37773while = m37773while();
            if (!mapM37773while.containsKey(str)) {
                return null;
            }
            return mapM37773while.get(str).get(r4.size() - 1);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        Map.Entry<String, String> entryM37763native = m37763native(i);
        if (entryM37763native == null) {
            return null;
        }
        return entryM37763native.getKey();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        try {
            m37765return();
            return m37773while();
        } catch (IOException unused) {
            return Collections.emptyMap();
        }
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        m37765return();
        if (!((HttpURLConnection) this).instanceFollowRedirects && this.f33774const) {
            throw new IOException("Cannot read response body of a redirect.");
        }
        if (this.f33772catch.mo37700for() < 400) {
            return this.f33783this;
        }
        throw new FileNotFoundException(((HttpURLConnection) this).url.toString());
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IllegalAccessException, IOException, IllegalArgumentException {
        if (this.f33770break == null && ((HttpURLConnection) this).doOutput) {
            if (((HttpURLConnection) this).connected) {
                throw new ProtocolException("Cannot write to OutputStream after receiving response.");
            }
            if (m37768switch()) {
                this.f33770break = new Cif(this, ((HttpURLConnection) this).chunkLength, this.f33780if);
                m37758finally();
            } else {
                long jM37766static = m37766static();
                if (jM37766static != -1) {
                    this.f33770break = new Cfor(this, jM37766static, this.f33780if);
                    m37758finally();
                } else {
                    String requestProperty = getRequestProperty("Content-Length");
                    if (requestProperty == null) {
                        this.f33770break = new org.chromium.net.urlconnection.Cdo(this);
                    } else {
                        this.f33770break = new org.chromium.net.urlconnection.Cdo(this, Long.parseLong(requestProperty));
                    }
                }
            }
        }
        return this.f33770break;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot access request headers after connection is set.");
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Pair<String, String> pair : this.f33781new) {
            if (treeMap.containsKey(pair.first)) {
                throw new IllegalStateException("Should not have multiple values.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add((String) pair.second);
            treeMap.put((String) pair.first, Collections.unmodifiableList(arrayList));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        int iM37770throw = m37770throw(str);
        if (iM37770throw >= 0) {
            return (String) this.f33781new.get(iM37770throw).second;
        }
        return null;
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        m37765return();
        return this.f33772catch.mo37700for();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        m37765return();
        return this.f33772catch.mo37703new();
    }

    /* renamed from: public, reason: not valid java name */
    public void m37776public(ByteBuffer byteBuffer) throws IOException {
        this.f33778for.mo37618try(byteBuffer);
        this.f33780if.m37784try(getReadTimeout());
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        m37771throws(str, str2, true);
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return false;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        Map.Entry<String, String> entryM37763native = m37763native(i);
        if (entryM37763native == null) {
            return null;
        }
        return entryM37763native.getValue();
    }
}
