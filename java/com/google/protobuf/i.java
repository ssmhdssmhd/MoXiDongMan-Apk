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
public final class i extends GeneratedMessageV3 implements FloatValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final i f16974do = new i();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<i> f16975if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private float value_;

    /* renamed from: com.google.protobuf.i$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<i> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public i parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new i(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.i$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements FloatValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private float f16976do;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16828for;
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
            i iVar = null;
            try {
                try {
                    i iVar2 = (i) i.f16975if.parsePartialFrom(codedInputStream, cimplements);
                    if (iVar2 != null) {
                        m20587catch(iVar2);
                    }
                    return this;
                } catch (n e) {
                    i iVar3 = (i) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        iVar = iVar3;
                        if (iVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (iVar != null) {
                    m20587catch(iVar);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m20587catch(i iVar) {
            if (iVar == i.getDefaultInstance()) {
                return this;
            }
            if (iVar.getValue() != 0.0f) {
                m20601while(iVar.getValue());
            }
            mergeUnknownFields(iVar.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof i) {
                return m20587catch((i) message);
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
        public Cif m20591else() {
            this.f16976do = 0.0f;
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
        public i buildPartial() {
            i iVar = new i(this, (Cdo) null);
            iVar.value_ = this.f16976do;
            onBuilt();
            return iVar;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16828for;
        }

        @Override // com.google.protobuf.FloatValueOrBuilder
        public float getValue() {
            return this.f16976do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public i build() {
            i iVarBuildPartial = buildPartial();
            if (iVarBuildPartial.isInitialized()) {
                return iVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) iVarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16833new.m19575new(i.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16976do = 0.0f;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public i getDefaultInstanceForType() {
            return i.getDefaultInstance();
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
        public Cif m20601while(float f) {
            this.f16976do = f;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ i(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static i getDefaultInstance() {
        return f16974do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16828for;
    }

    public static Cif newBuilder() {
        return f16974do.toBuilder();
    }

    public static i of(float f) {
        return newBuilder().m20601while(f).build();
    }

    public static i parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (i) GeneratedMessageV3.parseDelimitedWithIOException(f16975if, inputStream);
    }

    public static i parseFrom(ByteBuffer byteBuffer) throws n {
        return f16975if.parseFrom(byteBuffer);
    }

    public static Parser<i> parser() {
        return f16975if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return super.equals(obj);
        }
        i iVar = (i) obj;
        return Float.floatToIntBits(getValue()) == Float.floatToIntBits(iVar.getValue()) && this.unknownFields.equals(iVar.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<i> getParserForType() {
        return f16975if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        float f = this.value_;
        int iM20903throws = (f != 0.0f ? 0 + Cnative.m20903throws(1, f) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20903throws;
        return iM20903throws;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.FloatValueOrBuilder
    public float getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Float.floatToIntBits(getValue())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16833new.m19575new(i.class, Cif.class);
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
        return new i();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        float f = this.value_;
        if (f != 0.0f) {
            cnative.writeFloat(1, f);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ i(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(i iVar) {
        return f16974do.toBuilder().m20587catch(iVar);
    }

    public static i parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16975if.parseFrom(byteBuffer, cimplements);
    }

    private i(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static i parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (i) GeneratedMessageV3.parseDelimitedWithIOException(f16975if, inputStream, cimplements);
    }

    public static i parseFrom(ByteString byteString) throws n {
        return f16975if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public i getDefaultInstanceForType() {
        return f16974do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16974do ? new Cif(cdo) : new Cif(cdo).m20587catch(this);
    }

    public static i parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16975if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private i() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static i parseFrom(byte[] bArr) throws n {
        return f16975if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static i parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16975if.parseFrom(bArr, cimplements);
    }

    private i(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 13) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.value_ = codedInputStream.mo18434private();
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

    public static i parseFrom(InputStream inputStream) throws IOException {
        return (i) GeneratedMessageV3.parseWithIOException(f16975if, inputStream);
    }

    public static i parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (i) GeneratedMessageV3.parseWithIOException(f16975if, inputStream, cimplements);
    }

    public static i parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (i) GeneratedMessageV3.parseWithIOException(f16975if, codedInputStream);
    }

    public static i parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (i) GeneratedMessageV3.parseWithIOException(f16975if, codedInputStream, cimplements);
    }
}
