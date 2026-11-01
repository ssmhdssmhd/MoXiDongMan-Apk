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
public final class l extends GeneratedMessageV3 implements Int64ValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final l f17053do = new l();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<l> f17054if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private long value_;

    /* renamed from: com.google.protobuf.l$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<l> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public l parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new l(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.l$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements Int64ValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private long f17055do;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16837try;
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
            l lVar = null;
            try {
                try {
                    l lVar2 = (l) l.f17054if.parsePartialFrom(codedInputStream, cimplements);
                    if (lVar2 != null) {
                        m20782catch(lVar2);
                    }
                    return this;
                } catch (n e) {
                    l lVar3 = (l) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        lVar = lVar3;
                        if (lVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (lVar != null) {
                    m20782catch(lVar);
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
        public Cif m20782catch(l lVar) {
            if (lVar == l.getDefaultInstance()) {
                return this;
            }
            if (lVar.getValue() != 0) {
                m20796while(lVar.getValue());
            }
            mergeUnknownFields(lVar.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof l) {
                return m20782catch((l) message);
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
        public Cif m20786else() {
            this.f17055do = 0L;
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
        public l buildPartial() {
            l lVar = new l(this, (Cdo) null);
            lVar.value_ = this.f17055do;
            onBuilt();
            return lVar;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16837try;
        }

        @Override // com.google.protobuf.Int64ValueOrBuilder
        public long getValue() {
            return this.f17055do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public l build() {
            l lVarBuildPartial = buildPartial();
            if (lVarBuildPartial.isInitialized()) {
                return lVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) lVarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16821case.m19575new(l.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17055do = 0L;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public l getDefaultInstanceForType() {
            return l.getDefaultInstance();
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
        public Cif m20796while(long j) {
            this.f17055do = j;
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

    public /* synthetic */ l(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static l getDefaultInstance() {
        return f17053do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16837try;
    }

    public static Cif newBuilder() {
        return f17053do.toBuilder();
    }

    public static l of(long j) {
        return newBuilder().m20796while(j).build();
    }

    public static l parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (l) GeneratedMessageV3.parseDelimitedWithIOException(f17054if, inputStream);
    }

    public static l parseFrom(ByteBuffer byteBuffer) throws n {
        return f17054if.parseFrom(byteBuffer);
    }

    public static Parser<l> parser() {
        return f17054if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return super.equals(obj);
        }
        l lVar = (l) obj;
        return getValue() == lVar.getValue() && this.unknownFields.equals(lVar.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<l> getParserForType() {
        return f17054if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        long j = this.value_;
        int iM20897strictfp = (j != 0 ? 0 + Cnative.m20897strictfp(1, j) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20897strictfp;
        return iM20897strictfp;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.Int64ValueOrBuilder
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
        return d2.f16821case.m19575new(l.class, Cif.class);
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
        return new l();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        long j = this.value_;
        if (j != 0) {
            cnative.writeInt64(1, j);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ l(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(l lVar) {
        return f17053do.toBuilder().m20782catch(lVar);
    }

    public static l parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17054if.parseFrom(byteBuffer, cimplements);
    }

    private l(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static l parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (l) GeneratedMessageV3.parseDelimitedWithIOException(f17054if, inputStream, cimplements);
    }

    public static l parseFrom(ByteString byteString) throws n {
        return f17054if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public l getDefaultInstanceForType() {
        return f17053do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17053do ? new Cif(cdo) : new Cif(cdo).m20782catch(this);
    }

    public static l parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17054if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private l() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static l parseFrom(byte[] bArr) throws n {
        return f17054if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static l parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17054if.parseFrom(bArr, cimplements);
    }

    private l(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.value_ = codedInputStream.mo18446volatile();
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

    public static l parseFrom(InputStream inputStream) throws IOException {
        return (l) GeneratedMessageV3.parseWithIOException(f17054if, inputStream);
    }

    public static l parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (l) GeneratedMessageV3.parseWithIOException(f17054if, inputStream, cimplements);
    }

    public static l parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (l) GeneratedMessageV3.parseWithIOException(f17054if, codedInputStream);
    }

    public static l parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (l) GeneratedMessageV3.parseWithIOException(f17054if, codedInputStream, cimplements);
    }
}
