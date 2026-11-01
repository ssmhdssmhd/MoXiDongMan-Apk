package com.google.protobuf;

import android.support.v4.sb2;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractMessageLite.Cdo;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLite;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> implements MessageLite {
    public int memoizedHashCode = 0;

    public interface InternalOneOfEnum {
        int getNumber();
    }

    /* renamed from: com.google.protobuf.AbstractMessageLite$do, reason: invalid class name */
    public static abstract class Cdo<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> implements MessageLite.Builder {
        @Deprecated
        public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
            addAll((Iterable) iterable, (List) collection);
        }

        private static <T> void addAllCheckingNulls(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t : iterable) {
                if (t == null) {
                    int size2 = list.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = list.size() - 1; size3 >= size; size3--) {
                        list.remove(size3);
                    }
                    throw new NullPointerException(string);
                }
                list.add(t);
            }
        }

        private String getReadingExceptionMessage(String str) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 60 + String.valueOf(str).length());
            sb.append("Reading ");
            sb.append(name);
            sb.append(" from a ");
            sb.append(str);
            sb.append(" threw an IOException (should never happen).");
            return sb.toString();
        }

        public static sb2 newUninitializedMessageException(MessageLite messageLite) {
            return new sb2(messageLite);
        }

        @Override // 
        /* renamed from: clone */
        public abstract BuilderType mo18392clone();

        public abstract BuilderType internalMergeFrom(MessageType messagetype);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            int i = inputStream.read();
            if (i == -1) {
                return false;
            }
            mergeFrom((InputStream) new C0156do(inputStream, CodedInputStream.b(i, inputStream)), cimplements);
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public abstract BuilderType mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException;

        public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
            Internal.m19623new(iterable);
            if (!(iterable instanceof LazyStringList)) {
                if (iterable instanceof PrimitiveNonBoxingCollection) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    addAllCheckingNulls(iterable, list);
                    return;
                }
            }
            List<?> underlyingElements = ((LazyStringList) iterable).getUnderlyingElements();
            LazyStringList lazyStringList = (LazyStringList) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    int size2 = lazyStringList.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = lazyStringList.size() - 1; size3 >= size; size3--) {
                        lazyStringList.remove(size3);
                    }
                    throw new NullPointerException(string);
                }
                if (obj instanceof ByteString) {
                    lazyStringList.add((ByteString) obj);
                } else {
                    lazyStringList.add((LazyStringList) obj);
                }
            }
        }

        /* renamed from: com.google.protobuf.AbstractMessageLite$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0156do extends FilterInputStream {

            /* renamed from: do, reason: not valid java name */
            private int f15948do;

            public C0156do(InputStream inputStream, int i) {
                super(inputStream);
                this.f15948do = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.f15948do);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.f15948do <= 0) {
                    return -1;
                }
                int i = super.read();
                if (i >= 0) {
                    this.f15948do--;
                }
                return i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j) throws IOException {
                long jSkip = super.skip(Math.min(j, this.f15948do));
                if (jSkip >= 0) {
                    this.f15948do = (int) (this.f15948do - jSkip);
                }
                return jSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.f15948do;
                if (i3 <= 0) {
                    return -1;
                }
                int i4 = super.read(bArr, i, Math.min(i2, i3));
                if (i4 >= 0) {
                    this.f15948do -= i4;
                }
                return i4;
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return mergeDelimitedFrom(inputStream, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(CodedInputStream codedInputStream) throws IOException {
            return (BuilderType) mergeFrom(codedInputStream, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString) throws n {
            try {
                CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
                mergeFrom(codedInputStreamNewCodedInput);
                codedInputStreamNewCodedInput.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString, Cimplements cimplements) throws n {
            try {
                CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
                mergeFrom(codedInputStreamNewCodedInput, cimplements);
                codedInputStreamNewCodedInput.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr) throws n {
            return (BuilderType) mergeFrom(bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i, int i2) throws n {
            try {
                CodedInputStream codedInputStreamM18418while = CodedInputStream.m18418while(bArr, i, i2);
                mergeFrom(codedInputStreamM18418while);
                codedInputStreamM18418while.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, Cimplements cimplements) throws n {
            return (BuilderType) mergeFrom(bArr, 0, bArr.length, cimplements);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
            try {
                CodedInputStream codedInputStreamM18418while = CodedInputStream.m18418while(bArr, i, i2);
                mergeFrom(codedInputStreamM18418while, cimplements);
                codedInputStreamM18418while.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream) throws IOException {
            CodedInputStream codedInputStreamM18408break = CodedInputStream.m18408break(inputStream);
            mergeFrom(codedInputStreamM18408break);
            codedInputStreamM18408break.mo18423do(0);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            CodedInputStream codedInputStreamM18408break = CodedInputStream.m18408break(inputStream);
            mergeFrom(codedInputStreamM18408break, cimplements);
            codedInputStreamM18408break.mo18423do(0);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public BuilderType mergeFrom(MessageLite messageLite) {
            if (getDefaultInstanceForType().getClass().isInstance(messageLite)) {
                return (BuilderType) internalMergeFrom((AbstractMessageLite) messageLite);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    @Deprecated
    public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        Cdo.addAll((Iterable) iterable, (List) collection);
    }

    public static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (!byteString.isValidUtf8()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    private String getSerializingExceptionMessage(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(name.length() + 62 + String.valueOf(str).length());
        sb.append("Serializing ");
        sb.append(name);
        sb.append(" to a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    public int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    public int getSerializedSize(Schema schema) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        int serializedSize = schema.getSerializedSize(this);
        setMemoizedSerializedSize(serializedSize);
        return serializedSize;
    }

    public sb2 newUninitializedMessageException() {
        return new sb2(this);
    }

    public void setMemoizedSerializedSize(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            Cnative cnativeH = Cnative.H(bArr);
            writeTo(cnativeH);
            cnativeH.m20907else();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.Ccase ccaseNewCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(ccaseNewCodedBuilder.m18398if());
            return ccaseNewCodedBuilder.m18397do();
        } catch (IOException e) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        Cnative cnativeE = Cnative.E(outputStream, Cnative.d(Cnative.f(serializedSize) + serializedSize));
        cnativeE.t0(serializedSize);
        writeTo(cnativeE);
        cnativeE.y();
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(OutputStream outputStream) throws IOException {
        Cnative cnativeE = Cnative.E(outputStream, Cnative.d(getSerializedSize()));
        writeTo(cnativeE);
        cnativeE.y();
    }

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        Cdo.addAll((Iterable) iterable, (List) list);
    }
}
