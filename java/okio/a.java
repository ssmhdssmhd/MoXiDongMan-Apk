package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import java.util.zip.Deflater;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wp0(name = "-DeflaterSinkExtensions")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0086\b¨\u0006\u0005"}, d2 = {"Lokio/Sink;", "Ljava/util/zip/Deflater;", "deflater", "Lokio/DeflaterSink;", "deflate", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class a {
    @m41
    public static final DeflaterSink deflate(@m41 Sink sink, @m41 Deflater deflater) {
        Csuper.m30700throw(sink, "<this>");
        Csuper.m30700throw(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }

    public static /* synthetic */ DeflaterSink deflate$default(Sink sink, Deflater deflater, int i, Object obj) {
        if ((i & 1) != 0) {
            deflater = new Deflater();
        }
        Csuper.m30700throw(sink, "<this>");
        Csuper.m30700throw(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }
}
