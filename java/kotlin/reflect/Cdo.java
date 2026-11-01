package kotlin.reflect;

import android.support.v4.m41;
import android.support.v4.z41;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.HttpUrl;

@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016R\u0016\u0010\u0010\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlin/reflect/do;", "Ljava/lang/reflect/GenericArrayType;", "Lkotlin/reflect/TypeImpl;", "Ljava/lang/reflect/Type;", "getGenericComponentType", "", "getTypeName", "", "other", "", "equals", "", "hashCode", "toString", "do", "Ljava/lang/reflect/Type;", "elementType", "<init>", "(Ljava/lang/reflect/Type;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.reflect.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo implements GenericArrayType, TypeImpl {

    /* renamed from: do, reason: not valid java name */
    private final Type f27950do;

    public Cdo(@m41 Type elementType) {
        Csuper.m30700throw(elementType, "elementType");
        this.f27950do = elementType;
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof GenericArrayType) && Csuper.m30676else(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
    }

    @Override // java.lang.reflect.GenericArrayType
    @m41
    public Type getGenericComponentType() {
        return this.f27950do;
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @m41
    public String getTypeName() {
        return Celse.m30996break(this.f27950do) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    public int hashCode() {
        return getGenericComponentType().hashCode();
    }

    @m41
    public String toString() {
        return getTypeName();
    }
}
