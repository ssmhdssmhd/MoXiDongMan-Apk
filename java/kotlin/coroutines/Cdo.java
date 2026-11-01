package kotlin.coroutines;

import android.support.v4.bm1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.ub2;
import android.support.v4.v60;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\tB\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0000H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J*\u0010\u0011\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u000e*\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J7\u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0019\u001a\u00020\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0016J\u0013\u0010\u001b\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016R\u0016\u0010\u001f\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010!¨\u0006$"}, d2 = {"Lkotlin/coroutines/do;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "for", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "", "do", d.R, "if", "", "writeReplace", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "minusKey", "other", "equals", "hashCode", "", "toString", "left", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext$Element;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements CoroutineContext, Serializable {
    private final CoroutineContext.Element element;
    private final CoroutineContext left;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000 \r2\u00060\u0001j\u0002`\u0002:\u0001\u000eB\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0002R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"kotlin/coroutines/do$do", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "", "Lkotlin/coroutines/CoroutineContext;", "elements", "[Lkotlin/coroutines/CoroutineContext;", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "<init>", "([Lkotlin/coroutines/CoroutineContext;)V", "Companion", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0363do implements Serializable {

        @m41
        public static final C0364do Companion = new C0364do(null);
        private static final long serialVersionUID = 0;

        @m41
        private final CoroutineContext[] elements;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"kotlin/coroutines/do$do$do", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.coroutines.do$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0364do {
            private C0364do() {
            }

            public /* synthetic */ C0364do(rx rxVar) {
                this();
            }
        }

        public C0363do(@m41 CoroutineContext[] elements) {
            Csuper.m30700throw(elements, "elements");
            this.elements = elements;
        }

        private final Object readResolve() {
            CoroutineContext[] coroutineContextArr = this.elements;
            CoroutineContext coroutineContextPlus = v60.INSTANCE;
            for (CoroutineContext coroutineContext : coroutineContextArr) {
                coroutineContextPlus = coroutineContextPlus.plus(coroutineContext);
            }
            return coroutineContextPlus;
        }

        @m41
        public final CoroutineContext[] getElements() {
            return this.elements;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroid/support/v4/ub2;", "<anonymous parameter 0>", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "invoke", "(Landroid/support/v4/ub2;Lkotlin/coroutines/CoroutineContext$Element;)V", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.do$for, reason: invalid class name */
    public static final class Cfor extends yr0 implements Function2<ub2, CoroutineContext.Element, ub2> {
        public final /* synthetic */ CoroutineContext[] $elements;
        public final /* synthetic */ bm1.Ccase $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(CoroutineContext[] coroutineContextArr, bm1.Ccase ccase) {
            super(2);
            this.$elements = coroutineContextArr;
            this.$index = ccase;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ ub2 invoke(ub2 ub2Var, CoroutineContext.Element element) {
            invoke2(ub2Var, element);
            return ub2.f6820do;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@m41 ub2 ub2Var, @m41 CoroutineContext.Element element) {
            Csuper.m30700throw(ub2Var, "<anonymous parameter 0>");
            Csuper.m30700throw(element, "element");
            CoroutineContext[] coroutineContextArr = this.$elements;
            bm1.Ccase ccase = this.$index;
            int i = ccase.element;
            ccase.element = i + 1;
            coroutineContextArr[i] = element;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "acc", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "invoke", "(Ljava/lang/String;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.do$if, reason: invalid class name */
    public static final class Cif extends yr0 implements Function2<String, CoroutineContext.Element, String> {
        public static final Cif INSTANCE = new Cif();

        public Cif() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m41
        public final String invoke(@m41 String acc, @m41 CoroutineContext.Element element) {
            Csuper.m30700throw(acc, "acc");
            Csuper.m30700throw(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    public Cdo(@m41 CoroutineContext left, @m41 CoroutineContext.Element element) {
        Csuper.m30700throw(left, "left");
        Csuper.m30700throw(element, "element");
        this.left = left;
        this.element = element;
    }

    /* renamed from: do, reason: not valid java name */
    private final boolean m30381do(CoroutineContext.Element element) {
        return Csuper.m30676else(get(element.getKey()), element);
    }

    /* renamed from: for, reason: not valid java name */
    private final int m30382for() {
        int i = 2;
        Cdo cdo = this;
        while (true) {
            CoroutineContext coroutineContext = cdo.left;
            if (!(coroutineContext instanceof Cdo)) {
                coroutineContext = null;
            }
            cdo = (Cdo) coroutineContext;
            if (cdo == null) {
                return i;
            }
            i++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private final boolean m30383if(Cdo cdo) {
        while (m30381do(cdo.element)) {
            CoroutineContext coroutineContext = cdo.left;
            if (!(coroutineContext instanceof Cdo)) {
                Objects.requireNonNull(coroutineContext, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return m30381do((CoroutineContext.Element) coroutineContext);
            }
            cdo = (Cdo) coroutineContext;
        }
        return false;
    }

    private final Object writeReplace() {
        int iM30382for = m30382for();
        CoroutineContext[] coroutineContextArr = new CoroutineContext[iM30382for];
        bm1.Ccase ccase = new bm1.Ccase();
        ccase.element = 0;
        fold(ub2.f6820do, new Cfor(coroutineContextArr, ccase));
        if (ccase.element == iM30382for) {
            return new C0363do(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public boolean equals(@z41 Object obj) {
        if (this != obj) {
            if (obj instanceof Cdo) {
                Cdo cdo = (Cdo) obj;
                if (cdo.m30382for() != m30382for() || !cdo.m30383if(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @m41 Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Csuper.m30700throw(operation, "operation");
        return operation.invoke((Object) this.left.fold(r, operation), this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @z41
    public <E extends CoroutineContext.Element> E get(@m41 CoroutineContext.Key<E> key) {
        Csuper.m30700throw(key, "key");
        Cdo cdo = this;
        while (true) {
            E e = (E) cdo.element.get(key);
            if (e != null) {
                return e;
            }
            CoroutineContext coroutineContext = cdo.left;
            if (!(coroutineContext instanceof Cdo)) {
                return (E) coroutineContext.get(key);
            }
            cdo = (Cdo) coroutineContext;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m41
    public CoroutineContext minusKey(@m41 CoroutineContext.Key<?> key) {
        Csuper.m30700throw(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        CoroutineContext coroutineContextMinusKey = this.left.minusKey(key);
        return coroutineContextMinusKey == this.left ? this : coroutineContextMinusKey == v60.INSTANCE ? this.element : new Cdo(coroutineContextMinusKey, this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m41
    public CoroutineContext plus(@m41 CoroutineContext context) {
        Csuper.m30700throw(context, "context");
        return CoroutineContext.Cdo.m30380do(this, context);
    }

    @m41
    public String toString() {
        return "[" + ((String) fold("", Cif.INSTANCE)) + "]";
    }
}
