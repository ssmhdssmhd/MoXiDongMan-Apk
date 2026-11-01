package kotlin.collections;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\u001a\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0002¨\u0006\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/Enumeration;", "", ak.aB, "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport extends Cwhile {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"kotlin/collections/import$do", "", "", "hasNext", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.import$do, reason: invalid class name */
    public static final class Cdo<T> implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Enumeration f27728do;

        public Cdo(Enumeration<T> enumeration) {
            this.f27728do = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27728do.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.f27728do.nextElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @m41
    public static <T> Iterator<T> s(@m41 Enumeration<T> iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return new Cdo(iterator);
    }
}
