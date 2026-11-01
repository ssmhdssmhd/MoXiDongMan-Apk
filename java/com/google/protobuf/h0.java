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
public final class h0 extends GeneratedMessageV3 implements MixinOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ROOT_FIELD_NUMBER = 2;

    /* renamed from: do, reason: not valid java name */
    private static final h0 f16959do = new h0();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<h0> f16960if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object root_;

    /* renamed from: com.google.protobuf.h0$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<h0> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public h0 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new h0(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.h0$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements MixinOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private Object f16961do;

        /* renamed from: if, reason: not valid java name */
        private Object f16962if;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return Cgoto.f16955try;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public h0 getDefaultInstanceForType() {
            return h0.getDefaultInstance();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20554case() {
            this.f16961do = h0.getDefaultInstance().getName();
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
            h0 h0Var = null;
            try {
                try {
                    h0 h0Var2 = (h0) h0.f16960if.parsePartialFrom(codedInputStream, cimplements);
                    if (h0Var2 != null) {
                        m20557const(h0Var2);
                    }
                    return this;
                } catch (n e) {
                    h0 h0Var3 = (h0) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        h0Var = h0Var3;
                        if (h0Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (h0Var != null) {
                    m20557const(h0Var);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof h0) {
                return m20557const((h0) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m20557const(h0 h0Var) {
            if (h0Var == h0.getDefaultInstance()) {
                return this;
            }
            if (!h0Var.getName().isEmpty()) {
                this.f16961do = h0Var.name_;
                onChanged();
            }
            if (!h0Var.getRoot().isEmpty()) {
                this.f16962if = h0Var.root_;
                onChanged();
            }
            mergeUnknownFields(h0Var.unknownFields);
            onChanged();
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
        public h0 buildPartial() {
            h0 h0Var = new h0(this, (Cdo) null);
            h0Var.name_ = this.f16961do;
            h0Var.root_ = this.f16962if;
            onBuilt();
            return h0Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Cgoto.f16955try;
        }

        @Override // com.google.protobuf.MixinOrBuilder
        public String getName() {
            Object obj = this.f16961do;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16961do = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MixinOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16961do;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16961do = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.MixinOrBuilder
        public String getRoot() {
            Object obj = this.f16962if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16962if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MixinOrBuilder
        public ByteString getRootBytes() {
            Object obj = this.f16962if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16962if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m20562goto() {
            this.f16962if = h0.getDefaultInstance().getRoot();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public h0 build() {
            h0 h0VarBuildPartial = buildPartial();
            if (h0VarBuildPartial.isInitialized()) {
                return h0VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) h0VarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Cgoto.f16949case.m19575new(h0.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m20565native(String str) {
            Objects.requireNonNull(str);
            this.f16962if = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16961do = "";
            this.f16962if = "";
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m20567public(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16962if = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
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
        public Cif m20571throw(String str) {
            Objects.requireNonNull(str);
            this.f16961do = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m20573while(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16961do = byteString;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            this.f16961do = "";
            this.f16962if = "";
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16961do = "";
            this.f16962if = "";
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ h0(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static h0 getDefaultInstance() {
        return f16959do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Cgoto.f16955try;
    }

    public static Cif newBuilder() {
        return f16959do.toBuilder();
    }

    public static h0 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (h0) GeneratedMessageV3.parseDelimitedWithIOException(f16960if, inputStream);
    }

    public static h0 parseFrom(ByteBuffer byteBuffer) throws n {
        return f16960if.parseFrom(byteBuffer);
    }

    public static Parser<h0> parser() {
        return f16960if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return super.equals(obj);
        }
        h0 h0Var = (h0) obj;
        return getName().equals(h0Var.getName()) && getRoot().equals(h0Var.getRoot()) && this.unknownFields.equals(h0Var.unknownFields);
    }

    @Override // com.google.protobuf.MixinOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MixinOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<h0> getParserForType() {
        return f16960if;
    }

    @Override // com.google.protobuf.MixinOrBuilder
    public String getRoot() {
        Object obj = this.root_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.root_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MixinOrBuilder
    public ByteString getRootBytes() {
        Object obj = this.root_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.root_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = getNameBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!getRootBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.root_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRoot().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Cgoto.f16949case.m19575new(h0.class, Cif.class);
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
        return new h0();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        if (!getRootBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 2, this.root_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ h0(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(h0 h0Var) {
        return f16959do.toBuilder().m20557const(h0Var);
    }

    public static h0 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16960if.parseFrom(byteBuffer, cimplements);
    }

    private h0(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static h0 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (h0) GeneratedMessageV3.parseDelimitedWithIOException(f16960if, inputStream, cimplements);
    }

    public static h0 parseFrom(ByteString byteString) throws n {
        return f16960if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public h0 getDefaultInstanceForType() {
        return f16959do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16959do ? new Cif(cdo) : new Cif(cdo).m20557const(this);
    }

    public static h0 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16960if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private h0() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.root_ = "";
    }

    public static h0 parseFrom(byte[] bArr) throws n {
        return f16960if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static h0 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16960if.parseFrom(bArr, cimplements);
    }

    public static h0 parseFrom(InputStream inputStream) throws IOException {
        return (h0) GeneratedMessageV3.parseWithIOException(f16960if, inputStream);
    }

    private h0(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            if (iL == 10) {
                                this.name_ = codedInputStream.k();
                            } else if (iL != 18) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.root_ = codedInputStream.k();
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

    public static h0 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (h0) GeneratedMessageV3.parseWithIOException(f16960if, inputStream, cimplements);
    }

    public static h0 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (h0) GeneratedMessageV3.parseWithIOException(f16960if, codedInputStream);
    }

    public static h0 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (h0) GeneratedMessageV3.parseWithIOException(f16960if, codedInputStream, cimplements);
    }
}
