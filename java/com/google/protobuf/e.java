package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class e extends GeneratedMessageV3 implements FieldMaskOrBuilder {
    public static final int PATHS_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final e f16843do = new e();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<e> f16844if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private LazyStringList paths_;

    /* renamed from: com.google.protobuf.e$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<e> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public e parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new e(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.e$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements FieldMaskOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f16845do;

        /* renamed from: if, reason: not valid java name */
        private LazyStringList f16846if;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: class, reason: not valid java name */
        private void m20279class() {
            if ((this.f16845do & 1) == 0) {
                this.f16846if = new s(this.f16846if);
                this.f16845do |= 1;
            }
        }

        public static final Descriptors.Cif getDescriptor() {
            return f.f16895do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20280break() {
            this.f16846if = s.f17207try;
            this.f16845do &= -2;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public e buildPartial() {
            e eVar = new e(this, (Cdo) null);
            if ((this.f16845do & 1) != 0) {
                this.f16846if = this.f16846if.getUnmodifiableView();
                this.f16845do &= -2;
            }
            eVar.paths_ = this.f16846if;
            onBuilt();
            return eVar;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public e getDefaultInstanceForType() {
            return e.getDefaultInstance();
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20284do(Iterable<String> iterable) {
            m20279class();
            AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16846if);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16846if = s.f17207try;
            this.f16845do &= -2;
            return this;
        }

        @Override // com.google.protobuf.FieldMaskOrBuilder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public ProtocolStringList getPathsList() {
            return this.f16846if.getUnmodifiableView();
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20287for(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            m20279class();
            this.f16846if.add(byteString);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return f.f16895do;
        }

        @Override // com.google.protobuf.FieldMaskOrBuilder
        public String getPaths(int i) {
            return this.f16846if.get(i);
        }

        @Override // com.google.protobuf.FieldMaskOrBuilder
        public ByteString getPathsBytes(int i) {
            return this.f16846if.getByteString(i);
        }

        @Override // com.google.protobuf.FieldMaskOrBuilder
        public int getPathsCount() {
            return this.f16846if.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20289if(String str) {
            Objects.requireNonNull(str);
            m20279class();
            this.f16846if.add((LazyStringList) str);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return f.f16897if.m19575new(e.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m20293public(int i, String str) {
            Objects.requireNonNull(str);
            m20279class();
            this.f16846if.set(i, (int) str);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            e eVar = null;
            try {
                try {
                    e eVar2 = (e) e.f16844if.parsePartialFrom(codedInputStream, cimplements);
                    if (eVar2 != null) {
                        m20298throw(eVar2);
                    }
                    return this;
                } catch (n e) {
                    e eVar3 = (e) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        eVar = eVar3;
                        if (eVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (eVar != null) {
                    m20298throw(eVar);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m20298throw(e eVar) {
            if (eVar == e.getDefaultInstance()) {
                return this;
            }
            if (!eVar.paths_.isEmpty()) {
                if (this.f16846if.isEmpty()) {
                    this.f16846if = eVar.paths_;
                    this.f16845do &= -2;
                } else {
                    m20279class();
                    this.f16846if.addAll(eVar.paths_);
                }
                onChanged();
            }
            mergeUnknownFields(eVar.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public e build() {
            e eVarBuildPartial = buildPartial();
            if (eVarBuildPartial.isInitialized()) {
                return eVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) eVarBuildPartial);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof e) {
                return m20298throw((e) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f16846if = s.f17207try;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16846if = s.f17207try;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ e(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static e getDefaultInstance() {
        return f16843do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return f.f16895do;
    }

    public static Cif newBuilder() {
        return f16843do.toBuilder();
    }

    public static e parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (e) GeneratedMessageV3.parseDelimitedWithIOException(f16844if, inputStream);
    }

    public static e parseFrom(ByteBuffer byteBuffer) throws n {
        return f16844if.parseFrom(byteBuffer);
    }

    public static Parser<e> parser() {
        return f16844if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return super.equals(obj);
        }
        e eVar = (e) obj;
        return getPathsList().equals(eVar.getPathsList()) && this.unknownFields.equals(eVar.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<e> getParserForType() {
        return f16844if;
    }

    @Override // com.google.protobuf.FieldMaskOrBuilder
    public String getPaths(int i) {
        return this.paths_.get(i);
    }

    @Override // com.google.protobuf.FieldMaskOrBuilder
    public ByteString getPathsBytes(int i) {
        return this.paths_.getByteString(i);
    }

    @Override // com.google.protobuf.FieldMaskOrBuilder
    public int getPathsCount() {
        return this.paths_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSizeNoTag = 0;
        for (int i2 = 0; i2 < this.paths_.size(); i2++) {
            iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.paths_.getRaw(i2));
        }
        int size = 0 + iComputeStringSizeNoTag + (getPathsList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
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
        int iHashCode = 779 + getDescriptor().hashCode();
        if (getPathsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getPathsList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return f.f16897if.m19575new(e.class, Cif.class);
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
        return new e();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        for (int i = 0; i < this.paths_.size(); i++) {
            GeneratedMessageV3.writeString(cnative, 1, this.paths_.getRaw(i));
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ e(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(e eVar) {
        return f16843do.toBuilder().m20298throw(eVar);
    }

    public static e parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16844if.parseFrom(byteBuffer, cimplements);
    }

    @Override // com.google.protobuf.FieldMaskOrBuilder
    public ProtocolStringList getPathsList() {
        return this.paths_;
    }

    private e(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static e parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (e) GeneratedMessageV3.parseDelimitedWithIOException(f16844if, inputStream, cimplements);
    }

    public static e parseFrom(ByteString byteString) throws n {
        return f16844if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public e getDefaultInstanceForType() {
        return f16843do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16843do ? new Cif(cdo) : new Cif(cdo).m20298throw(this);
    }

    public static e parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16844if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private e() {
        this.memoizedIsInitialized = (byte) -1;
        this.paths_ = s.f17207try;
    }

    public static e parseFrom(byte[] bArr) throws n {
        return f16844if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static e parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16844if.parseFrom(bArr, cimplements);
    }

    public static e parseFrom(InputStream inputStream) throws IOException {
        return (e) GeneratedMessageV3.parseWithIOException(f16844if, inputStream);
    }

    private e(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 10) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            String strK = codedInputStream.k();
                            if (!(z2 & true)) {
                                this.paths_ = new s();
                                z2 |= true;
                            }
                            this.paths_.add((LazyStringList) strK);
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                if (z2 & true) {
                    this.paths_ = this.paths_.getUnmodifiableView();
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static e parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (e) GeneratedMessageV3.parseWithIOException(f16844if, inputStream, cimplements);
    }

    public static e parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (e) GeneratedMessageV3.parseWithIOException(f16844if, codedInputStream);
    }

    public static e parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (e) GeneratedMessageV3.parseWithIOException(f16844if, codedInputStream, cimplements);
    }
}
