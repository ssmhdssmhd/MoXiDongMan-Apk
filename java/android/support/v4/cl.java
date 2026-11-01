package android.support.v4;

import java.nio.charset.Charset;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wp0(name = "CharsetsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b¨\u0006\u0004"}, d2 = {"", "charsetName", "Ljava/nio/charset/Charset;", "do", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class cl {
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final Charset m956do(String str) {
        Charset charsetForName = Charset.forName(str);
        Csuper.m30696super(charsetForName, "Charset.forName(charsetName)");
        return charsetForName;
    }
}
