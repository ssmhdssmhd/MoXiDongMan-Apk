package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.wp0;
import java.io.IOException;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u000f\u0010\u0010\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0014"}, d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "Landroid/support/v4/ub2;", "write", "flush", "Lokio/Timeout;", "timeout", "close", "", "toString", "-deprecated_delegate", "()Lokio/Sink;", "delegate", "Lokio/Sink;", "<init>", "(Lokio/Sink;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class ForwardingSink implements Sink {

    @m41
    private final Sink delegate;

    public ForwardingSink(@m41 Sink delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.delegate = delegate;
    }

    @m41
    @wp0(name = "-deprecated_delegate")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "delegate", imports = {}))
    public final Sink a() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @m41
    @wp0(name = "delegate")
    public final Sink delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.Sink
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

    @Override // okio.Sink
    public void write(@m41 Buffer source, long j) throws IOException {
        Csuper.m30700throw(source, "source");
        this.delegate.write(source, j);
    }
}
