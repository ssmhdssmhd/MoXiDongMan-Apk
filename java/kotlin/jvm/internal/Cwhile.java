package kotlin.jvm.internal;

import android.support.v4.dm1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.qp0;
import android.support.v4.qq0;
import android.support.v4.r92;
import android.support.v4.w31;
import android.support.v4.yr0;
import android.support.v4.z41;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.Cthrow;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.Cfor;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

@iz1(version = "1.4")
@kotlin.Cwhile(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013\u0012\u0006\u0010\u0019\u001a\u00020\b¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\f\u0010\u0005\u001a\u00020\u0002*\u00020\u0004H\u0002J\u0013\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\u0002H\u0016R\u001c\u0010\u0012\u001a\u00020\r8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00138\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0019\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001e\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u001b8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u0016¨\u0006$"}, d2 = {"Lkotlin/jvm/internal/while;", "Lkotlin/reflect/KType;", "", "if", "Landroid/support/v4/qq0;", "for", "", "other", "", "equals", "", "hashCode", "toString", "Lkotlin/reflect/KClassifier;", "do", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "classifier", "", "Ljava/util/List;", "getArguments", "()Ljava/util/List;", "arguments", "Z", "isMarkedNullable", "()Z", "Ljava/lang/Class;", "new", "(Ljava/lang/Class;)Ljava/lang/String;", "arrayClassName", "", "getAnnotations", "annotations", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile implements KType {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final KClassifier f27899do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f27900for;

    /* renamed from: if, reason: not valid java name */
    @m41
    private final List<qq0> f27901if;

    @kotlin.Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/support/v4/qq0;", "it", "", "invoke", "(Landroid/support/v4/qq0;)Ljava/lang/CharSequence;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.jvm.internal.while$do, reason: invalid class name */
    public static final class Cdo extends yr0 implements Function1<qq0, CharSequence> {
        public Cdo() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final CharSequence invoke(@m41 qq0 it) {
            Csuper.m30700throw(it, "it");
            return Cwhile.this.m30718for(it);
        }
    }

    public Cwhile(@m41 KClassifier classifier, @m41 List<qq0> arguments, boolean z) {
        Csuper.m30700throw(classifier, "classifier");
        Csuper.m30700throw(arguments, "arguments");
        this.f27899do = classifier;
        this.f27901if = arguments;
        this.f27900for = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public final String m30718for(qq0 qq0Var) {
        String strValueOf;
        if (qq0Var.m6649goto() == null) {
            return "*";
        }
        KType kTypeM6648else = qq0Var.m6648else();
        if (!(kTypeM6648else instanceof Cwhile)) {
            kTypeM6648else = null;
        }
        Cwhile cwhile = (Cwhile) kTypeM6648else;
        if (cwhile == null || (strValueOf = cwhile.m30719if()) == null) {
            strValueOf = String.valueOf(qq0Var.m6648else());
        }
        Cfor cforM6649goto = qq0Var.m6649goto();
        if (cforM6649goto != null) {
            int i = r92.f5722do[cforM6649goto.ordinal()];
            if (i == 1) {
                return strValueOf;
            }
            if (i == 2) {
                return "in " + strValueOf;
            }
            if (i == 3) {
                return "out " + strValueOf;
            }
        }
        throw new w31();
    }

    /* renamed from: if, reason: not valid java name */
    private final String m30719if() {
        KClassifier classifier = getClassifier();
        if (!(classifier instanceof KClass)) {
            classifier = null;
        }
        KClass kClass = (KClass) classifier;
        Class<?> clsM6637for = kClass != null ? qp0.m6637for(kClass) : null;
        return (clsM6637for == null ? getClassifier().toString() : clsM6637for.isArray() ? m30720new(clsM6637for) : clsM6637for.getName()) + (getArguments().isEmpty() ? "" : Cthrows.m2(getArguments(), ", ", "<", ">", 0, null, new Cdo(), 24, null)) + (isMarkedNullable() ? "?" : "");
    }

    /* renamed from: new, reason: not valid java name */
    private final String m30720new(Class<?> cls) {
        return Csuper.m30676else(cls, boolean[].class) ? "kotlin.BooleanArray" : Csuper.m30676else(cls, char[].class) ? "kotlin.CharArray" : Csuper.m30676else(cls, byte[].class) ? "kotlin.ByteArray" : Csuper.m30676else(cls, short[].class) ? "kotlin.ShortArray" : Csuper.m30676else(cls, int[].class) ? "kotlin.IntArray" : Csuper.m30676else(cls, float[].class) ? "kotlin.FloatArray" : Csuper.m30676else(cls, long[].class) ? "kotlin.LongArray" : Csuper.m30676else(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Cwhile) {
            Cwhile cwhile = (Cwhile) obj;
            if (Csuper.m30676else(getClassifier(), cwhile.getClassifier()) && Csuper.m30676else(getArguments(), cwhile.getArguments()) && isMarkedNullable() == cwhile.isMarkedNullable()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @m41
    public List<Annotation> getAnnotations() {
        return Cthrow.m30175continue();
    }

    @Override // kotlin.reflect.KType
    @m41
    public List<qq0> getArguments() {
        return this.f27901if;
    }

    @Override // kotlin.reflect.KType
    @m41
    public KClassifier getClassifier() {
        return this.f27899do;
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + Boolean.valueOf(isMarkedNullable()).hashCode();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.f27900for;
    }

    @m41
    public String toString() {
        return m30719if() + dm1.f1082if;
    }
}
