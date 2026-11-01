package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.wp0;
import java.io.IOException;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u000f\u0010\u000f\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u0013"}, d2 = {"Lokio/ForwardingSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "Lokio/Timeout;", "timeout", "Landroid/support/v4/ub2;", "close", "", "toString", "-deprecated_delegate", "()Lokio/Source;", "delegate", "Lokio/Source;", "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class ForwardingSource implements Source {

    @m41
    private final Source delegate;

    public ForwardingSource(@m41 Source delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.delegate = delegate;
    }

    @m41
    @wp0(name = "-deprecated_delegate")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "delegate", imports = {}))
    public final Source a() {
        return this.delegate;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @m41
    @wp0(name = "delegate")
    public final Source delegate() {
        return this.delegate;
    }

    @Override // okio.Source
    public long read(@m41 Buffer sink, long j) throws IOException {
        Csuper.m30700throw(sink, "sink");
        return this.delegate.read(sink, j);
    }

    @Override // okio.Source
    @m41
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((Object) getClass().getSimpleName());
        sb.append('(');
        sb.append(this.delegate);
        sb.append(')');
        return sb.toString();
    }
}
