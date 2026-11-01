package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010(\n\u0002\b\u0005\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u0003J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H&J\u0017\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/Grouping;", ExifInterface.GPS_DIRECTION_TRUE, "K", "", "", "sourceIterator", "element", "keyOf", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface Grouping<T, K> {
    K keyOf(T t);

    @m41
    Iterator<T> sourceIterator();
}
