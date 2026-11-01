package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b.\u0010/J&\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005H\u0082\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002J\u000f\u0010\b\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u0010\u001a\u00020\u0004R\u001c\u0010\u0012\u001a\u00020\u00118\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u00020\u00168\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\"\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R\"\u0010%\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001d\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R$\u0010(\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u000b\"\u0004\b+\u0010,R\u0019\u0010\b\u001a\u00020\u00028G@\u0006¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b\b\u0010\u000bR\u0019\u0010\u000f\u001a\u00020\f8G@\u0006¢\u0006\f\n\u0004\b\u000f\u0010-\u001a\u0004\b\u000f\u0010\u000e¨\u00060"}, d2 = {"Lokio/Pipe;", "", "Lokio/Sink;", "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "block", "forward", "sink", "fold", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "", "maxBufferSize", "J", "getMaxBufferSize$okio", "()J", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "", "canceled", "Z", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "(Lokio/Sink;)V", "Lokio/Source;", "<init>", "(J)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class Pipe {

    @m41
    private final Buffer buffer = new Buffer();
    private boolean canceled;

    @z41
    private Sink foldedSink;
    private final long maxBufferSize;

    @m41
    private final Sink sink;
    private boolean sinkClosed;

    @m41
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j) {
        this.maxBufferSize = j;
        if (!(j >= 1)) {
            throw new IllegalArgumentException(Csuper.m30690private("maxBufferSize < 1: ", Long.valueOf(getMaxBufferSize$okio())).toString());
        }
        this.sink = new Sink() { // from class: okio.Pipe.sink.1

            @m41
            private final Timeout timeout = new Timeout();

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                Pipe pipe = Pipe.this;
                synchronized (buffer$okio) {
                    if (pipe.getSinkClosed$okio()) {
                        return;
                    }
                    Sink foldedSink$okio = pipe.getFoldedSink$okio();
                    if (foldedSink$okio == null) {
                        if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        pipe.setSinkClosed$okio(true);
                        pipe.getBuffer$okio().notifyAll();
                        foldedSink$okio = null;
                    }
                    ub2 ub2Var = ub2.f6820do;
                    if (foldedSink$okio == null) {
                        return;
                    }
                    Pipe pipe2 = Pipe.this;
                    Timeout timeout = foldedSink$okio.timeout();
                    Timeout timeout2 = pipe2.sink().timeout();
                    long jTimeoutNanos = timeout.timeoutNanos();
                    long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    timeout.timeout(jMinTimeout, timeUnit);
                    if (!timeout.hasDeadline()) {
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                        }
                        try {
                            foldedSink$okio.close();
                            timeout.timeout(jTimeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                            }
                            throw th;
                        }
                    }
                    long jDeadlineNanoTime = timeout.deadlineNanoTime();
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                    }
                    try {
                        foldedSink$okio.close();
                        timeout.timeout(jTimeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(jDeadlineNanoTime);
                        }
                    } catch (Throwable th2) {
                        timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(jDeadlineNanoTime);
                        }
                        throw th2;
                    }
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                Sink foldedSink$okio;
                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                Pipe pipe = Pipe.this;
                synchronized (buffer$okio) {
                    if (!(!pipe.getSinkClosed$okio())) {
                        throw new IllegalStateException("closed".toString());
                    }
                    if (pipe.getCanceled$okio()) {
                        throw new IOException("canceled");
                    }
                    foldedSink$okio = pipe.getFoldedSink$okio();
                    if (foldedSink$okio == null) {
                        if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        foldedSink$okio = null;
                    }
                    ub2 ub2Var = ub2.f6820do;
                }
                if (foldedSink$okio == null) {
                    return;
                }
                Pipe pipe2 = Pipe.this;
                Timeout timeout = foldedSink$okio.timeout();
                Timeout timeout2 = pipe2.sink().timeout();
                long jTimeoutNanos = timeout.timeoutNanos();
                long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                timeout.timeout(jMinTimeout, timeUnit);
                if (!timeout.hasDeadline()) {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        foldedSink$okio.flush();
                        timeout.timeout(jTimeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long jDeadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    foldedSink$okio.flush();
                    timeout.timeout(jTimeoutNanos, timeUnit);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(jDeadlineNanoTime);
                    }
                } catch (Throwable th2) {
                    timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(jDeadlineNanoTime);
                    }
                    throw th2;
                }
            }

            @Override // okio.Sink
            @m41
            public Timeout timeout() {
                return this.timeout;
            }

            /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
            
                r1 = android.support.v4.ub2.f6820do;
             */
            @Override // okio.Sink
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void write(@m41 Buffer source, long j2) {
                Sink foldedSink$okio;
                Csuper.m30700throw(source, "source");
                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                Pipe pipe = Pipe.this;
                synchronized (buffer$okio) {
                    if (!(!pipe.getSinkClosed$okio())) {
                        throw new IllegalStateException("closed".toString());
                    }
                    if (!pipe.getCanceled$okio()) {
                        while (true) {
                            if (j2 <= 0) {
                                foldedSink$okio = null;
                                break;
                            }
                            foldedSink$okio = pipe.getFoldedSink$okio();
                            if (foldedSink$okio != null) {
                                break;
                            }
                            if (pipe.getSourceClosed$okio()) {
                                throw new IOException("source is closed");
                            }
                            long maxBufferSize$okio = pipe.getMaxBufferSize$okio() - pipe.getBuffer$okio().size();
                            if (maxBufferSize$okio == 0) {
                                this.timeout.waitUntilNotified(pipe.getBuffer$okio());
                                if (pipe.getCanceled$okio()) {
                                    throw new IOException("canceled");
                                }
                            } else {
                                long jMin = Math.min(maxBufferSize$okio, j2);
                                pipe.getBuffer$okio().write(source, jMin);
                                j2 -= jMin;
                                pipe.getBuffer$okio().notifyAll();
                            }
                        }
                    } else {
                        throw new IOException("canceled");
                    }
                }
                if (foldedSink$okio == null) {
                    return;
                }
                Pipe pipe2 = Pipe.this;
                Timeout timeout = foldedSink$okio.timeout();
                Timeout timeout2 = pipe2.sink().timeout();
                long jTimeoutNanos = timeout.timeoutNanos();
                long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                timeout.timeout(jMinTimeout, timeUnit);
                if (!timeout.hasDeadline()) {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        foldedSink$okio.write(source, j2);
                        timeout.timeout(jTimeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long jDeadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    foldedSink$okio.write(source, j2);
                    timeout.timeout(jTimeoutNanos, timeUnit);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(jDeadlineNanoTime);
                    }
                } catch (Throwable th2) {
                    timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(jDeadlineNanoTime);
                    }
                    throw th2;
                }
            }
        };
        this.source = new Source() { // from class: okio.Pipe.source.1

            @m41
            private final Timeout timeout = new Timeout();

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                Pipe pipe = Pipe.this;
                synchronized (buffer$okio) {
                    pipe.setSourceClosed$okio(true);
                    pipe.getBuffer$okio().notifyAll();
                    ub2 ub2Var = ub2.f6820do;
                }
            }

            @Override // okio.Source
            public long read(@m41 Buffer sink, long j2) {
                Csuper.m30700throw(sink, "sink");
                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                Pipe pipe = Pipe.this;
                synchronized (buffer$okio) {
                    if (!(!pipe.getSourceClosed$okio())) {
                        throw new IllegalStateException("closed".toString());
                    }
                    if (pipe.getCanceled$okio()) {
                        throw new IOException("canceled");
                    }
                    while (pipe.getBuffer$okio().size() == 0) {
                        if (pipe.getSinkClosed$okio()) {
                            return -1L;
                        }
                        this.timeout.waitUntilNotified(pipe.getBuffer$okio());
                        if (pipe.getCanceled$okio()) {
                            throw new IOException("canceled");
                        }
                    }
                    long j3 = pipe.getBuffer$okio().read(sink, j2);
                    pipe.getBuffer$okio().notifyAll();
                    return j3;
                }
            }

            @Override // okio.Source
            @m41
            public Timeout timeout() {
                return this.timeout;
            }
        };
    }

    private final void forward(Sink sink, Function1<? super Sink, ub2> function1) {
        Timeout timeout = sink.timeout();
        Timeout timeout2 = sink().timeout();
        long jTimeoutNanos = timeout.timeoutNanos();
        long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(jMinTimeout, timeUnit);
        if (!timeout.hasDeadline()) {
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
            }
            try {
                function1.invoke(sink);
                ub2 ub2Var = ub2.f6820do;
                tm0.m7996new(1);
                timeout.timeout(jTimeoutNanos, timeUnit);
                if (timeout2.hasDeadline()) {
                    timeout.clearDeadline();
                }
                tm0.m7994for(1);
                return;
            } catch (Throwable th) {
                tm0.m7996new(1);
                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.clearDeadline();
                }
                tm0.m7994for(1);
                throw th;
            }
        }
        long jDeadlineNanoTime = timeout.deadlineNanoTime();
        if (timeout2.hasDeadline()) {
            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
        }
        try {
            function1.invoke(sink);
            ub2 ub2Var2 = ub2.f6820do;
            tm0.m7996new(1);
            timeout.timeout(jTimeoutNanos, timeUnit);
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
            }
            tm0.m7994for(1);
        } catch (Throwable th2) {
            tm0.m7996new(1);
            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
            }
            tm0.m7994for(1);
            throw th2;
        }
    }

    @m41
    @wp0(name = "-deprecated_sink")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "sink", imports = {}))
    public final Sink a() {
        return this.sink;
    }

    @m41
    @wp0(name = "-deprecated_source")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "source", imports = {}))
    public final Source b() {
        return this.source;
    }

    public final void cancel() {
        synchronized (this.buffer) {
            setCanceled$okio(true);
            getBuffer$okio().clear();
            getBuffer$okio().notifyAll();
            ub2 ub2Var = ub2.f6820do;
        }
    }

    public final void fold(@m41 Sink sink) throws IOException {
        boolean sinkClosed$okio;
        Buffer buffer;
        Csuper.m30700throw(sink, "sink");
        while (true) {
            synchronized (this.buffer) {
                if (!(getFoldedSink$okio() == null)) {
                    throw new IllegalStateException("sink already folded".toString());
                }
                if (getCanceled$okio()) {
                    setFoldedSink$okio(sink);
                    throw new IOException("canceled");
                }
                if (getBuffer$okio().exhausted()) {
                    setSourceClosed$okio(true);
                    setFoldedSink$okio(sink);
                    return;
                } else {
                    sinkClosed$okio = getSinkClosed$okio();
                    buffer = new Buffer();
                    buffer.write(getBuffer$okio(), getBuffer$okio().size());
                    getBuffer$okio().notifyAll();
                    ub2 ub2Var = ub2.f6820do;
                }
            }
            try {
                sink.write(buffer, buffer.size());
                if (sinkClosed$okio) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.buffer) {
                    setSourceClosed$okio(true);
                    getBuffer$okio().notifyAll();
                    ub2 ub2Var2 = ub2.f6820do;
                    throw th;
                }
            }
        }
    }

    @m41
    public final Buffer getBuffer$okio() {
        return this.buffer;
    }

    public final boolean getCanceled$okio() {
        return this.canceled;
    }

    @z41
    public final Sink getFoldedSink$okio() {
        return this.foldedSink;
    }

    public final long getMaxBufferSize$okio() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed$okio() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed$okio() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z) {
        this.canceled = z;
    }

    public final void setFoldedSink$okio(@z41 Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z) {
        this.sinkClosed = z;
    }

    public final void setSourceClosed$okio(boolean z) {
        this.sourceClosed = z;
    }

    @m41
    @wp0(name = "sink")
    public final Sink sink() {
        return this.sink;
    }

    @m41
    @wp0(name = "source")
    public final Source source() {
        return this.source;
    }
}
