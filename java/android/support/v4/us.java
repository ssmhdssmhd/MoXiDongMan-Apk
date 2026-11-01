package android.support.v4;

import java.io.InputStream;
import java.net.HttpURLConnection;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import org.chromium.net.urlconnection.Cnew;

/* loaded from: classes2.dex */
public class us extends ResponseBody {

    /* renamed from: do, reason: not valid java name */
    private MediaType f6972do;

    /* renamed from: for, reason: not valid java name */
    private InputStream f6973for;

    /* renamed from: if, reason: not valid java name */
    private long f6974if;

    /* renamed from: new, reason: not valid java name */
    private HttpURLConnection f6975new;

    public us(Cnew cnew, MediaType mediaType, long j, InputStream inputStream) {
        this.f6972do = mediaType;
        this.f6974if = j;
        this.f6973for = inputStream;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f6974if;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.f6972do;
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        return Okio.buffer(Okio.source(this.f6973for));
    }
}
