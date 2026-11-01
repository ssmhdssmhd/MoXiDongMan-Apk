package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import com.efs.sdk.base.Constants;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wp0(name = "-GzipSinkExtensions")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\b¨\u0006\u0003"}, d2 = {"Lokio/Sink;", "Lokio/GzipSink;", Constants.CP_GZIP, "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class e {
    @m41
    public static final GzipSink gzip(@m41 Sink sink) {
        Csuper.m30700throw(sink, "<this>");
        return new GzipSink(sink);
    }
}
