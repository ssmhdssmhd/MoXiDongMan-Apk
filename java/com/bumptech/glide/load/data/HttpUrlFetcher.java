package com.bumptech.glide.load.data;

import android.support.v4.nk0;
import android.support.v4.pk0;
import android.support.v4.sv0;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.Cif;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {

    /* renamed from: break, reason: not valid java name */
    private static final int f9489break = -1;

    /* renamed from: else, reason: not valid java name */
    private static final String f9490else = "HttpUrlFetcher";

    /* renamed from: goto, reason: not valid java name */
    private static final int f9491goto = 5;

    /* renamed from: this, reason: not valid java name */
    @VisibleForTesting
    public static final HttpUrlConnectionFactory f9492this = new Cdo();

    /* renamed from: case, reason: not valid java name */
    private volatile boolean f9493case;

    /* renamed from: do, reason: not valid java name */
    private final Cif f9494do;

    /* renamed from: for, reason: not valid java name */
    private final HttpUrlConnectionFactory f9495for;

    /* renamed from: if, reason: not valid java name */
    private final int f9496if;

    /* renamed from: new, reason: not valid java name */
    private HttpURLConnection f9497new;

    /* renamed from: try, reason: not valid java name */
    private InputStream f9498try;

    public interface HttpUrlConnectionFactory {
        HttpURLConnection build(URL url) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.data.HttpUrlFetcher$do, reason: invalid class name */
    public static class Cdo implements HttpUrlConnectionFactory {
        @Override // com.bumptech.glide.load.data.HttpUrlFetcher.HttpUrlConnectionFactory
        public HttpURLConnection build(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    public HttpUrlFetcher(Cif cif, int i) {
        this(cif, i, f9492this);
    }

    /* renamed from: do, reason: not valid java name */
    private InputStream m11267do(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f9498try = com.bumptech.glide.util.Cif.m12076if(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(f9490else, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Got non empty content encoding: ");
                sb.append(httpURLConnection.getContentEncoding());
            }
            this.f9498try = httpURLConnection.getInputStream();
        }
        return this.f9498try;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m11268for(int i) {
        return i / 100 == 3;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m11269if(int i) {
        return i / 100 == 2;
    }

    /* renamed from: new, reason: not valid java name */
    private InputStream m11270new(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i >= 5) {
            throw new nk0("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new nk0("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.f9497new = this.f9495for.build(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f9497new.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f9497new.setConnectTimeout(this.f9496if);
        this.f9497new.setReadTimeout(this.f9496if);
        this.f9497new.setUseCaches(false);
        this.f9497new.setDoInput(true);
        this.f9497new.setInstanceFollowRedirects(false);
        this.f9497new.connect();
        this.f9498try = this.f9497new.getInputStream();
        if (this.f9493case) {
            return null;
        }
        int responseCode = this.f9497new.getResponseCode();
        if (m11269if(responseCode)) {
            return m11267do(this.f9497new);
        }
        if (!m11268for(responseCode)) {
            if (responseCode == -1) {
                throw new nk0(responseCode);
            }
            throw new nk0(this.f9497new.getResponseMessage(), responseCode);
        }
        String headerField = this.f9497new.getHeaderField(pk0.C);
        if (TextUtils.isEmpty(headerField)) {
            throw new nk0("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        cleanup();
        return m11270new(url3, i + 1, url, map);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.f9493case = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() throws IOException {
        InputStream inputStream = this.f9498try;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f9497new;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f9497new = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public com.bumptech.glide.load.Cdo getDataSource() {
        return com.bumptech.glide.load.Cdo.REMOTE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        StringBuilder sb;
        String str = f9490else;
        long jM7613if = sv0.m7613if();
        try {
            try {
                dataCallback.onDataReady(m11270new(this.f9494do.m11662else(), 0, null, this.f9494do.m11663for()));
                str = str;
            } catch (IOException e) {
                Log.isLoggable(f9490else, 3);
                dataCallback.onLoadFailed(e);
                str = str;
                if (Log.isLoggable(f9490else, 2)) {
                    sb = new StringBuilder();
                }
            }
            if (Log.isLoggable(f9490else, 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                double dM7612do = sv0.m7612do(jM7613if);
                sb.append(dM7612do);
                str = dM7612do;
            }
        } catch (Throwable th) {
            if (Log.isLoggable(str, 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                sb2.append(sv0.m7612do(jM7613if));
            }
            throw th;
        }
    }

    @VisibleForTesting
    public HttpUrlFetcher(Cif cif, int i, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.f9494do = cif;
        this.f9496if = i;
        this.f9495for = httpUrlConnectionFactory;
    }
}
