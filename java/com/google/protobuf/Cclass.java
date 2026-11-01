package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.class, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cclass extends GeneratedMessageV3 implements BoolValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final Cclass f16737do = new Cclass();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cclass> f16738if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private boolean value_;

    /* renamed from: com.google.protobuf.class$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cclass> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cclass parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cclass(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.class$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements BoolValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private boolean f16739do;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16824const;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20009break(Cclass cclass) {
            if (cclass == Cclass.getDefaultInstance()) {
                return this;
            }
            if (cclass.getValue()) {
                m20025while(cclass.getValue());
            }
            mergeUnknownFields(cclass.unknownFields);
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
            Cclass cclass = null;
            try {
                try {
                    Cclass cclass2 = (Cclass) Cclass.f16738if.parsePartialFrom(codedInputStream, cimplements);
                    if (cclass2 != null) {
                        m20009break(cclass2);
                    }
                    return this;
                } catch (n e) {
                    Cclass cclass3 = (Cclass) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cclass = cclass3;
                        if (cclass != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cclass != null) {
                    m20009break(cclass);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cclass) {
                return m20009break((Cclass) message);
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
        public Cif m20015else() {
            this.f16739do = false;
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
        public Cclass buildPartial() {
            Cclass cclass = new Cclass(this, (Cdo) null);
            cclass.value_ = this.f16739do;
            onBuilt();
            return cclass;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16824const;
        }

        @Override // com.google.protobuf.BoolValueOrBuilder
        public boolean getValue() {
            return this.f16739do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cclass build() {
            Cclass cclassBuildPartial = buildPartial();
            if (cclassBuildPartial.isInitialized()) {
                return cclassBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cclassBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16827final.m19575new(Cclass.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16739do = false;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cclass getDefaultInstanceForType() {
            return Cclass.getDefaultInstance();
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
        public Cif m20025while(boolean z) {
            this.f16739do = z;
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

    public /* synthetic */ Cclass(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cclass getDefaultInstance() {
        return f16737do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16824const;
    }

    public static Cif newBuilder() {
        return f16737do.toBuilder();
    }

    public static Cclass of(boolean z) {
        return newBuilder().m20025while(z).build();
    }

    public static Cclass parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cclass) GeneratedMessageV3.parseDelimitedWithIOException(f16738if, inputStream);
    }

    public static Cclass parseFrom(ByteBuffer byteBuffer) throws n {
        return f16738if.parseFrom(byteBuffer);
    }

    public static Parser<Cclass> parser() {
        return f16738if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cclass)) {
            return super.equals(obj);
        }
        Cclass cclass = (Cclass) obj;
        return getValue() == cclass.getValue() && this.unknownFields.equals(cclass.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cclass> getParserForType() {
        return f16738if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        boolean z = this.value_;
        int iM20885goto = (z ? 0 + Cnative.m20885goto(1, z) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20885goto;
        return iM20885goto;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.BoolValueOrBuilder
    public boolean getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.m19610catch(getValue())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16827final.m19575new(Cclass.class, Cif.class);
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
        return new Cclass();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        boolean z = this.value_;
        if (z) {
            cnative.writeBool(1, z);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Cclass(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cclass cclass) {
        return f16737do.toBuilder().m20009break(cclass);
    }

    public static Cclass parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16738if.parseFrom(byteBuffer, cimplements);
    }

    private Cclass(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cclass parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cclass) GeneratedMessageV3.parseDelimitedWithIOException(f16738if, inputStream, cimplements);
    }

    public static Cclass parseFrom(ByteString byteString) throws n {
        return f16738if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cclass getDefaultInstanceForType() {
        return f16737do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16737do ? new Cif(cdo) : new Cif(cdo).m20009break(this);
    }

    public static Cclass parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16738if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cclass() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cclass parseFrom(byte[] bArr) throws n {
        return f16738if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cclass parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16738if.parseFrom(bArr, cimplements);
    }

    private Cclass(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.value_ = codedInputStream.mo18437return();
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

    public static Cclass parseFrom(InputStream inputStream) throws IOException {
        return (Cclass) GeneratedMessageV3.parseWithIOException(f16738if, inputStream);
    }

    public static Cclass parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cclass) GeneratedMessageV3.parseWithIOException(f16738if, inputStream, cimplements);
    }

    public static Cclass parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cclass) GeneratedMessageV3.parseWithIOException(f16738if, codedInputStream);
    }

    public static Cclass parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cclass) GeneratedMessageV3.parseWithIOException(f16738if, codedInputStream, cimplements);
    }
}
