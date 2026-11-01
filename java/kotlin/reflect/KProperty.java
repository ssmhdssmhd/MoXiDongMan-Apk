package kotlin.reflect;

import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u000e\u000fR\u001c\u0010\u0004\u001a\u00020\u00038&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\b\u001a\u00020\u00038&@'X§\u0004¢\u0006\f\u0012\u0004\b\t\u0010\u0007\u001a\u0004\b\b\u0010\u0005R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/KProperty;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KCallable;", "", "isLateinit", "()Z", "isLateinit$annotations", "()V", "isConst", "isConst$annotations", "Lkotlin/reflect/KProperty$Getter;", "getGetter", "()Lkotlin/reflect/KProperty$Getter;", "getter", "Accessor", "Getter", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface KProperty<V> extends KCallable<V> {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KProperty$Accessor;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Lkotlin/reflect/KProperty;", "getProperty", "()Lkotlin/reflect/KProperty;", "property", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface Accessor<V> {
        @m41
        KProperty<V> getProperty();
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/KProperty$Getter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface Getter<V> extends Accessor<V>, KFunction<V> {
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.KProperty$do, reason: invalid class name */
    public static final class Cdo {
        @iz1(version = "1.1")
        /* renamed from: do, reason: not valid java name */
        public static /* synthetic */ void m30988do() {
        }

        @iz1(version = "1.1")
        /* renamed from: if, reason: not valid java name */
        public static /* synthetic */ void m30989if() {
        }
    }

    @m41
    Getter<V> getGetter();

    boolean isConst();

    boolean isLateinit();
}
