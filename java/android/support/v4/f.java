package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\fB\t\b\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016¨\u0006\r"}, d2 = {"Landroid/support/v4/f;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/do;", "", "", "other", "", "equals", "", "hashCode", "<init>", "()V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class f<E> extends kotlin.collections.Cdo<E> implements Set<E>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    public static final Cdo f1637do = new Cdo(null);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\n\u001a\u00020\t2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0000¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"android/support/v4/f$do", "", "", "c", "", "if", "(Ljava/util/Collection;)I", "", "other", "", "do", "(Ljava/util/Set;Ljava/util/Set;)Z", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.f$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m2078do(@m41 Set<?> c, @m41 Set<?> other) {
            Csuper.m30700throw(c, "c");
            Csuper.m30700throw(other, "other");
            if (c.size() != other.size()) {
                return false;
            }
            return c.containsAll(other);
        }

        /* renamed from: if, reason: not valid java name */
        public final int m2079if(@m41 Collection<?> c) {
            Csuper.m30700throw(c, "c");
            Iterator<?> it = c.iterator();
            int iHashCode = 0;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode += next != null ? next.hashCode() : 0;
            }
            return iHashCode;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@z41 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            return f1637do.m2078do(this, (Set) obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return f1637do.m2079if(this);
    }

    @Override // kotlin.collections.Cdo, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
