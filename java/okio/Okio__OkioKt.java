package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.io.Closeable;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0002\u001a\u00020\u0004*\u00020\u0003\u001a\u000f\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001aC\u0010\u000e\u001a\u00028\u0001\"\u0010\b\u0000\u0010\n*\n\u0018\u00010\bj\u0004\u0018\u0001`\t\"\u0004\b\u0001\u0010\u000b*\u00028\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\fH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Lokio/Source;", "Lokio/BufferedSource;", "buffer", "Lokio/Sink;", "Lokio/BufferedSink;", "blackhole", "()Lokio/Sink;", "blackholeSink", "Ljava/io/Closeable;", "Lokio/Closeable;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/Function1;", "block", "use", "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "okio"}, k = 5, mv = {1, 5, 1}, xs = "okio/Okio")
/* loaded from: classes3.dex */
final /* synthetic */ class Okio__OkioKt {
    @m41
    @wp0(name = "blackhole")
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    @m41
    public static final BufferedSource buffer(@m41 Source source) {
        Csuper.m30700throw(source, "<this>");
        return new RealBufferedSource(source);
    }

    public static final <T extends Closeable, R> R use(T t, @m41 Function1<? super T, ? extends R> block) throws Throwable {
        R rInvoke;
        Csuper.m30700throw(block, "block");
        Throwable th = null;
        try {
            rInvoke = block.invoke(t);
        } catch (Throwable th2) {
            th = th2;
            rInvoke = null;
        }
        if (t != null) {
            try {
                t.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    Celse.m30428do(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Csuper.m30672const(rInvoke);
        return rInvoke;
    }

    @m41
    public static final BufferedSink buffer(@m41 Sink sink) {
        Csuper.m30700throw(sink, "<this>");
        return new RealBufferedSink(sink);
    }
}
