package com.google.protobuf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes2.dex */
final class w0 extends ByteString {
    public static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    /* renamed from: com.google.protobuf.w0$do, reason: invalid class name */
    public class Cdo extends ByteString.Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Cfor f17300do;

        /* renamed from: if, reason: not valid java name */
        public ByteString.ByteIterator f17302if = m21500if();

        public Cdo() {
            this.f17300do = new Cfor(w0.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.google.protobuf.ByteString$ByteIterator] */
        /* renamed from: if, reason: not valid java name */
        private ByteString.ByteIterator m21500if() {
            if (this.f17300do.hasNext()) {
                return this.f17300do.next().iterator2();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f17302if != null;
        }

        @Override // com.google.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            ByteString.ByteIterator byteIterator = this.f17302if;
            if (byteIterator == null) {
                throw new NoSuchElementException();
            }
            byte bNextByte = byteIterator.nextByte();
            if (!this.f17302if.hasNext()) {
                this.f17302if = m21500if();
            }
            return bNextByte;
        }
    }

    /* renamed from: com.google.protobuf.w0$for, reason: invalid class name */
    public static final class Cfor implements Iterator<ByteString.Celse> {

        /* renamed from: do, reason: not valid java name */
        private final ArrayDeque<w0> f17303do;

        /* renamed from: if, reason: not valid java name */
        private ByteString.Celse f17304if;

        public /* synthetic */ Cfor(ByteString byteString, Cdo cdo) {
            this(byteString);
        }

        /* renamed from: do, reason: not valid java name */
        private ByteString.Celse m21501do(ByteString byteString) {
            while (byteString instanceof w0) {
                w0 w0Var = (w0) byteString;
                this.f17303do.push(w0Var);
                byteString = w0Var.left;
            }
            return (ByteString.Celse) byteString;
        }

        /* renamed from: if, reason: not valid java name */
        private ByteString.Celse m21502if() {
            ByteString.Celse celseM21501do;
            do {
                ArrayDeque<w0> arrayDeque = this.f17303do;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                celseM21501do = m21501do(this.f17303do.pop().right);
            } while (celseM21501do.isEmpty());
            return celseM21501do;
        }

        @Override // java.util.Iterator
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public ByteString.Celse next() {
            ByteString.Celse celse = this.f17304if;
            if (celse == null) {
                throw new NoSuchElementException();
            }
            this.f17304if = m21502if();
            return celse;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f17304if != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private Cfor(ByteString byteString) {
            if (!(byteString instanceof w0)) {
                this.f17303do = null;
                this.f17304if = (ByteString.Celse) byteString;
                return;
            }
            w0 w0Var = (w0) byteString;
            ArrayDeque<w0> arrayDeque = new ArrayDeque<>(w0Var.getTreeDepth());
            this.f17303do = arrayDeque;
            arrayDeque.push(w0Var);
            this.f17304if = m21501do(w0Var.left);
        }
    }

    public /* synthetic */ w0(ByteString byteString, ByteString byteString2, Cdo cdo) {
        this(byteString, byteString2);
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m21498case(ByteString byteString) {
        Cdo cdo = null;
        Cfor cfor = new Cfor(this, cdo);
        ByteString.Celse next = cfor.next();
        Cfor cfor2 = new Cfor(byteString, cdo);
        ByteString.Celse next2 = cfor2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int iMin = Math.min(size, size2);
            if (!(i == 0 ? next.equalsRange(next2, i2, iMin) : next2.equalsRange(next, i, iMin))) {
                return false;
            }
            i3 += iMin;
            int i4 = this.totalLength;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                i = 0;
                next = cfor.next();
            } else {
                i += iMin;
                next = next;
            }
            if (iMin == size2) {
                next2 = cfor2.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
        }
    }

