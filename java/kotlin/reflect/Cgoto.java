package kotlin.reflect;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.z41;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0003\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0011B\u001b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\b\u0010\t\u001a\u00020\bH\u0016J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0016R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u0019"}, d2 = {"Lkotlin/reflect/goto;", "Ljava/lang/reflect/WildcardType;", "Lkotlin/reflect/TypeImpl;", "", "Ljava/lang/reflect/Type;", "getUpperBounds", "()[Ljava/lang/reflect/Type;", "getLowerBounds", "", "getTypeName", "", "other", "", "equals", "", "hashCode", "toString", "do", "Ljava/lang/reflect/Type;", "upperBound", "if", "lowerBound", "<init>", "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V", "new", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.reflect.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto implements WildcardType, TypeImpl {

    /* renamed from: do, reason: not valid java name */
    private final Type f27954do;

    /* renamed from: if, reason: not valid java name */
    private final Type f27955if;

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f27953new = new Cdo(null);

    /* renamed from: for, reason: not valid java name */
    @m41
    private static final Cgoto f27952for = new Cgoto(null, null);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"kotlin/reflect/goto$do", "", "Lkotlin/reflect/goto;", "STAR", "Lkotlin/reflect/goto;", "do", "()Lkotlin/reflect/goto;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.goto$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Cgoto m31007do() {
            return Cgoto.f27952for;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public Cgoto(@z41 Type type, @z41 Type type2) {
        this.f27954do = type;
        this.f27955if = type2;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.WildcardType
    @m41
    public Type[] getLowerBounds() {
        Type type = this.f27955if;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @m41
    public String getTypeName() {
        if (this.f27955if != null) {
            return "? super " + Celse.m30996break(this.f27955if);
        }
        if (this.f27954do == null || !(!Csuper.m30676else(r0, Object.class))) {
            return "?";
        }
        return "? extends " + Celse.m30996break(this.f27954do);
    }

    @Override // java.lang.reflect.WildcardType
    @m41
    public Type[] getUpperBounds() {
        Type[] typeArr = new Type[1];
        Type type = this.f27954do;
        if (type == null) {
            type = Object.class;
        }
        typeArr[0] = type;
        return typeArr;
    }

    public int hashCode() {
        return Arrays.hashCode(getUpperBounds()) ^ Arrays.hashCode(getLowerBounds());
    }

    @m41
    public String toString() {
        return getTypeName();
    }
}
