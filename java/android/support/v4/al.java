package android.support.v4;

import java.nio.charset.Charset;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0007\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004R\u0013\u0010\t\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\u0004¨\u0006\f"}, d2 = {"Landroid/support/v4/al;", "", "Ljava/nio/charset/Charset;", "do", "()Ljava/nio/charset/Charset;", "UTF_32", "for", "UTF_32LE", "if", "UTF_32BE", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class al {

    /* renamed from: break, reason: not valid java name */
    @m41
    public static final al f189break = new al();

    /* renamed from: case, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f190case;

    /* renamed from: do, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f191do;

    /* renamed from: else, reason: not valid java name */
    private static Charset f192else;

    /* renamed from: for, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f193for;

    /* renamed from: goto, reason: not valid java name */
    private static Charset f194goto;

    /* renamed from: if, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f195if;

    /* renamed from: new, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f196new;

    /* renamed from: this, reason: not valid java name */
    private static Charset f197this;

    /* renamed from: try, reason: not valid java name */
    @m41
    @tp0
    public static final Charset f198try;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        Csuper.m30696super(charsetForName, "Charset.forName(\"UTF-8\")");
        f191do = charsetForName;
        Charset charsetForName2 = Charset.forName(mk.f3930for);
        Csuper.m30696super(charsetForName2, "Charset.forName(\"UTF-16\")");
        f195if = charsetForName2;
        Charset charsetForName3 = Charset.forName(mk.f3932new);
        Csuper.m30696super(charsetForName3, "Charset.forName(\"UTF-16BE\")");
        f193for = charsetForName3;
        Charset charsetForName4 = Charset.forName(mk.f3933try);
        Csuper.m30696super(charsetForName4, "Charset.forName(\"UTF-16LE\")");
        f196new = charsetForName4;
        Charset charsetForName5 = Charset.forName(mk.f3931if);
        Csuper.m30696super(charsetForName5, "Charset.forName(\"US-ASCII\")");
        f198try = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        Csuper.m30696super(charsetForName6, "Charset.forName(\"ISO-8859-1\")");
        f190case = charsetForName6;
    }

    private al() {
    }

    @m41
    @wp0(name = "UTF32")
    /* renamed from: do, reason: not valid java name */
    public final Charset m263do() {
        Charset charset = f192else;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32");
        Csuper.m30696super(charsetForName, "Charset.forName(\"UTF-32\")");
        f192else = charsetForName;
        return charsetForName;
    }

    @m41
    @wp0(name = "UTF32_LE")
    /* renamed from: for, reason: not valid java name */
    public final Charset m264for() {
        Charset charset = f194goto;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        Csuper.m30696super(charsetForName, "Charset.forName(\"UTF-32LE\")");
        f194goto = charsetForName;
        return charsetForName;
    }

    @m41
    @wp0(name = "UTF32_BE")
    /* renamed from: if, reason: not valid java name */
    public final Charset m265if() {
        Charset charset = f197this;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        Csuper.m30696super(charsetForName, "Charset.forName(\"UTF-32BE\")");
        f197this = charsetForName;
        return charsetForName;
    }
}
