package kotlin.properties;

import android.support.v4.f61;
import android.support.v4.m41;
import android.support.v4.ub2;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.KProperty;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001e\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\b\b\u0000\u0010\u0002*\u00020\u0001J\u0082\u0001\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0005\u001a\u00028\u00002Q\b\u0004\u0010\u000e\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u0006H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0082\u0001\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0005\u001a\u00028\u00002Q\b\u0004\u0010\u000e\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00110\u0006H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {"Lkotlin/properties/do;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/properties/ReadWriteProperty;", "do", "initialValue", "Lkotlin/Function3;", "Lkotlin/reflect/KProperty;", "Landroid/support/v4/xb1;", "name", "property", "oldValue", "newValue", "Landroid/support/v4/ub2;", "onChange", "if", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;", "", "for", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.properties.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    @m41
    public static final Cdo f27913do = new Cdo();

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"kotlin/properties/do$do", "Landroid/support/v4/f61;", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "Landroid/support/v4/ub2;", "do", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.properties.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0369do<T> extends f61<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f27914for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function3 f27915if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0369do(Function3 function3, Object obj, Object obj2) {
            super(obj2);
            this.f27915if = function3;
            this.f27914for = obj;
        }

        @Override // android.support.v4.f61
        /* renamed from: do */
        public void mo2185do(@m41 KProperty<?> property, T t, T t2) {
            Csuper.m30700throw(property, "property");
            this.f27915if.invoke(property, t, t2);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"kotlin/properties/do$if", "Landroid/support/v4/f61;", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "", "if", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)Z", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.properties.do$if, reason: invalid class name */
    public static final class Cif<T> extends f61<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f27916for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function3 f27917if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Function3 function3, Object obj, Object obj2) {
            super(obj2);
            this.f27917if = function3;
            this.f27916for = obj;
        }

        @Override // android.support.v4.f61
        /* renamed from: if */
        public boolean mo2186if(@m41 KProperty<?> property, T t, T t2) {
            Csuper.m30700throw(property, "property");
            return ((Boolean) this.f27917if.invoke(property, t, t2)).booleanValue();
        }
    }

    private Cdo() {
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final <T> ReadWriteProperty<Object, T> m30790do() {
        return new kotlin.properties.Cif();
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final <T> ReadWriteProperty<Object, T> m30791for(T t, @m41 Function3<? super KProperty<?>, ? super T, ? super T, Boolean> onChange) {
        Csuper.m30700throw(onChange, "onChange");
        return new Cif(onChange, t, t);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final <T> ReadWriteProperty<Object, T> m30792if(T t, @m41 Function3<? super KProperty<?>, ? super T, ? super T, ub2> onChange) {
        Csuper.m30700throw(onChange, "onChange");
        return new C0369do(onChange, t, t);
    }
}