    public static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return m21499try(byteString, byteString2);
        }
        if (byteString instanceof w0) {
            w0 w0Var = (w0) byteString;
            if (w0Var.right.size() + byteString2.size() < 128) {
                return new w0(w0Var.left, m21499try(w0Var.right, byteString2));
            }
            if (w0Var.left.getTreeDepth() > w0Var.right.getTreeDepth() && w0Var.getTreeDepth() > byteString2.getTreeDepth()) {
                return new w0(w0Var.left, new w0(w0Var.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new w0(byteString, byteString2) : new Cif(null).m21506if(byteString, byteString2);
    }

    public static int minLength(int i) {
        int[] iArr = minLengthByDepth;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    public static w0 newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new w0(byteString, byteString2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    /* renamed from: try, reason: not valid java name */
    private static ByteString m21499try(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        Cfor cfor = new Cfor(this, null);
        while (cfor.hasNext()) {
            arrayList.add(cfor.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i) {
        ByteString.checkIndex(i, this.totalLength);
        return internalByteAt(i);
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            this.left.copyToInternal(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.right.copyToInternal(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.left.copyToInternal(bArr, i, i2, i6);
            this.right.copyToInternal(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int iPeekCachedHashCode = peekCachedHashCode();
        int iPeekCachedHashCode2 = byteString.peekCachedHashCode();
        if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
            return m21498case(byteString);
        }
        return false;
    }

    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return this.treeDepth;
    }

    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i) {
        int i2 = this.leftLength;
        return i < i2 ? this.left.internalByteAt(i) : this.right.internalByteAt(i - i2);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        int iPartialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(iPartialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // com.google.protobuf.ByteString
    public CodedInputStream newCodedInput() {
        return CodedInputStream.m18408break(new Cnew());
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new Cnew();
    }

    @Override // com.google.protobuf.ByteString
    public int partialHash(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            return this.left.partialHash(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.right.partialHash(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.right.partialHash(this.left.partialHash(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            return this.left.partialIsValidUtf8(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.right.partialIsValidUtf8(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i, int i2) {
        int iCheckRange = ByteString.checkRange(i, i2, this.totalLength);
        if (iCheckRange == 0) {
            return ByteString.EMPTY;
        }
        if (iCheckRange == this.totalLength) {
            return this;
        }
        int i3 = this.leftLength;
        return i2 <= i3 ? this.left.substring(i, i2) : i >= i3 ? this.right.substring(i - i3, i2 - i3) : new w0(this.left.substring(i), this.right.substring(0, i2 - this.leftLength));
    }

    @Override // com.google.protobuf.ByteString
    public String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    public Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = i + i2;
        int i4 = this.leftLength;
        if (i3 <= i4) {
            this.left.writeToInternal(outputStream, i, i2);
        } else {
            if (i >= i4) {
                this.right.writeToInternal(outputStream, i - i4, i2);
                return;
            }
            int i5 = i4 - i;
            this.left.writeToInternal(outputStream, i, i5);
            this.right.writeToInternal(outputStream, 0, i2 - i5);
        }
    }

    @Override // com.google.protobuf.ByteString
    public void writeToReverse(Cthrow cthrow) throws IOException {
        this.right.writeToReverse(cthrow);
        this.left.writeToReverse(cthrow);
    }

    /* renamed from: com.google.protobuf.w0$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final ArrayDeque<ByteString> f17305do;

        private Cif() {
            this.f17305do = new ArrayDeque<>();
        }

        /* renamed from: for, reason: not valid java name */
        private void m21505for(ByteString byteString) {
            if (byteString.isBalanced()) {
                m21508try(byteString);
                return;
            }
            if (byteString instanceof w0) {
                w0 w0Var = (w0) byteString;
                m21505for(w0Var.left);
                m21505for(w0Var.right);
            } else {
                String strValueOf = String.valueOf(byteString.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public ByteString m21506if(ByteString byteString, ByteString byteString2) {
            m21505for(byteString);
            m21505for(byteString2);
            ByteString byteStringPop = this.f17305do.pop();
            while (!this.f17305do.isEmpty()) {
                byteStringPop = new w0(this.f17305do.pop(), byteStringPop, null);
            }
            return byteStringPop;
        }

        /* renamed from: new, reason: not valid java name */
        private int m21507new(int i) {
            int iBinarySearch = Arrays.binarySearch(w0.minLengthByDepth, i);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        /* renamed from: try, reason: not valid java name */
        private void m21508try(ByteString byteString) {
            Cdo cdo;
            int iM21507new = m21507new(byteString.size());
            int iMinLength = w0.minLength(iM21507new + 1);
            if (this.f17305do.isEmpty() || this.f17305do.peek().size() >= iMinLength) {
                this.f17305do.push(byteString);
                return;
            }
            int iMinLength2 = w0.minLength(iM21507new);
            ByteString byteStringPop = this.f17305do.pop();
            while (true) {
                cdo = null;
                if (this.f17305do.isEmpty() || this.f17305do.peek().size() >= iMinLength2) {
                    break;
                } else {
                    byteStringPop = new w0(this.f17305do.pop(), byteStringPop, cdo);
                }
            }
            w0 w0Var = new w0(byteStringPop, byteString, cdo);
            while (!this.f17305do.isEmpty()) {
                if (this.f17305do.peek().size() >= w0.minLength(m21507new(w0Var.size()) + 1)) {
                    break;
                } else {
                    w0Var = new w0(this.f17305do.pop(), w0Var, cdo);
                }
            }
            this.f17305do.push(w0Var);
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }
    }

    private w0(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new Cdo();
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(Cthrow cthrow) throws IOException {
        this.left.writeTo(cthrow);
        this.right.writeTo(cthrow);
    }

    /* renamed from: com.google.protobuf.w0$new, reason: invalid class name */
    public class Cnew extends InputStream {

        /* renamed from: case, reason: not valid java name */
        private int f17306case;

        /* renamed from: do, reason: not valid java name */
        private Cfor f17307do;

        /* renamed from: for, reason: not valid java name */
        private int f17309for;

        /* renamed from: if, reason: not valid java name */
        private ByteString.Celse f17310if;

        /* renamed from: new, reason: not valid java name */
        private int f17311new;

        /* renamed from: try, reason: not valid java name */
        private int f17312try;

        public Cnew() {
            m21511if();
        }

        /* renamed from: do, reason: not valid java name */
        private void m21509do() {
            if (this.f17310if != null) {
                int i = this.f17311new;
                int i2 = this.f17309for;
                if (i == i2) {
                    this.f17312try += i2;
                    this.f17311new = 0;
                    if (!this.f17307do.hasNext()) {
                        this.f17310if = null;
                        this.f17309for = 0;
                    } else {
                        ByteString.Celse next = this.f17307do.next();
                        this.f17310if = next;
                        this.f17309for = next.size();
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        private int m21510for(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                m21509do();
                if (this.f17310if == null) {
                    break;
                }
                int iMin = Math.min(this.f17309for - this.f17311new, i3);
                if (bArr != null) {
                    this.f17310if.copyTo(bArr, this.f17311new, i, iMin);
                    i += iMin;
                }
                this.f17311new += iMin;
                i3 -= iMin;
            }
            return i2 - i3;
        }

        /* renamed from: if, reason: not valid java name */
        private void m21511if() {
            Cfor cfor = new Cfor(w0.this, null);
            this.f17307do = cfor;
            ByteString.Celse next = cfor.next();
            this.f17310if = next;
            this.f17309for = next.size();
            this.f17311new = 0;
            this.f17312try = 0;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return w0.this.size() - (this.f17312try + this.f17311new);
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f17306case = this.f17312try + this.f17311new;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            int iM21510for = m21510for(bArr, i, i2);
            if (iM21510for == 0) {
                return -1;
            }
            return iM21510for;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            m21511if();
            m21510for(null, 0, this.f17306case);
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (j < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return m21510for(null, 0, (int) j);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            m21509do();
            ByteString.Celse celse = this.f17310if;
            if (celse == null) {
                return -1;
            }
            int i = this.f17311new;
            this.f17311new = i + 1;
            return celse.byteAt(i) & 255;
        }
    }
}
