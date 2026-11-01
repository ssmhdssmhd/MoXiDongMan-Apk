package kotlin.text;

import android.support.v4.ae1;
import android.support.v4.dn0;
import android.support.v4.m41;
import android.support.v4.mx0;
import android.support.v4.yr0;
import android.support.v4.z41;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import kotlin.Cwhile;
import kotlin.collections.Cnew;
import kotlin.collections.Cthrow;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cclass;
import kotlin.text.MatchResult;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b#\u0010$J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016R\u001c\u0010\b\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006%"}, d2 = {"Lkotlin/text/else;", "Lkotlin/text/MatchResult;", ES6Iterator.NEXT_METHOD, "Lkotlin/text/MatchGroupCollection;", "do", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "groups", "", "", "if", "Ljava/util/List;", "groupValues_", "Ljava/util/regex/Matcher;", "for", "Ljava/util/regex/Matcher;", "matcher", "", "new", "Ljava/lang/CharSequence;", "input", "Ljava/util/regex/MatchResult;", "()Ljava/util/regex/MatchResult;", "matchResult", "Landroid/support/v4/dn0;", "getRange", "()Landroid/support/v4/dn0;", "range", "getValue", "()Ljava/lang/String;", ES6Iterator.VALUE_PROPERTY, "getGroupValues", "()Ljava/util/List;", "groupValues", "<init>", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse implements MatchResult {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final MatchGroupCollection f28037do;

    /* renamed from: for, reason: not valid java name */
    private final Matcher f28038for;

    /* renamed from: if, reason: not valid java name */
    private List<String> f28039if;

    /* renamed from: new, reason: not valid java name */
    private final CharSequence f28040new;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002R\u0016\u0010\b\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"kotlin/text/else$do", "Lkotlin/collections/new;", "", "", "index", "get", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.else$do, reason: invalid class name */
    public static final class Cdo extends Cnew<String> {
        public Cdo() {
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return m31149do((String) obj);
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public /* bridge */ boolean m31149do(String str) {
            return super.contains(str);
        }

        /* renamed from: for, reason: not valid java name */
        public /* bridge */ int m31150for(String str) {
            return super.lastIndexOf(str);
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return Celse.this.m31148if().groupCount() + 1;
        }

        /* renamed from: if, reason: not valid java name */
        public /* bridge */ int m31151if(String str) {
            return super.indexOf(str);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof String) {
                return m31151if((String) obj);
            }
            return -1;
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return m31150for((String) obj);
            }
            return -1;
        }

        @Override // kotlin.collections.Cnew, java.util.List
        @m41
        public String get(int i) {
            String strGroup = Celse.this.m31148if().group(i);
            return strGroup != null ? strGroup : "";
        }
    }

    public Celse(@m41 Matcher matcher, @m41 CharSequence input) {
        Csuper.m30700throw(matcher, "matcher");
        Csuper.m30700throw(input, "input");
        this.f28038for = matcher;
        this.f28040new = input;
        this.f28037do = new Cif();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public final java.util.regex.MatchResult m31148if() {
        return this.f28038for;
    }

    @Override // kotlin.text.MatchResult
    @m41
    public MatchResult.Cif getDestructured() {
        return MatchResult.Cdo.m31109do(this);
    }

    @Override // kotlin.text.MatchResult
    @m41
    public List<String> getGroupValues() {
        if (this.f28039if == null) {
            this.f28039if = new Cdo();
        }
        List<String> list = this.f28039if;
        Csuper.m30672const(list);
        return list;
    }

    @Override // kotlin.text.MatchResult
    @m41
    public MatchGroupCollection getGroups() {
        return this.f28037do;
    }

    @Override // kotlin.text.MatchResult
    @m41
    public dn0 getRange() {
        return Cthis.m31223break(m31148if());
    }

    @Override // kotlin.text.MatchResult
    @m41
    public String getValue() {
        String strGroup = m31148if().group();
        Csuper.m30696super(strGroup, "matchResult.group()");
        return strGroup;
    }

    @Override // kotlin.text.MatchResult
    @z41
    public MatchResult next() {
        int iEnd = m31148if().end() + (m31148if().end() == m31148if().start() ? 1 : 0);
        if (iEnd > this.f28040new.length()) {
            return null;
        }
        Matcher matcher = this.f28038for.pattern().matcher(this.f28040new);
        Csuper.m30696super(matcher, "matcher.pattern().matcher(input)");
        return Cthis.m31228else(matcher, iEnd, this.f28040new);
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006H\u0096\u0002J\u0013\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\bH\u0096\u0002J\u0013\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002R\u0016\u0010\u000f\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"kotlin/text/else$if", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/do;", "Landroid/support/v4/mx0;", "", "isEmpty", "", "iterator", "", "index", "get", "", "name", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.else$if, reason: invalid class name */
    public static final class Cif extends kotlin.collections.Cdo<mx0> implements MatchNamedGroupCollection {

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "Landroid/support/v4/mx0;", "invoke", "(I)Landroid/support/v4/mx0;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: kotlin.text.else$if$do, reason: invalid class name */
        public static final class Cdo extends yr0 implements Function1<Integer, mx0> {
            public Cdo() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ mx0 invoke(Integer num) {
                return invoke(num.intValue());
            }

            @z41
            public final mx0 invoke(int i) {
                return Cif.this.get(i);
            }
        }

        public Cif() {
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj != null ? obj instanceof mx0 : true) {
                return m31152do((mx0) obj);
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public /* bridge */ boolean m31152do(mx0 mx0Var) {
            return super.contains(mx0Var);
        }

        @Override // kotlin.text.MatchGroupCollection
        @z41
        public mx0 get(int i) {
            dn0 dn0VarM31225catch = Cthis.m31225catch(Celse.this.m31148if(), i);
            if (dn0VarM31225catch.getStart().intValue() < 0) {
                return null;
            }
            String strGroup = Celse.this.m31148if().group(i);
            Csuper.m30696super(strGroup, "matchResult.group(index)");
            return new mx0(strGroup, dn0VarM31225catch);
        }

        @Override // kotlin.collections.Cdo
        public int getSize() {
            return Celse.this.m31148if().groupCount() + 1;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.lang.Iterable, java.util.Set
        @m41
        public Iterator<mx0> iterator() {
            return Cclass.q0(Cthrows.A0(Cthrow.m30190strictfp(this)), new Cdo()).iterator();
        }

        @Override // kotlin.text.MatchNamedGroupCollection
        @z41
        public mx0 get(@m41 String name) {
            Csuper.m30700throw(name, "name");
            return ae1.f113do.mo3523for(Celse.this.m31148if(), name);
        }
    }
}
