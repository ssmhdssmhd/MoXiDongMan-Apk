package kotlin.text;

import android.support.v4.rx;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'LITERAL' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001b\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/text/break;", "", "Lkotlin/text/FlagEnum;", "", ES6Iterator.VALUE_PROPERTY, OptRuntime.GeneratorState.resumptionPoint_TYPE, "getValue", "()I", "mask", "getMask", "<init>", "(Ljava/lang/String;III)V", "IGNORE_CASE", "MULTILINE", "LITERAL", "UNIX_LINES", "COMMENTS", "DOT_MATCHES_ALL", "CANON_EQ", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak implements FlagEnum {
    public static final Cbreak CANON_EQ;
    public static final Cbreak COMMENTS;
    public static final Cbreak DOT_MATCHES_ALL;
    public static final Cbreak IGNORE_CASE;
    public static final Cbreak LITERAL;
    public static final Cbreak MULTILINE;
    public static final Cbreak UNIX_LINES;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Cbreak[] f28021do;
    private final int mask;
    private final int value;

    static {
        Cbreak cbreak = new Cbreak("IGNORE_CASE", 0, 2, 0, 2, null);
        IGNORE_CASE = cbreak;
        Cbreak cbreak2 = new Cbreak("MULTILINE", 1, 8, 0, 2, null);
        MULTILINE = cbreak2;
        int i = 0;
        int i2 = 2;
        rx rxVar = null;
        Cbreak cbreak3 = new Cbreak("LITERAL", 2, 16, i, i2, rxVar);
        LITERAL = cbreak3;
        Cbreak cbreak4 = new Cbreak("UNIX_LINES", 3, 1, i, i2, rxVar);
        UNIX_LINES = cbreak4;
        Cbreak cbreak5 = new Cbreak("COMMENTS", 4, 4, i, i2, rxVar);
        COMMENTS = cbreak5;
        Cbreak cbreak6 = new Cbreak("DOT_MATCHES_ALL", 5, 32, i, i2, rxVar);
        DOT_MATCHES_ALL = cbreak6;
        Cbreak cbreak7 = new Cbreak("CANON_EQ", 6, 128, i, i2, rxVar);
        CANON_EQ = cbreak7;
        f28021do = new Cbreak[]{cbreak, cbreak2, cbreak3, cbreak4, cbreak5, cbreak6, cbreak7};
    }

    private Cbreak(String str, int i, int i2, int i3) {
        this.value = i2;
        this.mask = i3;
    }

    public static Cbreak valueOf(String str) {
        return (Cbreak) Enum.valueOf(Cbreak.class, str);
    }

    public static Cbreak[] values() {
        return (Cbreak[]) f28021do.clone();
    }

    @Override // kotlin.text.FlagEnum
    public int getMask() {
        return this.mask;
    }

    @Override // kotlin.text.FlagEnum
    public int getValue() {
        return this.value;
    }

    public /* synthetic */ Cbreak(String str, int i, int i2, int i3, int i4, rx rxVar) {
        this(str, i, i2, (i4 & 2) != 0 ? i2 : i3);
    }
}
