package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class r1 extends GeneratedMessageV3 implements UInt64ValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final r1 f17183do = new r1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<r1> f17184if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private long value_;

    /* renamed from: com.google.protobuf.r1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<r1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public r1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new r1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.r1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements UInt64ValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private long f17185do;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16826else;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            r1 r1Var = null;
            try {
                try {
                    r1 r1Var2 = (r1) r1.f17184if.parsePartialFrom(codedInputStream, cimplements);
                    if (r1Var2 != null) {
                        m21054class(r1Var2);
                    }
                    return this;
                } catch (n e) {
                    r1 r1Var3 = (r1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        r1Var = r1Var3;
                        if (r1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (r1Var != null) {
                    m21054class(r1Var);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof r1) {
                return m21054class((r1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m21054class(r1 r1Var) {
            if (r1Var == r1.getDefaultInstance()) {
                return this;
            }
            if (r1Var.getValue() != 0) {
                m21067while(r1Var.getValue());
            }
            mergeUnknownFields(r1Var.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m21057else() {
            this.f17185do = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public r1 buildPartial() {
            r1 r1Var = new r1(this, (Cdo) null);
            r1Var.value_ = this.f17185do;
            onBuilt();
            return r1Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16826else;
        }

        @Override // com.google.protobuf.UInt64ValueOrBuilder
        public long getValue() {
            return this.f17185do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public r1 build() {
            r1 r1VarBuildPartial = buildPartial();
            if (r1VarBuildPartial.isInitialized()) {
                return r1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) r1VarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16829goto.m19575new(r1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17185do = 0L;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public r1 getDefaultInstanceForType() {
            return r1.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m21067while(long j) {
            this.f17185do = j;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ r1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static r1 getDefaultInstance() {
        return f17183do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16826else;
    }

    public static Cif newBuilder() {
        return f17183do.toBuilder();
    }

    public static r1 of(long j) {
        return newBuilder().m21067while(j).build();
    }

    public static r1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (r1) GeneratedMessageV3.parseDelimitedWithIOException(f17184if, inputStream);
    }

    public static r1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f17184if.parseFrom(byteBuffer);
    }

    public static Parser<r1> parser() {
        return f17184if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r1)) {
            return super.equals(obj);
        }
        r1 r1Var = (r1) obj;
        return getValue() == r1Var.getValue() && this.unknownFields.equals(r1Var.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<r1> getParserForType() {
        return f17184if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        long j = this.value_;
        int iU = (j != 0 ? 0 + Cnative.u(1, j) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iU;
        return iU;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.UInt64ValueOrBuilder
    public long getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.m19622native(getValue())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16829goto.m19575new(r1.class, Cif.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.Ctry ctry) {
        return new r1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        long j = this.value_;
        if (j != 0) {
            cnative.writeUInt64(1, j);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ r1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(r1 r1Var) {
        return f17183do.toBuilder().m21054class(r1Var);
    }

    public static r1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17184if.parseFrom(byteBuffer, cimplements);
    }

    private r1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static r1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (r1) GeneratedMessageV3.parseDelimitedWithIOException(f17184if, inputStream, cimplements);
    }

    public static r1 parseFrom(ByteString byteString) throws n {
        return f17184if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public r1 getDefaultInstanceForType() {
        return f17183do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17183do ? new Cif(cdo) : new Cif(cdo).m21054class(this);
    }

    public static r1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17184if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private r1() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static r1 parseFrom(byte[] bArr) throws n {
        return f17184if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static r1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17184if.parseFrom(bArr, cimplements);
    }

    private r1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 8) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.value_ = codedInputStream.n();
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static r1 parseFrom(InputStream inputStream) throws IOException {
        return (r1) GeneratedMessageV3.parseWithIOException(f17184if, inputStream);
    }

    public static r1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (r1) GeneratedMessageV3.parseWithIOException(f17184if, inputStream, cimplements);
    }

    public static r1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (r1) GeneratedMessageV3.parseWithIOException(f17184if, codedInputStream);
    }

    public static r1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (r1) GeneratedMessageV3.parseWithIOException(f17184if, codedInputStream, cimplements);
    }
}
