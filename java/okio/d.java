package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cfor(message = "changed in Okio 2.x")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Lokio/-DeprecatedUtf8;", "", "", TypedValues.Custom.S_STRING, "", "size", "", "beginIndex", "endIndex", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class d {

    @m41
    public static final d INSTANCE = new d();

    private d() {
    }

    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.utf8Size()", imports = {"okio.utf8Size"}))
    public final long size(@m41 String string) {
        Csuper.m30700throw(string, "string");
        return Utf8.size$default(string, 0, 0, 3, null);
    }

    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.utf8Size(beginIndex, endIndex)", imports = {"okio.utf8Size"}))
    public final long size(@m41 String string, int i, int i2) {
        Csuper.m30700throw(string, "string");
        return Utf8.size(string, i, i2);
    }
}
