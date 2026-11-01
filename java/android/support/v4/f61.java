package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\t\u001a\u00020\b2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\t\u0010\nJ+\u0010\f\u001a\u00020\u000b2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\f\u0010\rJ&\u0010\u000f\u001a\u00028\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J.\u0010\u0012\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Landroid/support/v4/f61;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/properties/ReadWriteProperty;", "", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "", "if", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)Z", "Landroid/support/v4/ub2;", "do", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "thisRef", "getValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "setValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "initialValue", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class f61<V> implements ReadWriteProperty<Object, V> {

    /* renamed from: do, reason: not valid java name */
    private V f1707do;

    public f61(V v) {
        this.f1707do = v;
    }

    /* renamed from: do, reason: not valid java name */
    public void mo2185do(@m41 KProperty<?> property, V v, V v2) {
        Csuper.m30700throw(property, "property");
    }

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public V getValue(@z41 Object obj, @m41 KProperty<?> property) {
        Csuper.m30700throw(property, "property");
        return this.f1707do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean mo2186if(@m41 KProperty<?> property, V v, V v2) {
        Csuper.m30700throw(property, "property");
        return true;
    }

    @Override // kotlin.properties.ReadWriteProperty
    public void setValue(@z41 Object obj, @m41 KProperty<?> property, V v) {
        Csuper.m30700throw(property, "property");
        V v2 = this.f1707do;
        if (mo2186if(property, v2, v)) {
            this.f1707do = v;
            mo2185do(property, v2, v);
        }
    }
}
