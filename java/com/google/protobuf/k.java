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
public final class k extends GeneratedMessageV3 implements Int32ValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final k f17044do = new k();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<k> f17045if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int value_;

    /* renamed from: com.google.protobuf.k$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<k> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public k parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new k(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.k$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements Int32ValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f17046do;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16835this;
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
            k kVar = null;
            try {
                try {
                    k kVar2 = (k) k.f17045if.parsePartialFrom(codedInputStream, cimplements);
                    if (kVar2 != null) {
                        m20752catch(kVar2);
                    }
                    return this;
                } catch (n e) {
                    k kVar3 = (k) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        kVar = kVar3;
                        if (kVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (kVar != null) {
                    m20752catch(kVar);
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
        public Cif m20752catch(k kVar) {
            if (kVar == k.getDefaultInstance()) {
                return this;
            }
            if (kVar.getValue() != 0) {
                m20766while(kVar.getValue());
            }
            mergeUnknownFields(kVar.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof k) {
                return m20752catch((k) message);
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
        public Cif m20756else() {
            this.f17046do = 0;
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
        public k buildPartial() {
            k kVar = new k(this, (Cdo) null);
            kVar.value_ = this.f17046do;
            onBuilt();
            return kVar;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16835this;
        }

        @Override // com.google.protobuf.Int32ValueOrBuilder
        public int getValue() {
            return this.f17046do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public k build() {
            k kVarBuildPartial = buildPartial();
            if (kVarBuildPartial.isInitialized()) {
                return kVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) kVarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16820break.m19575new(k.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17046do = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public k getDefaultInstanceForType() {
            return k.getDefaultInstance();
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
        public Cif m20766while(int i) {
            this.f17046do = i;
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

    public /* synthetic */ k(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static k getDefaultInstance() {
        return f17044do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16835this;
    }

    public static Cif newBuilder() {
        return f17044do.toBuilder();
    }

    public static k of(int i) {
        return newBuilder().m20766while(i).build();
    }

    public static k parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageV3.parseDelimitedWithIOException(f17045if, inputStream);
    }

    public static k parseFrom(ByteBuffer byteBuffer) throws n {
        return f17045if.parseFrom(byteBuffer);
    }

    public static Parser<k> parser() {
        return f17045if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return super.equals(obj);
        }
        k kVar = (k) obj;
        return getValue() == kVar.getValue() && this.unknownFields.equals(kVar.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<k> getParserForType() {
        return f17045if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = this.value_;
        int iM20874abstract = (i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20874abstract;
        return iM20874abstract;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.Int32ValueOrBuilder
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
        return d2.f16820break.m19575new(k.class, Cif.class);
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
        return new k();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        int i = this.value_;
        if (i != 0) {
            cnative.writeInt32(1, i);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ k(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(k kVar) {
        return f17044do.toBuilder().m20752catch(kVar);
    }

    public static k parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17045if.parseFrom(byteBuffer, cimplements);
    }

    private k(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static k parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (k) GeneratedMessageV3.parseDelimitedWithIOException(f17045if, inputStream, cimplements);
    }

    public static k parseFrom(ByteString byteString) throws n {
        return f17045if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public k getDefaultInstanceForType() {
        return f17044do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17044do ? new Cif(cdo) : new Cif(cdo).m20752catch(this);
    }

    public static k parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17045if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private k() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static k parseFrom(byte[] bArr) throws n {
        return f17045if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static k parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17045if.parseFrom(bArr, cimplements);
    }

    private k(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.value_ = codedInputStream.mo18439strictfp();
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

    public static k parseFrom(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageV3.parseWithIOException(f17045if, inputStream);
    }

    public static k parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (k) GeneratedMessageV3.parseWithIOException(f17045if, inputStream, cimplements);
    }

    public static k parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (k) GeneratedMessageV3.parseWithIOException(f17045if, codedInputStream);
    }

    public static k parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (k) GeneratedMessageV3.parseWithIOException(f17045if, codedInputStream, cimplements);
    }
}
