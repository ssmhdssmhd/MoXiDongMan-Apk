package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrows extends GeneratedMessageV3 implements DoubleValueOrBuilder {
    public static final int VALUE_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final Cthrows f17249do = new Cthrows();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cthrows> f17250if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private double value_;

    /* renamed from: com.google.protobuf.throws$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cthrows> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cthrows parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cthrows(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.throws$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements DoubleValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private double f17251do;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return d2.f16825do;
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
            Cthrows cthrows = null;
            try {
                try {
                    Cthrows cthrows2 = (Cthrows) Cthrows.f17250if.parsePartialFrom(codedInputStream, cimplements);
                    if (cthrows2 != null) {
                        m21313catch(cthrows2);
                    }
                    return this;
                } catch (n e) {
                    Cthrows cthrows3 = (Cthrows) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cthrows = cthrows3;
                        if (cthrows != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cthrows != null) {
                    m21313catch(cthrows);
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
        public Cif m21313catch(Cthrows cthrows) {
            if (cthrows == Cthrows.getDefaultInstance()) {
                return this;
            }
            if (cthrows.getValue() != 0.0d) {
                m21327while(cthrows.getValue());
            }
            mergeUnknownFields(cthrows.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cthrows) {
                return m21313catch((Cthrows) message);
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
        public Cif m21317else() {
            this.f17251do = 0.0d;
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
        public Cthrows buildPartial() {
            Cthrows cthrows = new Cthrows(this, (Cdo) null);
            cthrows.value_ = this.f17251do;
            onBuilt();
            return cthrows;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return d2.f16825do;
        }

        @Override // com.google.protobuf.DoubleValueOrBuilder
        public double getValue() {
            return this.f17251do;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cthrows build() {
            Cthrows cthrowsBuildPartial = buildPartial();
            if (cthrowsBuildPartial.isInitialized()) {
                return cthrowsBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cthrowsBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d2.f16830if.m19575new(Cthrows.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17251do = 0.0d;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cthrows getDefaultInstanceForType() {
            return Cthrows.getDefaultInstance();
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
        public Cif m21327while(double d) {
            this.f17251do = d;
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

    public /* synthetic */ Cthrows(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cthrows getDefaultInstance() {
        return f17249do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return d2.f16825do;
    }

    public static Cif newBuilder() {
        return f17249do.toBuilder();
    }

    public static Cthrows of(double d) {
        return newBuilder().m21327while(d).build();
    }

    public static Cthrows parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseDelimitedWithIOException(f17250if, inputStream);
    }

    public static Cthrows parseFrom(ByteBuffer byteBuffer) throws n {
        return f17250if.parseFrom(byteBuffer);
    }

    public static Parser<Cthrows> parser() {
        return f17250if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cthrows)) {
            return super.equals(obj);
        }
        Cthrows cthrows = (Cthrows) obj;
        return Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(cthrows.getValue()) && this.unknownFields.equals(cthrows.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cthrows> getParserForType() {
        return f17250if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        double d = this.value_;
        int iM20902throw = (d != 0.0d ? 0 + Cnative.m20902throw(1, d) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iM20902throw;
        return iM20902throw;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.DoubleValueOrBuilder
    public double getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.m19622native(Double.doubleToLongBits(getValue()))) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d2.f16830if.m19575new(Cthrows.class, Cif.class);
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
        return new Cthrows();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        double d = this.value_;
        if (d != 0.0d) {
            cnative.writeDouble(1, d);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Cthrows(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cthrows cthrows) {
        return f17249do.toBuilder().m21313catch(cthrows);
    }

    public static Cthrows parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17250if.parseFrom(byteBuffer, cimplements);
    }

    private Cthrows(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cthrows parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseDelimitedWithIOException(f17250if, inputStream, cimplements);
    }

    public static Cthrows parseFrom(ByteString byteString) throws n {
        return f17250if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cthrows getDefaultInstanceForType() {
        return f17249do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17249do ? new Cif(cdo) : new Cif(cdo).m21313catch(this);
    }

    public static Cthrows parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17250if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cthrows() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cthrows parseFrom(byte[] bArr) throws n {
        return f17250if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cthrows parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17250if.parseFrom(bArr, cimplements);
    }

    private Cthrows(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 9) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.value_ = codedInputStream.mo18422default();
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

    public static Cthrows parseFrom(InputStream inputStream) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseWithIOException(f17250if, inputStream);
    }

    public static Cthrows parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseWithIOException(f17250if, inputStream, cimplements);
    }

    public static Cthrows parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseWithIOException(f17250if, codedInputStream);
    }

    public static Cthrows parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cthrows) GeneratedMessageV3.parseWithIOException(f17250if, codedInputStream, cimplements);
    }
}
