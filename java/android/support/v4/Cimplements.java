package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b \u0018\u0000*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0001*\u0004\b\u0001\u0010\u0003*\u0004\b\u0002\u0010\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\b\u0010\tJ\u001c\u0010\n\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0001H&¨\u0006\r"}, d2 = {"Landroid/support/v4/implements;", "", ExifInterface.LONGITUDE_EAST, "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/support/v4/b;", "element", "", "if", "(Ljava/util/Map$Entry;)Z", "for", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: android.support.v4.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cimplements<E extends Map.Entry<? extends K, ? extends V>, K, V> extends b<E> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return m3514if((Map.Entry) obj);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo3513for(@m41 Map.Entry<? extends K, ? extends V> entry);

    /* renamed from: if, reason: not valid java name */
    public final boolean m3514if(@m41 E element) {
        Csuper.m30700throw(element, "element");
        return mo3513for(element);
    }

    /* renamed from: new, reason: not valid java name */
    public /* bridge */ boolean mo3515new(Map.Entry entry) {
        return super.remove(entry);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return mo3515new((Map.Entry) obj);
        }
        return false;
    }
}
