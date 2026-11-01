package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.default, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdefault extends GeneratedMessageV3 implements DurationOrBuilder {
    public static final int NANOS_FIELD_NUMBER = 2;
    public static final int SECONDS_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final Cdefault f16839do = new Cdefault();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cdefault> f16840if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int nanos_;
    private long seconds_;

    /* renamed from: com.google.protobuf.default$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cdefault> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdefault parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cdefault(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.default$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements DurationOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private long f16841do;

        /* renamed from: if, reason: not valid java name */
        private int f16842if;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return Cextends.f16892do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdefault getDefaultInstanceForType() {
            return Cdefault.getDefaultInstance();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20260case() {
            this.f16842if = 0;
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
            Cdefault cdefault = null;
            try {
                try {
                    Cdefault cdefault2 = (Cdefault) Cdefault.f16840if.parsePartialFrom(codedInputStream, cimplements);
                    if (cdefault2 != null) {
                        m20262class(cdefault2);
                    }
                    return this;
                } catch (n e) {
                    Cdefault cdefault3 = (Cdefault) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cdefault = cdefault3;
                        if (cdefault != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cdefault != null) {
                    m20262class(cdefault);
                }
                throw th;
            }
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m20262class(Cdefault cdefault) {
            if (cdefault == Cdefault.getDefaultInstance()) {
                return this;
            }
            if (cdefault.getSeconds() != 0) {
                m20270import(cdefault.getSeconds());
            }
            if (cdefault.getNanos() != 0) {
                m20275throw(cdefault.getNanos());
            }
            mergeUnknownFields(cdefault.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cdefault) {
                return m20262class((Cdefault) message);
            }
            super.mergeFrom(message);
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
        public Cdefault buildPartial() {
            Cdefault cdefault = new Cdefault(this, (Cdo) null);
            cdefault.seconds_ = this.f16841do;
            cdefault.nanos_ = this.f16842if;
            onBuilt();
            return cdefault;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Cextends.f16892do;
        }

        @Override // com.google.protobuf.DurationOrBuilder
        public int getNanos() {
            return this.f16842if;
        }

        @Override // com.google.protobuf.DurationOrBuilder
        public long getSeconds() {
            return this.f16841do;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m20268goto() {
            this.f16841do = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdefault build() {
            Cdefault cdefaultBuildPartial = buildPartial();
            if (cdefaultBuildPartial.isInitialized()) {
                return cdefaultBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cdefaultBuildPartial);
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m20270import(long j) {
            this.f16841do = j;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Cextends.f16894if.m19575new(Cdefault.class, Cif.class);
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
            this.f16841do = 0L;
            this.f16842if = 0;
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
        public Cif m20275throw(int i) {
            this.f16842if = i;
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

    public /* synthetic */ Cdefault(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cdefault getDefaultInstance() {
        return f16839do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Cextends.f16892do;
    }

    public static Cif newBuilder() {
        return f16839do.toBuilder();
    }

    public static Cdefault parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseDelimitedWithIOException(f16840if, inputStream);
    }

    public static Cdefault parseFrom(ByteBuffer byteBuffer) throws n {
        return f16840if.parseFrom(byteBuffer);
    }

    public static Parser<Cdefault> parser() {
        return f16840if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cdefault)) {
            return super.equals(obj);
        }
        Cdefault cdefault = (Cdefault) obj;
        return getSeconds() == cdefault.getSeconds() && getNanos() == cdefault.getNanos() && this.unknownFields.equals(cdefault.unknownFields);
    }

    @Override // com.google.protobuf.DurationOrBuilder
    public int getNanos() {
        return this.nanos_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cdefault> getParserForType() {
        return f16840if;
    }

    @Override // com.google.protobuf.DurationOrBuilder
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
        return Cextends.f16894if.m19575new(Cdefault.class, Cif.class);
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
        return new Cdefault();
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

    public /* synthetic */ Cdefault(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cdefault cdefault) {
        return f16839do.toBuilder().m20262class(cdefault);
    }

    public static Cdefault parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16840if.parseFrom(byteBuffer, cimplements);
    }

    private Cdefault(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cdefault parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseDelimitedWithIOException(f16840if, inputStream, cimplements);
    }

    public static Cdefault parseFrom(ByteString byteString) throws n {
        return f16840if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cdefault getDefaultInstanceForType() {
        return f16839do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16839do ? new Cif(cdo) : new Cif(cdo).m20262class(this);
    }

    public static Cdefault parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16840if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cdefault() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cdefault parseFrom(byte[] bArr) throws n {
        return f16840if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cdefault parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16840if.parseFrom(bArr, cimplements);
    }

    private Cdefault(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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

    public static Cdefault parseFrom(InputStream inputStream) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseWithIOException(f16840if, inputStream);
    }

    public static Cdefault parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseWithIOException(f16840if, inputStream, cimplements);
    }

    public static Cdefault parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseWithIOException(f16840if, codedInputStream);
    }

    public static Cdefault parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cdefault) GeneratedMessageV3.parseWithIOException(f16840if, codedInputStream, cimplements);
    }
}
