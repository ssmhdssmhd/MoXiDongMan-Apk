package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.while, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cwhile extends GeneratedMessageV3 implements BytesValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final Cwhile f17314do = new Cwhile();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cwhile> f17315if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private ByteString value_;

    /* renamed from: com.google.protobuf.while$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cwhile> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cwhile parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cwhile(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.while$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements BytesValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private ByteString f17316do;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16838while;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m21529break(Cwhile cwhile) {
            if (cwhile == Cwhile.getDefaultInstance()) {
                return this;
            }
            if (cwhile.getValue() != ByteString.EMPTY) {
                m21545while(cwhile.getValue());
            }
            mergeUnknownFields(cwhile.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Cwhile cwhile = null;
            try {
                try {
                    Cwhile cwhile2 = (Cwhile) Cwhile.f17315if.parsePartialFrom(codedInputStream, cimplements);
                    if (cwhile2 != null) {
                        m21529break(cwhile2);
                    }
                    return this;
                } catch (n e) {
                    Cwhile cwhile3 = (Cwhile) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cwhile = cwhile3;
                        if (cwhile != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cwhile != null) {
                    m21529break(cwhile);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cwhile) {
                return m21529break((Cwhile) message);
            }
            super.mergeFrom(message);
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
        public Cif m21535else() {
            this.f17316do = Cwhile.getDefaultInstance().getValue();
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
        public Cwhile buildPartial() {
            Cwhile cwhile = new Cwhile(this, (Cdo) null);
            cwhile.value_ = this.f17316do;
            onBuilt();
            return cwhile;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16838while;
        }

        @Override // com.google.protobuf.BytesValueOrBuilder
        public ByteString getValue() {
            return this.f17316do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cwhile build() {
            Cwhile cwhileBuildPartial = buildPartial();
            if (cwhileBuildPartial.isInitialized()) {
                return cwhileBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cwhileBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16831import.m19575new(Cwhile.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17316do = ByteString.EMPTY;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cwhile getDefaultInstanceForType() {
            return Cwhile.getDefaultInstance();
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
        public Cif m21545while(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f17316do = byteString;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f17316do = ByteString.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f17316do = ByteString.EMPTY;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ Cwhile(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cwhile getDefaultInstance() {
        return f17314do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16838while;
    }

    public static Cif newBuilder() {
        return f17314do.toBuilder();
    }

    public static Cwhile of(ByteString byteString) {
        return newBuilder().m21545while(byteString).build();
    }

    public static Cwhile parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseDelimitedWithIOException(f17315if, inputStream);
    }

    public static Cwhile parseFrom(ByteBuffer byteBuffer) throws n {
        return f17315if.parseFrom(byteBuffer);
    }

    public static Parser<Cwhile> parser() {
        return f17315if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cwhile)) {
            return super.equals(obj);
        }
        Cwhile cwhile = (Cwhile) obj;
        return getValue().equals(cwhile.getValue()) && this.unknownFields.equals(cwhile.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cwhile> getParserForType() {
        return f17315if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM20883final = (this.value_.isEmpty() ? 0 : 0 + Cnative.m20883final(1, this.value_)) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20883final;
        return iM20883final;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.BytesValueOrBuilder
    public ByteString getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16831import.m19575new(Cwhile.class, Cif.class);
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
        return new Cwhile();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!this.value_.isEmpty()) {
            cnative.writeBytes(1, this.value_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Cwhile(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cwhile cwhile) {
        return f17314do.toBuilder().m21529break(cwhile);
    }

    public static Cwhile parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17315if.parseFrom(byteBuffer, cimplements);
    }

    private Cwhile(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cwhile parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseDelimitedWithIOException(f17315if, inputStream, cimplements);
    }

    public static Cwhile parseFrom(ByteString byteString) throws n {
        return f17315if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cwhile getDefaultInstanceForType() {
        return f17314do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17314do ? new Cif(cdo) : new Cif(cdo).m21529break(this);
    }

    public static Cwhile parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17315if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cwhile() {
        this.memoizedIsInitialized = (byte) -1;
        this.value_ = ByteString.EMPTY;
    }

    public static Cwhile parseFrom(byte[] bArr) throws n {
        return f17315if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cwhile parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17315if.parseFrom(bArr, cimplements);
    }

    public static Cwhile parseFrom(InputStream inputStream) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseWithIOException(f17315if, inputStream);
    }

    private Cwhile(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 10) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.value_ = codedInputStream.mo18443throws();
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

    public static Cwhile parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseWithIOException(f17315if, inputStream, cimplements);
    }

    public static Cwhile parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseWithIOException(f17315if, codedInputStream);
    }

    public static Cwhile parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cwhile) GeneratedMessageV3.parseWithIOException(f17315if, codedInputStream, cimplements);
    }
}
