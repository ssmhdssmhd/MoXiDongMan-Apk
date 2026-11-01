package okhttp3.logging;

import android.support.v4.m41;
import java.io.EOFException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import okio.Buffer;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¨\u0006\u0003"}, d2 = {"Lokio/Buffer;", "", "isProbablyUtf8", "okhttp-logging-interceptor"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(@m41 Buffer isProbablyUtf8) {
        Csuper.m30700throw(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            Buffer buffer = new Buffer();
            isProbablyUtf8.copyTo(buffer, 0L, Ccase.m30886static(isProbablyUtf8.size(), 64L));
            for (int i = 0; i < 16; i++) {
                if (buffer.exhausted()) {
                    return true;
                }
                int utf8CodePoint = buffer.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
