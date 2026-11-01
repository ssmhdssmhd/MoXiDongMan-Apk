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
public final class l1 extends GeneratedMessageV3 implements TimestampOrBuilder {
    public static final int NANOS_FIELD_NUMBER = 2;
    public static final int SECONDS_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final l1 f17058do = new l1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<l1> f17059if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int nanos_;
    private long seconds_;

    /* renamed from: com.google.protobuf.l1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<l1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public l1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new l1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.l1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements TimestampOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private long f17060do;

        /* renamed from: if, reason: not valid java name */
        private int f17061if;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return m1.f17068do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public l1 getDefaultInstanceForType() {
            return l1.getDefaultInstance();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20800case() {
            this.f17061if = 0;
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            l1 l1Var = null;
            try {
                try {
                    l1 l1Var2 = (l1) l1.f17059if.parsePartialFrom(codedInputStream, cimplements);
                    if (l1Var2 != null) {
                        m20803const(l1Var2);
                    }
                    return this;
                } catch (n e) {
                    l1 l1Var3 = (l1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        l1Var = l1Var3;
                        if (l1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (l1Var != null) {
                    m20803const(l1Var);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof l1) {
                return m20803const((l1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m20803const(l1 l1Var) {
            if (l1Var == l1.getDefaultInstance()) {
                return this;
            }
            if (l1Var.getSeconds() != 0) {
                m20810import(l1Var.getSeconds());
            }
            if (l1Var.getNanos() != 0) {
                m20815throw(l1Var.getNanos());
            }
            mergeUnknownFields(l1Var.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public l1 buildPartial() {
            l1 l1Var = new l1(this, (Cdo) null);
            l1Var.seconds_ = this.f17060do;
            l1Var.nanos_ = this.f17061if;
            onBuilt();
            return l1Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return m1.f17068do;
        }

        @Override // com.google.protobuf.TimestampOrBuilder
        public int getNanos() {
            return this.f17061if;
        }

        @Override // com.google.protobuf.TimestampOrBuilder
        public long getSeconds() {
            return this.f17060do;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m20808goto() {
            this.f17060do = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public l1 build() {
            l1 l1VarBuildPartial = buildPartial();
            if (l1VarBuildPartial.isInitialized()) {
                return l1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) l1VarBuildPartial);
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m20810import(long j) {
            this.f17060do = j;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return m1.f17070if.m19575new(l1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17060do = 0L;
            this.f17061if = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m20815throw(int i) {
            this.f17061if = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
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

    public /* synthetic */ l1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static l1 getDefaultInstance() {
        return f17058do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return m1.f17068do;
    }

    public static Cif newBuilder() {
        return f17058do.toBuilder();
    }

    public static l1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (l1) GeneratedMessageV3.parseDelimitedWithIOException(f17059if, inputStream);
    }

    public static l1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f17059if.parseFrom(byteBuffer);
    }

    public static Parser<l1> parser() {
        return f17059if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l1)) {
            return super.equals(obj);
        }
        l1 l1Var = (l1) obj;
        return getSeconds() == l1Var.getSeconds() && getNanos() == l1Var.getNanos() && this.unknownFields.equals(l1Var.unknownFields);
    }

    @Override // com.google.protobuf.TimestampOrBuilder
    public int getNanos() {
        return this.nanos_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<l1> getParserForType() {
        return f17059if;
    }

    @Override // com.google.protobuf.TimestampOrBuilder
    public long getSeconds() {
        return this.seconds_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        long j = this.seconds_;
        int iM20897strictfp = j != 0 ? 0 + Cnative.m20897strictfp(1, j) : 0;
        int i2 = this.nanos_;
        if (i2 != 0) {
            iM20897strictfp += Cnative.m20874abstract(2, i2);
        }
        int serializedSize = iM20897strictfp + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.m19622native(getSeconds())) * 37) + 2) * 53) + getNanos()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return m1.f17070if.m19575new(l1.class, Cif.class);
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
        return new l1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        long j = this.seconds_;
        if (j != 0) {
            cnative.writeInt64(1, j);
        }
        int i = this.nanos_;
        if (i != 0) {
            cnative.writeInt32(2, i);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ l1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(l1 l1Var) {
        return f17058do.toBuilder().m20803const(l1Var);
    }

    public static l1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17059if.parseFrom(byteBuffer, cimplements);
    }

    private l1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static l1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (l1) GeneratedMessageV3.parseDelimitedWithIOException(f17059if, inputStream, cimplements);
    }

    public static l1 parseFrom(ByteString byteString) throws n {
        return f17059if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public l1 getDefaultInstanceForType() {
        return f17058do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17058do ? new Cif(cdo) : new Cif(cdo).m20803const(this);
    }

    public static l1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17059if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private l1() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static l1 parseFrom(byte[] bArr) throws n {
        return f17059if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static l1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17059if.parseFrom(bArr, cimplements);
    }

    private l1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 8) {
                                this.seconds_ = codedInputStream.mo18446volatile();
                            } else if (iL != 16) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.nanos_ = codedInputStream.mo18439strictfp();
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new n(e).setUnfinishedMessage(this);
                    }
                } catch (n e2) {
                    throw e2.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static l1 parseFrom(InputStream inputStream) throws IOException {
        return (l1) GeneratedMessageV3.parseWithIOException(f17059if, inputStream);
    }

    public static l1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (l1) GeneratedMessageV3.parseWithIOException(f17059if, inputStream, cimplements);
    }

    public static l1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (l1) GeneratedMessageV3.parseWithIOException(f17059if, codedInputStream);
    }

    public static l1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (l1) GeneratedMessageV3.parseWithIOException(f17059if, codedInputStream, cimplements);
    }
}
