package com.google.protobuf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    public static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new Cgoto(Internal.f16557new);
    public static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    public static final int MIN_READ_FROM_CHUNK_SIZE = 256;

    /* renamed from: do, reason: not valid java name */
    private static final ByteArrayCopier f15949do;

    /* renamed from: for, reason: not valid java name */
    private static final Comparator<ByteString> f15950for;

    /* renamed from: if, reason: not valid java name */
    private static final int f15951if = 255;
    private int hash = 0;

    public interface ByteArrayCopier {
        byte[] copyFrom(byte[] bArr, int i, int i2);
    }

    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    /* renamed from: com.google.protobuf.ByteString$break, reason: invalid class name */
    public static final class Cbreak implements ByteArrayCopier {
        private Cbreak() {
        }

        @Override // com.google.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }

        public /* synthetic */ Cbreak(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: do, reason: not valid java name */
        private final Cnative f15952do;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f15953if;

        public /* synthetic */ Ccase(int i, Cdo cdo) {
            this(i);
        }

        /* renamed from: do, reason: not valid java name */
        public ByteString m18397do() {
            this.f15952do.m20907else();
            return new Cgoto(this.f15953if);
        }

        /* renamed from: if, reason: not valid java name */
        public Cnative m18398if() {
            return this.f15952do;
        }

        private Ccase(int i) {
            byte[] bArr = new byte[i];
            this.f15953if = bArr;
            this.f15952do = Cnative.H(bArr);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$do, reason: invalid class name */
    public class Cdo extends Cfor {

        /* renamed from: do, reason: not valid java name */
        private int f15954do = 0;

        /* renamed from: if, reason: not valid java name */
        private final int f15956if;

        public Cdo() {
            this.f15956if = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15954do < this.f15956if;
        }

        @Override // com.google.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            int i = this.f15954do;
            if (i >= this.f15956if) {
                throw new NoSuchElementException();
            }
            this.f15954do = i + 1;
            return ByteString.this.internalByteAt(i);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$else, reason: invalid class name */
    public static abstract class Celse extends ByteString {
        public abstract boolean equalsRange(ByteString byteString, int i, int i2);

        @Override // com.google.protobuf.ByteString
        public final int getTreeDepth() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator2();
        }

        @Override // com.google.protobuf.ByteString
        public void writeToReverse(Cthrow cthrow) throws IOException {
            writeTo(cthrow);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$for, reason: invalid class name */
    public static abstract class Cfor implements ByteIterator {
        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$goto, reason: invalid class name */
    public static class Cgoto extends Celse {
        private static final long serialVersionUID = 1;
        public final byte[] bytes;

        public Cgoto(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof Cgoto)) {
                return obj.equals(this);
            }
            Cgoto cgoto = (Cgoto) obj;
            int iPeekCachedHashCode = peekCachedHashCode();
            int iPeekCachedHashCode2 = cgoto.peekCachedHashCode();
            if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
                return equalsRange(cgoto, 0, size());
            }
            return false;
        }

        @Override // com.google.protobuf.ByteString.Celse
        public final boolean equalsRange(ByteString byteString, int i, int i2) {
            if (i2 > byteString.size()) {
                int size = size();
                StringBuilder sb = new StringBuilder(40);
                sb.append("Length too large: ");
                sb.append(i2);
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            }
            int i3 = i + i2;
            if (i3 > byteString.size()) {
                int size2 = byteString.size();
                StringBuilder sb2 = new StringBuilder(59);
                sb2.append("Ran off end of other: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(i2);
                sb2.append(", ");
                sb2.append(size2);
                throw new IllegalArgumentException(sb2.toString());
            }
            if (!(byteString instanceof Cgoto)) {
                return byteString.substring(i, i3).equals(substring(0, i2));
            }
            Cgoto cgoto = (Cgoto) byteString;
            byte[] bArr = this.bytes;
            byte[] bArr2 = cgoto.bytes;
            int offsetIntoBytes = getOffsetIntoBytes() + i2;
            int offsetIntoBytes2 = getOffsetIntoBytes();
            int offsetIntoBytes3 = cgoto.getOffsetIntoBytes() + i;
            while (offsetIntoBytes2 < offsetIntoBytes) {
                if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                    return false;
                }
                offsetIntoBytes2++;
                offsetIntoBytes3++;
            }
            return true;
        }

        public int getOffsetIntoBytes() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return a2.m19708return(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public final CodedInputStream newCodedInput() {
            return CodedInputStream.m18415import(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public final int partialHash(int i, int i2, int i3) {
            return Internal.m19628switch(i, this.bytes, getOffsetIntoBytes() + i2, i3);
        }

        @Override // com.google.protobuf.ByteString
        public final int partialIsValidUtf8(int i, int i2, int i3) {
            int offsetIntoBytes = getOffsetIntoBytes() + i2;
            return a2.m19711switch(i, this.bytes, offsetIntoBytes, i3 + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int i, int i2) {
            int iCheckRange = ByteString.checkRange(i, i2, size());
            return iCheckRange == 0 ? ByteString.EMPTY : new Ctry(this.bytes, getOffsetIntoBytes() + i, iCheckRange);
        }

        @Override // com.google.protobuf.ByteString
        public final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override // com.google.protobuf.ByteString
        public final void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException {
            outputStream.write(this.bytes, getOffsetIntoBytes() + i, i2);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(Cthrow cthrow) throws IOException {
            cthrow.mo20007try(this.bytes, getOffsetIntoBytes(), size());
        }
    }

    /* renamed from: com.google.protobuf.ByteString$if, reason: invalid class name */
    public class Cif implements Comparator<ByteString> {
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.protobuf.ByteString$ByteIterator, java.util.Iterator] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.protobuf.ByteString$ByteIterator, java.util.Iterator] */
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(ByteString byteString, ByteString byteString2) {
            ?? Iterator2 = byteString.iterator2();
            ?? Iterator22 = byteString2.iterator2();
            while (Iterator2.hasNext() && Iterator22.hasNext()) {
                int iCompare = Integer.compare(ByteString.m18394for(Iterator2.nextByte()), ByteString.m18394for(Iterator22.nextByte()));
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return Integer.compare(byteString.size(), byteString2.size());
        }
    }

    /* renamed from: com.google.protobuf.ByteString$new, reason: invalid class name */
    public static final class Cnew implements ByteArrayCopier {
        private Cnew() {
        }

        @Override // com.google.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$try, reason: invalid class name */
    public static final class Ctry extends Cgoto {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        public Ctry(byte[] bArr, int i, int i2) {
            super(bArr);
            ByteString.checkRange(i, i + i2, bArr.length);
            this.bytesOffset = i;
            this.bytesLength = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.Cgoto, com.google.protobuf.ByteString
        public byte byteAt(int i) {
            ByteString.checkIndex(i, size());
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.Cgoto, com.google.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString.Cgoto
        public int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // com.google.protobuf.ByteString.Cgoto, com.google.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.Cgoto, com.google.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        public Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    static {
        Cdo cdo = null;
        f15949do = com.google.protobuf.Cnew.m20909for() ? new Cbreak(cdo) : new Cnew(cdo);
        f15950for = new Cif();
    }

    public static void checkIndex(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    public static int checkRange(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static ByteString copyFrom(byte[] bArr, int i, int i2) {
        checkRange(i, i + i2, bArr.length);
        return new Cgoto(f15949do.copyFrom(bArr, i, i2));
    }

    public static ByteString copyFromUtf8(String str) {
        return new Cgoto(str.getBytes(Internal.f16554do));
    }

    /* renamed from: do, reason: not valid java name */
    private static ByteString m18393do(Iterator<ByteString> it, int i) {
        if (i < 1) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return it.next();
        }
        int i2 = i >>> 1;
        return m18393do(it, i2).concat(m18393do(it, i - i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static int m18394for(byte b) {
        return b & 255;
    }

    /* renamed from: if, reason: not valid java name */
    private static ByteString m18395if(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                break;
            }
            i2 += i3;
        }
        if (i2 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i2);
    }

    /* renamed from: new, reason: not valid java name */
    private String m18396new() {
        return size() <= 50 ? TextFormatEscaper.m19666do(this) : String.valueOf(TextFormatEscaper.m19666do(substring(0, 47))).concat("...");
    }

    public static Ccase newCodedBuilder(int i) {
        return new Ccase(i, null);
    }

    public static Cthis newOutput(int i) {
        return new Cthis(i);
    }

    public static ByteString readFrom(InputStream inputStream) throws IOException {
        return readFrom(inputStream, 256, 8192);
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return f15950for;
    }

    public static ByteString wrap(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            return new l0(byteBuffer);
        }
        return wrap(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i);

    public final ByteString concat(ByteString byteString) {
        if (Integer.MAX_VALUE - size() >= byteString.size()) {
            return w0.concatenate(this, byteString);
        }
        int size = size();
        int size2 = byteString.size();
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(size);
        sb.append("+");
        sb.append(size2);
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i) {
        copyTo(bArr, 0, i, size());
    }

    public abstract void copyToInternal(byte[] bArr, int i, int i2, int i3);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    public abstract int getTreeDepth();

    public final int hashCode() {
        int iPartialHash = this.hash;
        if (iPartialHash == 0) {
            int size = size();
            iPartialHash = partialHash(size, 0, size);
            if (iPartialHash == 0) {
                iPartialHash = 1;
            }
            this.hash = iPartialHash;
        }
        return iPartialHash;
    }

    public abstract byte internalByteAt(int i);

    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    public abstract CodedInputStream newCodedInput();

    public abstract InputStream newInput();

    public abstract int partialHash(int i, int i2, int i3);

    public abstract int partialIsValidUtf8(int i, int i2, int i3);

    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(0, byteString.size()).equals(byteString);
    }

    public final ByteString substring(int i) {
        return substring(i, size());
    }

    public abstract ByteString substring(int i, int i2);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return Internal.f16557new;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e);
            throw unsupportedEncodingException;
        }
    }

    public abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(Internal.f16554do);
    }

    public abstract void writeTo(Cthrow cthrow) throws IOException;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    public final void writeTo(OutputStream outputStream, int i, int i2) throws IOException {
        checkRange(i, i + i2, size());
        if (i2 > 0) {
            writeToInternal(outputStream, i, i2);
        }
    }

    public abstract void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException;

    public abstract void writeToReverse(Cthrow cthrow) throws IOException;

    public static Cthis newOutput() {
        return new Cthis(128);
    }

    public static ByteString readFrom(InputStream inputStream, int i) throws IOException {
        return readFrom(inputStream, i, i);
    }

    @Deprecated
    public final void copyTo(byte[] bArr, int i, int i2, int i3) {
        checkRange(i, i + i3, size());
        checkRange(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            copyToInternal(bArr, i, i2, i3);
        }
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator, reason: merged with bridge method [inline-methods] */
    public Iterator<Byte> iterator2() {
        return new Cdo();
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString readFrom(InputStream inputStream, int i, int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString byteStringM18395if = m18395if(inputStream, i);
            if (byteStringM18395if == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(byteStringM18395if);
            i = Math.min(i * 2, i2);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$this, reason: invalid class name */
    public static final class Cthis extends OutputStream {

        /* renamed from: case, reason: not valid java name */
        private static final byte[] f15957case = new byte[0];

        /* renamed from: do, reason: not valid java name */
        private final int f15958do;

        /* renamed from: for, reason: not valid java name */
        private int f15959for;

        /* renamed from: if, reason: not valid java name */
        private final ArrayList<ByteString> f15960if;

        /* renamed from: new, reason: not valid java name */
        private byte[] f15961new;

        /* renamed from: try, reason: not valid java name */
        private int f15962try;

        public Cthis(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.f15958do = i;
            this.f15960if = new ArrayList<>();
            this.f15961new = new byte[i];
        }

        /* renamed from: do, reason: not valid java name */
        private byte[] m18401do(byte[] bArr, int i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            return bArr2;
        }

        /* renamed from: for, reason: not valid java name */
        private void m18402for() {
            int i = this.f15962try;
            byte[] bArr = this.f15961new;
            if (i >= bArr.length) {
                this.f15960if.add(new Cgoto(this.f15961new));
                this.f15961new = f15957case;
            } else if (i > 0) {
                this.f15960if.add(new Cgoto(m18401do(bArr, i)));
            }
            this.f15959for += this.f15962try;
            this.f15962try = 0;
        }

        /* renamed from: if, reason: not valid java name */
        private void m18403if(int i) {
            this.f15960if.add(new Cgoto(this.f15961new));
            int length = this.f15959for + this.f15961new.length;
            this.f15959for = length;
            this.f15961new = new byte[Math.max(this.f15958do, Math.max(i, length >>> 1))];
            this.f15962try = 0;
        }

        /* renamed from: case, reason: not valid java name */
        public synchronized ByteString m18404case() {
            m18402for();
            return ByteString.copyFrom(this.f15960if);
        }

        /* renamed from: else, reason: not valid java name */
        public void m18405else(OutputStream outputStream) throws IOException {
            ByteString[] byteStringArr;
            byte[] bArr;
            int i;
            synchronized (this) {
                ArrayList<ByteString> arrayList = this.f15960if;
                byteStringArr = (ByteString[]) arrayList.toArray(new ByteString[arrayList.size()]);
                bArr = this.f15961new;
                i = this.f15962try;
            }
            for (ByteString byteString : byteStringArr) {
                byteString.writeTo(outputStream);
            }
            outputStream.write(m18401do(bArr, i));
        }

        /* renamed from: new, reason: not valid java name */
        public synchronized void m18406new() {
            this.f15960if.clear();
            this.f15959for = 0;
            this.f15962try = 0;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m18407try()));
        }

        /* renamed from: try, reason: not valid java name */
        public synchronized int m18407try() {
            return this.f15959for + this.f15962try;
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i) {
            if (this.f15962try == this.f15961new.length) {
                m18403if(1);
            }
            byte[] bArr = this.f15961new;
            int i2 = this.f15962try;
            this.f15962try = i2 + 1;
            bArr[i2] = (byte) i;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i, int i2) {
            byte[] bArr2 = this.f15961new;
            int length = bArr2.length;
            int i3 = this.f15962try;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f15962try += i2;
            } else {
                int length2 = bArr2.length - i3;
                System.arraycopy(bArr, i, bArr2, i3, length2);
                int i4 = i2 - length2;
                m18403if(i4);
                System.arraycopy(bArr, i + length2, this.f15961new, 0, i4);
                this.f15962try = i4;
            }
        }
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i) {
        checkRange(0, i, byteBuffer.remaining());
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return new Cgoto(bArr);
    }

    public static ByteString wrap(byte[] bArr) {
        return new Cgoto(bArr);
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    public static ByteString wrap(byte[] bArr, int i, int i2) {
        return new Ctry(bArr, i, i2);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), m18396new());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new Cgoto(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new Cgoto(str.getBytes(charset));
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            size = 0;
            Iterator<ByteString> it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = ((Collection) iterable).size();
        }
        if (size == 0) {
            return EMPTY;
        }
        return m18393do(iterable.iterator(), size);
    }
}
