package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import java.util.zip.Inflater;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wp0(name = "-InflaterSourceExtensions")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0086\b¨\u0006\u0005"}, d2 = {"Lokio/Source;", "Ljava/util/zip/Inflater;", "inflater", "Lokio/InflaterSource;", "inflate", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class g {
    @m41
    public static final InflaterSource inflate(@m41 Source source, @m41 Inflater inflater) {
        Csuper.m30700throw(source, "<this>");
        Csuper.m30700throw(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source source, Inflater inflater, int i, Object obj) {
        if ((i & 1) != 0) {
            inflater = new Inflater();
        }
        Csuper.m30700throw(source, "<this>");
        Csuper.m30700throw(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }
}
