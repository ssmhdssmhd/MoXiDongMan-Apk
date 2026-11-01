package okio.internal;

import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.collections.Cgoto;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Csuper;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio._UtilKt;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a$\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a]\u0010\u0012\u001a\u00020\u0010*\u00020\u00062K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0080\bø\u0001\u0000\u001aj\u0010\u0012\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0082\b\u001a\u001d\u0010\u0016\u001a\u00020\u0015*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u0018\u001a\u00020\u0017*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\n*\u00020\u0006H\u0080\b\u001a%\u0010\u001d\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010!\u001a\u00020 *\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010!\u001a\u00020 *\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010$\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0017\u0010&\u001a\u00020 *\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0080\b\u001a\r\u0010'\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006("}, d2 = {"", "", ES6Iterator.VALUE_PROPERTY, "fromIndex", "toIndex", "binarySearch", "Lokio/SegmentedByteString;", "pos", "segment", "Lkotlin/Function3;", "", "Landroid/support/v4/xb1;", "name", "data", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "Landroid/support/v4/ub2;", "action", "forEachSegment", "beginIndex", "endIndex", "Lokio/ByteString;", "commonSubstring", "", "commonInternalGet", "commonGetSize", "commonToByteArray", "Lokio/Buffer;", "buffer", "commonWrite", "other", "otherOffset", "", "commonRangeEquals", TypedValues.Attributes.S_TARGET, "targetOffset", "commonCopyInto", "", "commonEquals", "commonHashCode", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _SegmentedByteStringKt {
    public static final int binarySearch(@m41 int[] iArr, int i, int i2, int i3) {
        Csuper.m30700throw(iArr, "<this>");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else {
                if (i6 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final void commonCopyInto(@m41 SegmentedByteString segmentedByteString, int i, @m41 byte[] target, int i2, int i3) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        Csuper.m30700throw(target, "target");
        long j = i3;
        _UtilKt.checkOffsetAndCount(segmentedByteString.size(), i, j);
        _UtilKt.checkOffsetAndCount(target.length, i2, j);
        int i4 = i3 + i;
        int iSegment = segment(segmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i6 = segmentedByteString.getDirectory$okio()[iSegment] - i5;
            int i7 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            Ccatch.j0(segmentedByteString.getSegments$okio()[iSegment], target, i2, i8, i8 + iMin);
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(@m41 SegmentedByteString segmentedByteString, @z41 Object obj) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        if (obj == segmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == segmentedByteString.size() && segmentedByteString.rangeEquals(0, byteString, 0, segmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@m41 SegmentedByteString segmentedByteString) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        return segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(@m41 SegmentedByteString segmentedByteString) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        int hashCode$okio = segmentedByteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = segmentedByteString.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int i4 = segmentedByteString.getDirectory$okio()[length + i];
            int i5 = segmentedByteString.getDirectory$okio()[i];
            byte[] bArr = segmentedByteString.getSegments$okio()[i];
            int i6 = (i5 - i2) + i4;
            while (i4 < i6) {
                i3 = (i3 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i2 = i5;
        }
        segmentedByteString.setHashCode$okio(i3);
        return i3;
    }

    public static final byte commonInternalGet(@m41 SegmentedByteString segmentedByteString, int i) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        _UtilKt.checkOffsetAndCount(segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1], i, 1L);
        int iSegment = segment(segmentedByteString, i);
        return segmentedByteString.getSegments$okio()[iSegment][(i - (iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1])) + segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment]];
    }

    public static final boolean commonRangeEquals(@m41 SegmentedByteString segmentedByteString, int i, @m41 ByteString other, int i2, int i3) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        Csuper.m30700throw(other, "other");
        if (i < 0 || i > segmentedByteString.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(segmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i6 = segmentedByteString.getDirectory$okio()[iSegment] - i5;
            int i7 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!other.rangeEquals(i2, segmentedByteString.getSegments$okio()[iSegment], i7 + (i - i5), iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    @m41
    public static final ByteString commonSubstring(@m41 SegmentedByteString segmentedByteString, int i, int i2) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(segmentedByteString, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(iResolveDefaultParameter <= segmentedByteString.size())) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + segmentedByteString.size() + ')').toString());
        }
        int i3 = iResolveDefaultParameter - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && iResolveDefaultParameter == segmentedByteString.size()) {
            return segmentedByteString;
        }
        if (i == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(segmentedByteString, i);
        int iSegment2 = segment(segmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) Cgoto.Z0(segmentedByteString.getSegments$okio(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i4 = iSegment;
            int i5 = 0;
            while (true) {
                int i6 = i4 + 1;
                iArr[i5] = Math.min(segmentedByteString.getDirectory$okio()[i4] - i, i3);
                int i7 = i5 + 1;
                iArr[i5 + bArr.length] = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + i4];
                if (i4 == iSegment2) {
                    break;
                }
                i4 = i6;
                i5 = i7;
            }
        }
        int i8 = iSegment != 0 ? segmentedByteString.getDirectory$okio()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i8);
        return new SegmentedByteString(bArr, iArr);
    }

    @m41
    public static final byte[] commonToByteArray(@m41 SegmentedByteString segmentedByteString) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        byte[] bArr = new byte[segmentedByteString.size()];
        int length = segmentedByteString.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = segmentedByteString.getDirectory$okio()[length + i];
            int i5 = segmentedByteString.getDirectory$okio()[i];
            int i6 = i5 - i2;
            Ccatch.j0(segmentedByteString.getSegments$okio()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(@m41 SegmentedByteString segmentedByteString, @m41 Buffer buffer, int i, int i2) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        Csuper.m30700throw(buffer, "buffer");
        int i3 = i + i2;
        int iSegment = segment(segmentedByteString, i);
        while (i < i3) {
            int i4 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i5 = segmentedByteString.getDirectory$okio()[iSegment] - i4;
            int i6 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment = new Segment(segmentedByteString.getSegments$okio()[iSegment], i7, i7 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                Csuper.m30672const(segment2);
                Segment segment3 = segment2.prev;
                Csuper.m30672const(segment3);
                segment3.push(segment);
            }
            i += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + i2);
    }

    public static final void forEachSegment(@m41 SegmentedByteString segmentedByteString, @m41 Function3<? super byte[], ? super Integer, ? super Integer, ub2> action) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        Csuper.m30700throw(action, "action");
        int length = segmentedByteString.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = segmentedByteString.getDirectory$okio()[length + i];
            int i4 = segmentedByteString.getDirectory$okio()[i];
            action.invoke(segmentedByteString.getSegments$okio()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    public static final int segment(@m41 SegmentedByteString segmentedByteString, int i) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        int iBinarySearch = binarySearch(segmentedByteString.getDirectory$okio(), i + 1, 0, segmentedByteString.getSegments$okio().length);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    private static final void forEachSegment(SegmentedByteString segmentedByteString, int i, int i2, Function3<? super byte[], ? super Integer, ? super Integer, ub2> function3) {
        int iSegment = segment(segmentedByteString, i);
        while (i < i2) {
            int i3 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i4 = segmentedByteString.getDirectory$okio()[iSegment] - i3;
            int i5 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i2, i4 + i3) - i;
            function3.invoke(segmentedByteString.getSegments$okio()[iSegment], Integer.valueOf(i5 + (i - i3)), Integer.valueOf(iMin));
            i += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(@m41 SegmentedByteString segmentedByteString, int i, @m41 byte[] other, int i2, int i3) {
        Csuper.m30700throw(segmentedByteString, "<this>");
        Csuper.m30700throw(other, "other");
        if (i < 0 || i > segmentedByteString.size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(segmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i6 = segmentedByteString.getDirectory$okio()[iSegment] - i5;
            int i7 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!_UtilKt.arrayRangeEquals(segmentedByteString.getSegments$okio()[iSegment], i7 + (i - i5), other, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }
}
