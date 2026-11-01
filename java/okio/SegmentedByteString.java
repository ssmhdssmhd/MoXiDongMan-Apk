package okio;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.collections.Cgoto;
import kotlin.jvm.internal.Csuper;
import okio.internal._SegmentedByteStringKt;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\"0A\u0012\u0006\u0010G\u001a\u00020F¢\u0006\u0004\bK\u0010LJ\b\u0010\u0002\u001a\u00020\u0001H\u0002J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0001H\u0016J\b\u0010\f\u001a\u00020\u0001H\u0016J\u0017\u0010\u0010\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0007H\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0001H\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0015\u001a\u00020\u0007H\u0016J\u0018\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0017\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0016H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010!\u001a\u00020\u0016H\u0010¢\u0006\u0004\b\u001f\u0010 J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010%\u001a\u00020$H\u0016J\u0010\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020&H\u0016J'\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0010¢\u0006\u0004\b.\u0010/J(\u00103\u001a\u0002022\u0006\u0010,\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0016J(\u00103\u001a\u0002022\u0006\u0010,\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0016J(\u00106\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00162\u0006\u00104\u001a\u00020\"2\u0006\u00105\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0016J\u0018\u00108\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00107\u001a\u00020\u0016H\u0016J\u0018\u00109\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00107\u001a\u00020\u0016H\u0016J\u000f\u0010<\u001a\u00020\"H\u0010¢\u0006\u0004\b:\u0010;J\u0013\u0010>\u001a\u0002022\b\u00100\u001a\u0004\u0018\u00010=H\u0096\u0002J\b\u0010?\u001a\u00020\u0016H\u0016J\b\u0010@\u001a\u00020\u0007H\u0016R\"\u0010B\u001a\b\u0012\u0004\u0012\u00020\"0A8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u001c\u0010G\u001a\u00020F8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J¨\u0006M"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "toByteString", "Ljava/lang/Object;", "writeReplace", "Ljava/nio/charset/Charset;", "charset", "", TypedValues.Custom.S_STRING, "base64", "hex", "toAsciiLowercase", "toAsciiUppercase", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "", "beginIndex", "endIndex", "substring", "pos", "", "internalGet$okio", "(I)B", "internalGet", "getSize$okio", "()I", "getSize", "", "toByteArray", "Ljava/nio/ByteBuffer;", "asByteBuffer", "Ljava/io/OutputStream;", "out", "Landroid/support/v4/ub2;", "write", "Lokio/Buffer;", "buffer", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", TypedValues.Attributes.S_TARGET, "targetOffset", "copyInto", "fromIndex", "indexOf", "lastIndexOf", "internalArray$okio", "()[B", "internalArray", "", "equals", "hashCode", "toString", "", "segments", "[[B", "getSegments$okio", "()[[B", "", "directory", "[I", "getDirectory$okio", "()[I", "<init>", "([[B[I)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class SegmentedByteString extends ByteString {

    @m41
    private final transient int[] directory;

    @m41
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(@m41 byte[][] segments, @m41 int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        Csuper.m30700throw(segments, "segments");
        Csuper.m30700throw(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    @m41
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Csuper.m30696super(byteBufferAsReadOnlyBuffer, "wrap(toByteArray()).asReadOnlyBuffer()");
        return byteBufferAsReadOnlyBuffer;
    }

    @Override // okio.ByteString
    @m41
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    @m41
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public void copyInto(int i, @m41 byte[] target, int i2, int i3) {
        Csuper.m30700throw(target, "target");
        long j = i3;
        _UtilKt.checkOffsetAndCount(size(), i, j);
        _UtilKt.checkOffsetAndCount(target.length, i2, j);
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i6 = getDirectory$okio()[iSegment] - i5;
            int i7 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            Ccatch.j0(getSegments$okio()[iSegment], target, i2, i8, i8 + iMin);
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
    }

    @Override // okio.ByteString
    @m41
    public ByteString digest$okio(@m41 String algorithm) throws NoSuchAlgorithmException {
        Csuper.m30700throw(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory$okio()[length + i];
            int i4 = getDirectory$okio()[i];
            messageDigest.update(getSegments$okio()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digestBytes = messageDigest.digest();
        Csuper.m30696super(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    @Override // okio.ByteString
    public boolean equals(@z41 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @m41
    public final int[] getDirectory$okio() {
        return this.directory;
    }

    @m41
    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            byte[] bArr = getSegments$okio()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        setHashCode$okio(i2);
        return i2;
    }

    @Override // okio.ByteString
    @m41
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    @m41
    public ByteString hmac$okio(@m41 String algorithm, @m41 ByteString key) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        Csuper.m30700throw(algorithm, "algorithm");
        Csuper.m30700throw(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = getDirectory$okio()[length + i];
                int i4 = getDirectory$okio()[i];
                mac.update(getSegments$okio()[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            byte[] bArrDoFinal = mac.doFinal();
            Csuper.m30696super(bArrDoFinal, "mac.doFinal()");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@m41 byte[] other, int i) {
        Csuper.m30700throw(other, "other");
        return toByteString().indexOf(other, i);
    }

    @Override // okio.ByteString
    @m41
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i) {
        _UtilKt.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i, 1L);
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        return getSegments$okio()[iSegment][(i - (iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1])) + getDirectory$okio()[getSegments$okio().length + iSegment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(@m41 byte[] other, int i) {
        Csuper.m30700throw(other, "other");
        return toByteString().lastIndexOf(other, i);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, @m41 ByteString other, int i2, int i3) {
        Csuper.m30700throw(other, "other");
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i6 = getDirectory$okio()[iSegment] - i5;
            int i7 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!other.rangeEquals(i2, getSegments$okio()[iSegment], i7 + (i - i5), iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    @m41
    public String string(@m41 Charset charset) {
        Csuper.m30700throw(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    @m41
    public ByteString substring(int i, int i2) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(iResolveDefaultParameter <= size())) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + size() + ')').toString());
        }
        int i3 = iResolveDefaultParameter - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && iResolveDefaultParameter == size()) {
            return this;
        }
        if (i == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        int iSegment2 = _SegmentedByteStringKt.segment(this, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) Cgoto.Z0(getSegments$okio(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i4 = iSegment;
            int i5 = 0;
            while (true) {
                int i6 = i4 + 1;
                iArr[i5] = Math.min(getDirectory$okio()[i4] - i, i3);
                int i7 = i5 + 1;
                iArr[i5 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i4];
                if (i4 == iSegment2) {
                    break;
                }
                i4 = i6;
                i5 = i7;
            }
        }
        int i8 = iSegment != 0 ? getDirectory$okio()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i8);
        return new SegmentedByteString(bArr, iArr);
    }

    @Override // okio.ByteString
    @m41
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @m41
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @m41
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            int i6 = i5 - i2;
            Ccatch.j0(getSegments$okio()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @m41
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public void write(@m41 OutputStream out) throws IOException {
        Csuper.m30700throw(out, "out");
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory$okio()[length + i];
            int i4 = getDirectory$okio()[i];
            out.write(getSegments$okio()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@m41 Buffer buffer, int i, int i2) {
        Csuper.m30700throw(buffer, "buffer");
        int i3 = i + i2;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i3) {
            int i4 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i5 = getDirectory$okio()[iSegment] - i4;
            int i6 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment = new Segment(getSegments$okio()[iSegment], i7, i7 + iMin, true, false);
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

    @Override // okio.ByteString
    public boolean rangeEquals(int i, @m41 byte[] other, int i2, int i3) {
        Csuper.m30700throw(other, "other");
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i6 = getDirectory$okio()[iSegment] - i5;
            int i7 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!_UtilKt.arrayRangeEquals(getSegments$okio()[iSegment], i7 + (i - i5), other, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }
}
