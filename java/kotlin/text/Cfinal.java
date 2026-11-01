package kotlin.text;

import android.support.v4.ae1;
import android.support.v4.m41;
import android.support.v4.yr0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cclass;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\u001a\u0014\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001a\u001e\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0000*\u00020\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0000\u001a\u0014\u0010\b\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u0000\u001a\u0013\u0010\n\u001a\u00020\t*\u00020\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\f2\u0006\u0010\u0007\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\r\u0010\u000e\u001aL\u0010\u0013\u001a\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00000\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\f2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\fH\u0082\b¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"", "marginPrefix", "while", "newIndent", "final", "throw", "class", "indent", "this", "", "goto", "(Ljava/lang/String;)I", "Lkotlin/Function1;", "else", "(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "catch", "(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal extends Cconst {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "line", "invoke", "(Ljava/lang/String;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.final$do, reason: invalid class name */
    public static final class Cdo extends yr0 implements Function1<String, String> {
        public static final Cdo INSTANCE = new Cdo();

        public Cdo() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 String line) {
            Csuper.m30700throw(line, "line");
            return line;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "invoke", "(Ljava/lang/String;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.final$for, reason: invalid class name */
    public static final class Cfor extends yr0 implements Function1<String, String> {
        public final /* synthetic */ String $indent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(String str) {
            super(1);
            this.$indent = str;
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 String it) {
            Csuper.m30700throw(it, "it");
            if (Creturn.h1(it)) {
                return it.length() < this.$indent.length() ? this.$indent : it;
            }
            return this.$indent + it;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "line", "invoke", "(Ljava/lang/String;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.final$if, reason: invalid class name */
    public static final class Cif extends yr0 implements Function1<String, String> {
        public final /* synthetic */ String $indent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(String str) {
            super(1);
            this.$indent = str;
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 String line) {
            Csuper.m30700throw(line, "line");
            return this.$indent + line;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ String m31173break(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return m31182this(str, str2);
    }

    /* renamed from: catch, reason: not valid java name */
    private static final String m31174catch(List<String> list, int i, Function1<? super String, String> function1, Function1<? super String, String> function12) {
        String str;
        String strInvoke;
        int iM30197volatile = Cthrow.m30197volatile(list);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                if (!ae1.m186do(1, 3, 0)) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                Cthrow.j();
            }
            String str2 = (String) obj;
            if ((i2 == 0 || i2 == iM30197volatile) && Creturn.h1(str2)) {
                str = null;
            } else {
                String strInvoke2 = function12.invoke(str2);
                if (strInvoke2 != null && (strInvoke = function1.invoke(strInvoke2)) != null) {
                    str2 = strInvoke;
                }
                str = str2;
            }
            if (str != null) {
                arrayList.add(str);
            }
            i2 = i3;
        }
        String string = ((StringBuilder) Cthrows.j2(arrayList, new StringBuilder(i), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Csuper.m30696super(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    @m41
    /* renamed from: class, reason: not valid java name */
    public static final String m31175class(@m41 String replaceIndent, @m41 String newIndent) {
        String str;
        String strInvoke;
        Csuper.m30700throw(replaceIndent, "$this$replaceIndent");
        Csuper.m30700throw(newIndent, "newIndent");
        List<String> listY2 = Cstatic.Y2(replaceIndent);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listY2) {
            if (!Creturn.h1((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(m31179goto((String) it.next())));
        }
        Integer num = (Integer) kotlin.collections.Cfinal.k3(arrayList2);
        int i = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length() + (newIndent.length() * listY2.size());
        Function1<String, String> function1M31177else = m31177else(newIndent);
        int iM30197volatile = Cthrow.m30197volatile(listY2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listY2) {
            int i2 = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            String str2 = (String) obj2;
            if ((i == 0 || i == iM30197volatile) && Creturn.h1(str2)) {
                str = null;
            } else {
                String strH5 = Cthrows.H5(str2, iIntValue);
                if (strH5 != null && (strInvoke = function1M31177else.invoke(strH5)) != null) {
                    str2 = strInvoke;
                }
                str = str2;
            }
            if (str != null) {
                arrayList3.add(str);
            }
            i = i2;
        }
        String string = ((StringBuilder) Cthrows.j2(arrayList3, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Csuper.m30696super(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ String m31176const(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return m31175class(str, str2);
    }

    /* renamed from: else, reason: not valid java name */
    private static final Function1<String, String> m31177else(String str) {
        return str.length() == 0 ? Cdo.INSTANCE : new Cif(str);
    }

    @m41
    /* renamed from: final, reason: not valid java name */
    public static final String m31178final(@m41 String replaceIndentByMargin, @m41 String newIndent, @m41 String marginPrefix) {
        int i;
        String strInvoke;
        Csuper.m30700throw(replaceIndentByMargin, "$this$replaceIndentByMargin");
        Csuper.m30700throw(newIndent, "newIndent");
        Csuper.m30700throw(marginPrefix, "marginPrefix");
        if (!(!Creturn.h1(marginPrefix))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<String> listY2 = Cstatic.Y2(replaceIndentByMargin);
        int length = replaceIndentByMargin.length() + (newIndent.length() * listY2.size());
        Function1<String, String> function1M31177else = m31177else(newIndent);
        int iM30197volatile = Cthrow.m30197volatile(listY2);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : listY2) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                Cthrow.j();
            }
            String str = (String) obj;
            String strSubstring = null;
            if ((i2 != 0 && i2 != iM30197volatile) || !Creturn.h1(str)) {
                int length2 = str.length();
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        i = -1;
                        break;
                    }
                    if (!Cnew.m31207import(str.charAt(i4))) {
                        i = i4;
                        break;
                    }
                    i4++;
                }
                if (i != -1) {
                    int i5 = i;
                    if (Creturn.G1(str, marginPrefix, i, false, 4, null)) {
                        int length3 = i5 + marginPrefix.length();
                        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str.substring(length3);
                        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    }
                }
                if (strSubstring != null && (strInvoke = function1M31177else.invoke(strSubstring)) != null) {
                    str = strInvoke;
                }
                strSubstring = str;
            }
            if (strSubstring != null) {
                arrayList.add(strSubstring);
            }
            i2 = i3;
        }
        String string = ((StringBuilder) Cthrows.j2(arrayList, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Csuper.m30696super(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    /* renamed from: goto, reason: not valid java name */
    private static final int m31179goto(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (!Cnew.m31207import(str.charAt(i))) {
                break;
            }
            i++;
        }
        return i == -1 ? str.length() : i;
    }

    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ String m31180import(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return m31184while(str, str2);
    }

    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ String m31181super(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return m31178final(str, str2, str3);
    }

    @m41
    /* renamed from: this, reason: not valid java name */
    public static final String m31182this(@m41 String prependIndent, @m41 String indent) {
        Csuper.m30700throw(prependIndent, "$this$prependIndent");
        Csuper.m30700throw(indent, "indent");
        return Cclass.k0(Cclass.q0(Cstatic.X2(prependIndent), new Cfor(indent)), "\n", null, null, 0, null, null, 62, null);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static final String m31183throw(@m41 String trimIndent) {
        Csuper.m30700throw(trimIndent, "$this$trimIndent");
        return m31175class(trimIndent, "");
    }

    @m41
    /* renamed from: while, reason: not valid java name */
    public static final String m31184while(@m41 String trimMargin, @m41 String marginPrefix) {
        Csuper.m30700throw(trimMargin, "$this$trimMargin");
        Csuper.m30700throw(marginPrefix, "marginPrefix");
        return m31178final(trimMargin, "", marginPrefix);
    }
}
