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
public final class c1 extends GeneratedMessageV3 implements SourceContextOrBuilder {
    public static final int FILE_NAME_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final c1 f16678do = new c1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<c1> f16679if = new Cdo();
    private static final long serialVersionUID = 0;
    private volatile Object fileName_;
    private byte memoizedIsInitialized;

    /* renamed from: com.google.protobuf.c1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<c1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new c1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.c1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements SourceContextOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private Object f16680do;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return d1.f16817do;
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
            c1 c1Var = null;
            try {
                try {
                    c1 c1Var2 = (c1) c1.f16679if.parsePartialFrom(codedInputStream, cimplements);
                    if (c1Var2 != null) {
                        m19947class(c1Var2);
                    }
                    return this;
                } catch (n e) {
                    c1 c1Var3 = (c1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        c1Var = c1Var3;
                        if (c1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (c1Var != null) {
                    m19947class(c1Var);
                }
                throw th;
            }
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m19945case() {
            this.f16680do = c1.getDefaultInstance().getFileName();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof c1) {
                return m19947class((c1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19947class(c1 c1Var) {
            if (c1Var == c1.getDefaultInstance()) {
                return this;
            }
            if (!c1Var.getFileName().isEmpty()) {
                this.f16680do = c1Var.fileName_;
                onChanged();
            }
            mergeUnknownFields(c1Var.unknownFields);
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

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1 buildPartial() {
            c1 c1Var = new c1(this, (Cdo) null);
            c1Var.fileName_ = this.f16680do;
            onBuilt();
            return c1Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d1.f16817do;
        }

        @Override // com.google.protobuf.SourceContextOrBuilder
        public String getFileName() {
            Object obj = this.f16680do;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16680do = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.SourceContextOrBuilder
        public ByteString getFileNameBytes() {
            Object obj = this.f16680do;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16680do = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1 build() {
            c1 c1VarBuildPartial = buildPartial();
            if (c1VarBuildPartial.isInitialized()) {
                return c1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) c1VarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d1.f16819if.m19575new(c1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16680do = "";
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m19957super(String str) {
            Objects.requireNonNull(str);
            this.f16680do = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1 getDefaultInstanceForType() {
            return c1.getDefaultInstance();
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m19959throw(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16680do = byteString;
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
            this.f16680do = "";
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16680do = "";
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ c1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static c1 getDefaultInstance() {
        return f16678do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d1.f16817do;
    }

    public static Cif newBuilder() {
        return f16678do.toBuilder();
    }

    public static c1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (c1) GeneratedMessageV3.parseDelimitedWithIOException(f16679if, inputStream);
    }

    public static c1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f16679if.parseFrom(byteBuffer);
    }

    public static Parser<c1> parser() {
        return f16679if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return super.equals(obj);
        }
        c1 c1Var = (c1) obj;
        return getFileName().equals(c1Var.getFileName()) && this.unknownFields.equals(c1Var.unknownFields);
    }

    @Override // com.google.protobuf.SourceContextOrBuilder
    public String getFileName() {
        Object obj = this.fileName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.fileName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.SourceContextOrBuilder
    public ByteString getFileNameBytes() {
        Object obj = this.fileName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.fileName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<c1> getParserForType() {
        return f16679if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = (getFileNameBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.fileName_)) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iComputeStringSize;
        return iComputeStringSize;
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
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFileName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d1.f16819if.m19575new(c1.class, Cif.class);
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
        return new c1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getFileNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.fileName_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ c1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(c1 c1Var) {
        return f16678do.toBuilder().m19947class(c1Var);
    }

    public static c1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16679if.parseFrom(byteBuffer, cimplements);
    }

    private c1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static c1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (c1) GeneratedMessageV3.parseDelimitedWithIOException(f16679if, inputStream, cimplements);
    }

    public static c1 parseFrom(ByteString byteString) throws n {
        return f16679if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public c1 getDefaultInstanceForType() {
        return f16678do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16678do ? new Cif(cdo) : new Cif(cdo).m19947class(this);
    }

    public static c1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16679if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private c1() {
        this.memoizedIsInitialized = (byte) -1;
        this.fileName_ = "";
    }

    public static c1 parseFrom(byte[] bArr) throws n {
        return f16679if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static c1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16679if.parseFrom(bArr, cimplements);
    }

    public static c1 parseFrom(InputStream inputStream) throws IOException {
        return (c1) GeneratedMessageV3.parseWithIOException(f16679if, inputStream);
    }

    private c1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.fileName_ = codedInputStream.k();
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

    public static c1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (c1) GeneratedMessageV3.parseWithIOException(f16679if, inputStream, cimplements);
    }

    public static c1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (c1) GeneratedMessageV3.parseWithIOException(f16679if, codedInputStream);
    }

    public static c1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (c1) GeneratedMessageV3.parseWithIOException(f16679if, codedInputStream, cimplements);
    }
}
