package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.package, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cpackage extends GeneratedMessageV3 implements EmptyOrBuilder {

    /* renamed from: do, reason: not valid java name */
    private static final Cpackage f17149do = new Cpackage();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cpackage> f17150if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;

    /* renamed from: com.google.protobuf.package$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cpackage> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cpackage parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cpackage(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.package$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements EmptyOrBuilder {
        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return Cprivate.f17151do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20954break(Cpackage cpackage) {
            if (cpackage == Cpackage.getDefaultInstance()) {
                return this;
            }
            mergeUnknownFields(cpackage.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cpackage) {
                return m20954break((Cpackage) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cpackage buildPartial() {
            Cpackage cpackage = new Cpackage(this, (Cdo) null);
            onBuilt();
            return cpackage;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Cprivate.f17151do;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cpackage getDefaultInstanceForType() {
            return Cpackage.getDefaultInstance();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cpackage build() {
            Cpackage cpackageBuildPartial = buildPartial();
            if (cpackageBuildPartial.isInitialized()) {
                return cpackageBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cpackageBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Cprivate.f17153if.m19575new(Cpackage.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Cpackage cpackage = null;
            try {
                try {
                    Cpackage cpackage2 = (Cpackage) Cpackage.f17150if.parsePartialFrom(codedInputStream, cimplements);
                    if (cpackage2 != null) {
                        m20954break(cpackage2);
                    }
                    return this;
                } catch (n e) {
                    Cpackage cpackage3 = (Cpackage) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cpackage = cpackage3;
                        if (cpackage != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cpackage != null) {
                    m20954break(cpackage);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
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

    public /* synthetic */ Cpackage(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cpackage getDefaultInstance() {
        return f17149do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Cprivate.f17151do;
    }

    public static Cif newBuilder() {
        return f17149do.toBuilder();
    }

    public static Cpackage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseDelimitedWithIOException(f17150if, inputStream);
    }

    public static Cpackage parseFrom(ByteBuffer byteBuffer) throws n {
        return f17150if.parseFrom(byteBuffer);
    }

    public static Parser<Cpackage> parser() {
        return f17150if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return !(obj instanceof Cpackage) ? super.equals(obj) : this.unknownFields.equals(((Cpackage) obj).unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cpackage> getParserForType() {
        return f17150if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
        int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Cprivate.f17153if.m19575new(Cpackage.class, Cif.class);
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
        return new Cpackage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Cpackage(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cpackage cpackage) {
        return f17149do.toBuilder().m20954break(cpackage);
    }

    public static Cpackage parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17150if.parseFrom(byteBuffer, cimplements);
    }

    private Cpackage(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cpackage parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseDelimitedWithIOException(f17150if, inputStream, cimplements);
    }

    public static Cpackage parseFrom(ByteString byteString) throws n {
        return f17150if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cpackage getDefaultInstanceForType() {
        return f17149do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17149do ? new Cif(cdo) : new Cif(cdo).m20954break(this);
    }

    public static Cpackage parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17150if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cpackage() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cpackage parseFrom(byte[] bArr) throws n {
        return f17150if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cpackage parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17150if.parseFrom(bArr, cimplements);
    }

    private Cpackage(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL == 0 || !parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                        z = true;
                    }
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

    public static Cpackage parseFrom(InputStream inputStream) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseWithIOException(f17150if, inputStream);
    }

    public static Cpackage parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseWithIOException(f17150if, inputStream, cimplements);
    }

    public static Cpackage parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseWithIOException(f17150if, codedInputStream);
    }

    public static Cpackage parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cpackage) GeneratedMessageV3.parseWithIOException(f17150if, codedInputStream, cimplements);
    }
}
