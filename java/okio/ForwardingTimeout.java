package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0012J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0001H\u0016J\b\u0010\r\u001a\u00020\u0001H\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016R\"\u0010\u0002\u001a\u00020\u00018\u0007@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0002\u0010\u0010\u001a\u0004\b\u0002\u0010\u0011\"\u0004\b\u0003\u0010\u0012¨\u0006\u0014"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "setDelegate", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "timeoutNanos", "", "hasDeadline", "deadlineNanoTime", "clearTimeout", "clearDeadline", "Landroid/support/v4/ub2;", "throwIfReached", "Lokio/Timeout;", "()Lokio/Timeout;", "(Lokio/Timeout;)V", "<init>", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class ForwardingTimeout extends Timeout {

    @m41
    private Timeout delegate;

    public ForwardingTimeout(@m41 Timeout delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.Timeout
    @m41
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    @m41
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @m41
    @wp0(name = "delegate")
    public final Timeout delegate() {
        return this.delegate;
    }

    @Override // okio.Timeout
    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    /* renamed from: setDelegate, reason: collision with other method in class */
    public final /* synthetic */ void m31746setDelegate(Timeout timeout) {
        Csuper.m30700throw(timeout, "<set-?>");
        this.delegate = timeout;
    }

    @Override // okio.Timeout
    public void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    @m41
    public Timeout timeout(long j, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        return this.delegate.timeout(j, unit);
    }

    @Override // okio.Timeout
    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }

    @Override // okio.Timeout
    @m41
    public Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }

    @m41
    public final ForwardingTimeout setDelegate(@m41 Timeout delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.delegate = delegate;
        return this;
    }
}
