package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.o8;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;

@li0
/* renamed from: com.google.common.io.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final int f15356do = 8192;

    /* renamed from: for, reason: not valid java name */
    private static final int f15357for = 2147483639;

    /* renamed from: if, reason: not valid java name */
    private static final int f15358if = 524288;

    /* renamed from: new, reason: not valid java name */
    private static final int f15359new = 20;

    /* renamed from: try, reason: not valid java name */
    private static final OutputStream f15360try = new Cdo();

    /* renamed from: com.google.common.io.try$do, reason: invalid class name */
    public static class Cdo extends OutputStream {
        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            af1.m205continue(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            af1.m205continue(bArr);
        }
    }

    private Ctry() {
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public static ByteArrayDataOutput m17169break() {
        return m17172class(new ByteArrayOutputStream());
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static InputStream m17170case(InputStream inputStream, long j) {
        return new Cnew(inputStream, j);
    }

    @o8
    /* renamed from: catch, reason: not valid java name */
    public static ByteArrayDataOutput m17171catch(int i) {
        if (i >= 0) {
            return m17172class(new ByteArrayOutputStream(i));
        }
        throw new IllegalArgumentException(String.format("Invalid size: %s", Integer.valueOf(i)));
    }

    @o8
    /* renamed from: class, reason: not valid java name */
    public static ByteArrayDataOutput m17172class(ByteArrayOutputStream byteArrayOutputStream) {
        return new Cfor((ByteArrayOutputStream) af1.m205continue(byteArrayOutputStream));
    }

    @o8
    /* renamed from: const, reason: not valid java name */
    public static OutputStream m17173const() {
        return f15360try;
    }

    /* renamed from: do, reason: not valid java name */
    private static byte[] m17174do(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] bArrRemoveFirst = deque.removeFirst();
            int iMin = Math.min(i2, bArrRemoveFirst.length);
            System.arraycopy(bArrRemoveFirst, 0, bArr, i - i2, iMin);
            i2 -= iMin;
        }
        return bArr;
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static ByteArrayDataInput m17175else(ByteArrayInputStream byteArrayInputStream) {
        return new Cif((ByteArrayInputStream) af1.m205continue(byteArrayInputStream));
    }

    @lf
    @o8
    /* renamed from: final, reason: not valid java name */
    public static int m17176final(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        af1.m205continue(inputStream);
        af1.m205continue(bArr);
        int i3 = 0;
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i2)));
        }
        af1.s(i, i + i2, bArr.length);
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static long m17177for(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        af1.m205continue(readableByteChannel);
        af1.m205continue(writableByteChannel);
        long jWrite = 0;
        if (!(readableByteChannel instanceof FileChannel)) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(m17182new());
            while (readableByteChannel.read(byteBufferWrap) != -1) {
                byteBufferWrap.flip();
                while (byteBufferWrap.hasRemaining()) {
                    jWrite += writableByteChannel.write(byteBufferWrap);
                }
                byteBufferWrap.clear();
            }
            return jWrite;
        }
        FileChannel fileChannel = (FileChannel) readableByteChannel;
        long jPosition = fileChannel.position();
        long j = jPosition;
        while (true) {
            long jTransferTo = fileChannel.transferTo(j, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED, writableByteChannel);
            j += jTransferTo;
            fileChannel.position(j);
            if (jTransferTo <= 0 && j >= fileChannel.size()) {
                return j - jPosition;
            }
        }
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static ByteArrayDataInput m17178goto(byte[] bArr) {
        return m17175else(new ByteArrayInputStream(bArr));
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static long m17179if(InputStream inputStream, OutputStream outputStream) throws IOException {
        af1.m205continue(inputStream);
        af1.m205continue(outputStream);
        byte[] bArrM17182new = m17182new();
        long j = 0;
        while (true) {
            int i = inputStream.read(bArrM17182new);
            if (i == -1) {
                return j;
            }
            outputStream.write(bArrM17182new, 0, i);
            j += i;
        }
    }

    @o8
    /* renamed from: import, reason: not valid java name */
    public static void m17180import(InputStream inputStream, long j) throws IOException {
        long jM17183public = m17183public(inputStream, j);
        if (jM17183public >= j) {
            return;
        }
        throw new EOFException("reached end of stream after skipping " + jM17183public + " bytes; " + j + " bytes expected");
    }

    /* renamed from: native, reason: not valid java name */
    private static long m17181native(InputStream inputStream, long j) throws IOException {
        int iAvailable = inputStream.available();
        if (iAvailable == 0) {
            return 0L;
        }
        return inputStream.skip(Math.min(iAvailable, j));
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m17182new() {
        return new byte[8192];
    }

    /* renamed from: public, reason: not valid java name */
    public static long m17183public(InputStream inputStream, long j) throws IOException {
        byte[] bArr = null;
        long j2 = 0;
        while (j2 < j) {
            long j3 = j - j2;
            long jM17181native = m17181native(inputStream, j3);
            if (jM17181native == 0) {
                int iMin = (int) Math.min(j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (bArr == null) {
                    bArr = new byte[iMin];
                }
                jM17181native = inputStream.read(bArr, 0, iMin);
                if (jM17181native == -1) {
                    break;
                }
            }
            j2 += jM17181native;
        }
        return j2;
    }

    /* renamed from: return, reason: not valid java name */
    public static byte[] m17184return(InputStream inputStream) throws IOException {
        af1.m205continue(inputStream);
        return m17187switch(inputStream, new ArrayDeque(20), 0);
    }

    /* renamed from: static, reason: not valid java name */
    public static byte[] m17185static(InputStream inputStream, long j) throws IOException {
        af1.m232throw(j >= 0, "expectedSize (%s) must be non-negative", j);
        if (j > 2147483639) {
            throw new OutOfMemoryError(j + " bytes is too large to fit in a byte array");
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            int i3 = i - i2;
            int i4 = inputStream.read(bArr, i3, i2);
            if (i4 == -1) {
                return Arrays.copyOf(bArr, i3);
            }
            i2 -= i4;
        }
        int i5 = inputStream.read();
        if (i5 == -1) {
            return bArr;
        }
        ArrayDeque arrayDeque = new ArrayDeque(22);
        arrayDeque.add(bArr);
        arrayDeque.add(new byte[]{(byte) i5});
        return m17187switch(inputStream, arrayDeque, i + 1);
    }

    @lf
    @o8
    /* renamed from: super, reason: not valid java name */
    public static <T> T m17186super(InputStream inputStream, ByteProcessor<T> byteProcessor) throws IOException {
        int i;
        af1.m205continue(inputStream);
        af1.m205continue(byteProcessor);
        byte[] bArrM17182new = m17182new();
        do {
            i = inputStream.read(bArrM17182new);
            if (i == -1) {
                break;
            }
        } while (byteProcessor.processBytes(bArrM17182new, 0, i));
        return byteProcessor.getResult();
    }

    /* renamed from: switch, reason: not valid java name */
    private static byte[] m17187switch(InputStream inputStream, Deque<byte[]> deque, int i) throws IOException {
        int iM17349return = 8192;
        while (i < f15357for) {
            int iMin = Math.min(iM17349return, f15357for - i);
            byte[] bArr = new byte[iMin];
            deque.add(bArr);
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = inputStream.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    return m17174do(deque, i);
                }
                i2 += i3;
                i += i3;
            }
            iM17349return = com.google.common.math.Cnew.m17349return(iM17349return, 2);
        }
        if (inputStream.read() == -1) {
            return m17174do(deque, f15357for);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static ByteArrayDataInput m17188this(byte[] bArr, int i) {
        af1.q(i, bArr.length);
        return m17175else(new ByteArrayInputStream(bArr, i, bArr.length - i));
    }

    @o8
    /* renamed from: throw, reason: not valid java name */
    public static void m17189throw(InputStream inputStream, byte[] bArr) throws IOException {
        m17191while(inputStream, bArr, 0, bArr.length);
    }

    @lf
    @o8
    /* renamed from: try, reason: not valid java name */
    public static long m17190try(InputStream inputStream) throws IOException {
        byte[] bArrM17182new = m17182new();
        long j = 0;
        while (true) {
            long j2 = inputStream.read(bArrM17182new);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    @o8
    /* renamed from: while, reason: not valid java name */
    public static void m17191while(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int iM17176final = m17176final(inputStream, bArr, i, i2);
        if (iM17176final == i2) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + iM17176final + " bytes; " + i2 + " bytes expected");
    }

    /* renamed from: com.google.common.io.try$for, reason: invalid class name */
    public static class Cfor implements ByteArrayDataOutput {

        /* renamed from: do, reason: not valid java name */
        public final DataOutput f15361do;

        /* renamed from: if, reason: not valid java name */
        public final ByteArrayOutputStream f15362if;

        public Cfor(ByteArrayOutputStream byteArrayOutputStream) {
            this.f15362if = byteArrayOutputStream;
            this.f15361do = new DataOutputStream(byteArrayOutputStream);
        }

        @Override // com.google.common.io.ByteArrayDataOutput
        public byte[] toByteArray() {
            return this.f15362if.toByteArray();
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(int i) throws IOException {
            try {
                this.f15361do.write(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBoolean(boolean z) throws IOException {
            try {
                this.f15361do.writeBoolean(z);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeByte(int i) throws IOException {
            try {
                this.f15361do.writeByte(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBytes(String str) throws IOException {
            try {
                this.f15361do.writeBytes(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChar(int i) throws IOException {
            try {
                this.f15361do.writeChar(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChars(String str) throws IOException {
            try {
                this.f15361do.writeChars(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeDouble(double d) throws IOException {
            try {
                this.f15361do.writeDouble(d);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeFloat(float f) throws IOException {
            try {
                this.f15361do.writeFloat(f);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeInt(int i) throws IOException {
            try {
                this.f15361do.writeInt(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeLong(long j) throws IOException {
            try {
                this.f15361do.writeLong(j);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeShort(int i) throws IOException {
            try {
                this.f15361do.writeShort(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeUTF(String str) throws IOException {
            try {
                this.f15361do.writeUTF(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr) throws IOException {
            try {
                this.f15361do.write(bArr);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f15361do.write(bArr, i, i2);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: com.google.common.io.try$if, reason: invalid class name */
    public static class Cif implements ByteArrayDataInput {

        /* renamed from: do, reason: not valid java name */
        public final DataInput f15363do;

        public Cif(ByteArrayInputStream byteArrayInputStream) {
            this.f15363do = new DataInputStream(byteArrayInputStream);
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public boolean readBoolean() {
            try {
                return this.f15363do.readBoolean();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public byte readByte() {
            try {
                return this.f15363do.readByte();
            } catch (EOFException e) {
                throw new IllegalStateException(e);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public char readChar() {
            try {
                return this.f15363do.readChar();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public double readDouble() {
            try {
                return this.f15363do.readDouble();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public float readFloat() {
            try {
                return this.f15363do.readFloat();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            try {
                this.f15363do.readFully(bArr);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readInt() {
            try {
                return this.f15363do.readInt();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readLine() {
            try {
                return this.f15363do.readLine();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public long readLong() {
            try {
                return this.f15363do.readLong();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public short readShort() {
            try {
                return this.f15363do.readShort();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readUTF() {
            try {
                return this.f15363do.readUTF();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedByte() {
            try {
                return this.f15363do.readUnsignedByte();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedShort() {
            try {
                return this.f15363do.readUnsignedShort();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int skipBytes(int i) {
            try {
                return this.f15363do.skipBytes(i);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f15363do.readFully(bArr, i, i2);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* renamed from: com.google.common.io.try$new, reason: invalid class name */
    public static final class Cnew extends FilterInputStream {

        /* renamed from: do, reason: not valid java name */
        private long f15364do;

        /* renamed from: if, reason: not valid java name */
        private long f15365if;

        public Cnew(InputStream inputStream, long j) {
            super(inputStream);
            this.f15365if = -1L;
            af1.m205continue(inputStream);
            af1.m235try(j >= 0, "limit must be non-negative");
            this.f15364do = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f15364do);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.f15365if = this.f15364do;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.f15364do == 0) {
                return -1;
            }
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.f15364do--;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f15365if == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.f15364do = this.f15365if;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(Math.min(j, this.f15364do));
            this.f15364do -= jSkip;
            return jSkip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.f15364do;
            if (j == 0) {
                return -1;
            }
            int i3 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (i3 != -1) {
                this.f15364do -= i3;
            }
            return i3;
        }
    }
}
