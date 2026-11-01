package kotlin.reflect;

import android.support.v4.ke0;
import android.support.v4.m41;
import android.support.v4.z41;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0015\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0016J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, d2 = {"Lkotlin/reflect/try;", "Ljava/lang/reflect/ParameterizedType;", "Lkotlin/reflect/TypeImpl;", "Ljava/lang/reflect/Type;", "getRawType", "getOwnerType", "", "getActualTypeArguments", "()[Ljava/lang/reflect/Type;", "", "getTypeName", "", "other", "", "equals", "", "hashCode", "toString", "do", "[Ljava/lang/reflect/Type;", "typeArguments", "Ljava/lang/Class;", "if", "Ljava/lang/Class;", "rawType", "for", "Ljava/lang/reflect/Type;", "ownerType", "", "<init>", "(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.reflect.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry implements ParameterizedType, TypeImpl {

    /* renamed from: do, reason: not valid java name */
    private final Type[] f27957do;

    /* renamed from: for, reason: not valid java name */
    private final Type f27958for;

    /* renamed from: if, reason: not valid java name */
    private final Class<?> f27959if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Ljava/lang/reflect/Type;", "p1", "", "invoke", "(Ljava/lang/reflect/Type;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.try$do, reason: invalid class name */
    public static final /* synthetic */ class Cdo extends ke0 implements Function1<Type, String> {
        public static final Cdo INSTANCE = new Cdo();

        public Cdo() {
            super(1, Celse.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 Type p1) {
            Csuper.m30700throw(p1, "p1");
            return Celse.m30996break(p1);
        }
    }

    public Ctry(@m41 Class<?> rawType, @z41 Type type, @m41 List<? extends Type> typeArguments) {
        Csuper.m30700throw(rawType, "rawType");
        Csuper.m30700throw(typeArguments, "typeArguments");
        this.f27959if = rawType;
        this.f27958for = type;
        Object[] array = typeArguments.toArray(new Type[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f27957do = (Type[]) array;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (Csuper.m30676else(this.f27959if, parameterizedType.getRawType()) && Csuper.m30676else(this.f27958for, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    @m41
    public Type[] getActualTypeArguments() {
        return this.f27957do;
    }

    @Override // java.lang.reflect.ParameterizedType
    @z41
    public Type getOwnerType() {
        return this.f27958for;
    }

    @Override // java.lang.reflect.ParameterizedType
    @m41
    public Type getRawType() {
        return this.f27959if;
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @m41
    public String getTypeName() throws IOException {
        StringBuilder sb = new StringBuilder();
        Type type = this.f27958for;
        if (type != null) {
            sb.append(Celse.m30996break(type));
            sb.append("$");
            sb.append(this.f27959if.getSimpleName());
        } else {
            sb.append(Celse.m30996break(this.f27959if));
        }
        Type[] typeArr = this.f27957do;
        if (!(typeArr.length == 0)) {
            Cclass.vf(typeArr, sb, (null & 2) != 0 ? ", " : null, (null & 4) != 0 ? "" : "<", (null & 8) == 0 ? ">" : "", (null & 16) != 0 ? -1 : 0, (null & 32) != 0 ? "..." : null, (null & 64) != 0 ? null : Cdo.INSTANCE);
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public int hashCode() {
        int iHashCode = this.f27959if.hashCode();
        Type type = this.f27958for;
        return (iHashCode ^ (type != null ? type.hashCode() : 0)) ^ Arrays.hashCode(getActualTypeArguments());
    }

    @m41
    public String toString() {
        return getTypeName();
    }
}
