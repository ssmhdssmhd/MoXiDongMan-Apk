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
public final class q1 extends GeneratedMessageV3 implements UInt32ValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final q1 f17172do = new q1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<q1> f17173if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int value_;

    /* renamed from: com.google.protobuf.q1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<q1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public q1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new q1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.q1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements UInt32ValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f17174do;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16822catch;
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
            q1 q1Var = null;
            try {
                try {
                    q1 q1Var2 = (q1) q1.f17173if.parsePartialFrom(codedInputStream, cimplements);
                    if (q1Var2 != null) {
                        m21017class(q1Var2);
                    }
                    return this;
                } catch (n e) {
                    q1 q1Var3 = (q1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        q1Var = q1Var3;
                        if (q1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (q1Var != null) {
                    m21017class(q1Var);
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
            if (message instanceof q1) {
                return m21017class((q1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m21017class(q1 q1Var) {
            if (q1Var == q1.getDefaultInstance()) {
                return this;
            }
            if (q1Var.getValue() != 0) {
                m21030while(q1Var.getValue());
            }
            mergeUnknownFields(q1Var.unknownFields);
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
        public Cif m21020else() {
            this.f17174do = 0;
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
        public q1 buildPartial() {
            q1 q1Var = new q1(this, (Cdo) null);
            q1Var.value_ = this.f17174do;
            onBuilt();
            return q1Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16822catch;
        }

        @Override // com.google.protobuf.UInt32ValueOrBuilder
        public int getValue() {
            return this.f17174do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public q1 build() {
            q1 q1VarBuildPartial = buildPartial();
            if (q1VarBuildPartial.isInitialized()) {
                return q1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) q1VarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16823class.m19575new(q1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17174do = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public q1 getDefaultInstanceForType() {
            return q1.getDefaultInstance();
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
        public Cif m21030while(int i) {
            this.f17174do = i;
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

    public /* synthetic */ q1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static q1 getDefaultInstance() {
        return f17172do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16822catch;
    }

    public static Cif newBuilder() {
        return f17172do.toBuilder();
    }

    public static q1 of(int i) {
        return newBuilder().m21030while(i).build();
    }

    public static q1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (q1) GeneratedMessageV3.parseDelimitedWithIOException(f17173if, inputStream);
    }

    public static q1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f17173if.parseFrom(byteBuffer);
    }

    public static Parser<q1> parser() {
        return f17173if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return super.equals(obj);
        }
        q1 q1Var = (q1) obj;
        return getValue() == q1Var.getValue() && this.unknownFields.equals(q1Var.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<q1> getParserForType() {
        return f17173if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = this.value_;
        int iS = (i2 != 0 ? 0 + Cnative.s(1, i2) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iS;
        return iS;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.UInt32ValueOrBuilder
    public int getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16823class.m19575new(q1.class, Cif.class);
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
        return new q1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        int i = this.value_;
        if (i != 0) {
            cnative.writeUInt32(1, i);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ q1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(q1 q1Var) {
        return f17172do.toBuilder().m21017class(q1Var);
    }

    public static q1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17173if.parseFrom(byteBuffer, cimplements);
    }

    private q1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static q1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (q1) GeneratedMessageV3.parseDelimitedWithIOException(f17173if, inputStream, cimplements);
    }

    public static q1 parseFrom(ByteString byteString) throws n {
        return f17173if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public q1 getDefaultInstanceForType() {
        return f17172do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17172do ? new Cif(cdo) : new Cif(cdo).m21017class(this);
    }

    public static q1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17173if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private q1() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static q1 parseFrom(byte[] bArr) throws n {
        return f17173if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static q1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17173if.parseFrom(bArr, cimplements);
    }

    private q1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.value_ = codedInputStream.m();
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

    public static q1 parseFrom(InputStream inputStream) throws IOException {
        return (q1) GeneratedMessageV3.parseWithIOException(f17173if, inputStream);
    }

    public static q1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (q1) GeneratedMessageV3.parseWithIOException(f17173if, inputStream, cimplements);
    }

    public static q1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (q1) GeneratedMessageV3.parseWithIOException(f17173if, codedInputStream);
    }

    public static q1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (q1) GeneratedMessageV3.parseWithIOException(f17173if, codedInputStream, cimplements);
    }
}
