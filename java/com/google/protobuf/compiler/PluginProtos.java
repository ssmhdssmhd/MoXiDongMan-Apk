package com.google.protobuf.compiler;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cimplements;
import com.google.protobuf.Cnative;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.Cprotected;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.a1;
import com.google.protobuf.n;
import com.google.protobuf.s;
import com.google.protobuf.t1;
import com.google.protobuf.v0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class PluginProtos {

    /* renamed from: case, reason: not valid java name */
    private static final GeneratedMessageV3.FieldAccessorTable f16740case;

    /* renamed from: do, reason: not valid java name */
    private static final Descriptors.Cif f16741do;

    /* renamed from: else, reason: not valid java name */
    private static final Descriptors.Cif f16742else;

    /* renamed from: for, reason: not valid java name */
    private static final Descriptors.Cif f16743for;

    /* renamed from: goto, reason: not valid java name */
    private static final GeneratedMessageV3.FieldAccessorTable f16744goto;

    /* renamed from: if, reason: not valid java name */
    private static final GeneratedMessageV3.FieldAccessorTable f16745if;

    /* renamed from: new, reason: not valid java name */
    private static final GeneratedMessageV3.FieldAccessorTable f16746new;

    /* renamed from: this, reason: not valid java name */
    private static Descriptors.FileDescriptor f16747this = Descriptors.FileDescriptor.m19224throws(new String[]{"\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"º\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"\u0080\u0002\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012supported_features\u0018\u0002 \u0001(\u0004\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a>\n\u0004File\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\t\"8\n\u0007Feature\u0012\u0010\n\fFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001Bg\n\u001ccom.google.protobuf.compilerB\fPluginProtosZ9github.com/golang/protobuf/protoc-gen-go/plugin;plugin_go"}, new Descriptors.FileDescriptor[]{DescriptorProtos.p()});

    /* renamed from: try, reason: not valid java name */
    private static final Descriptors.Cif f16748try;

    public interface CodeGeneratorRequestOrBuilder extends MessageOrBuilder {
        Cfor getCompilerVersion();

        VersionOrBuilder getCompilerVersionOrBuilder();

        String getFileToGenerate(int i);

        ByteString getFileToGenerateBytes(int i);

        int getFileToGenerateCount();

        List<String> getFileToGenerateList();

        String getParameter();

        ByteString getParameterBytes();

        DescriptorProtos.Cgoto getProtoFile(int i);

        int getProtoFileCount();

        List<DescriptorProtos.Cgoto> getProtoFileList();

        DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i);

        List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList();

        boolean hasCompilerVersion();

        boolean hasParameter();
    }

    public static final class CodeGeneratorResponse extends GeneratedMessageV3 implements CodeGeneratorResponseOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int FILE_FIELD_NUMBER = 15;
        public static final int SUPPORTED_FEATURES_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object error_;
        private List<Cnew> file_;
        private byte memoizedIsInitialized;
        private long supportedFeatures_;

        /* renamed from: do, reason: not valid java name */
        private static final CodeGeneratorResponse f16749do = new CodeGeneratorResponse();

        @Deprecated
        public static final Parser<CodeGeneratorResponse> PARSER = new Cdo();

        public interface FileOrBuilder extends MessageOrBuilder {
            String getContent();

            ByteString getContentBytes();

            String getInsertionPoint();

            ByteString getInsertionPointBytes();

            String getName();

            ByteString getNameBytes();

            boolean hasContent();

            boolean hasInsertionPoint();

            boolean hasName();
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$do, reason: invalid class name */
        public class Cdo extends com.google.protobuf.Cdo<CodeGeneratorResponse> {
            @Override // com.google.protobuf.Parser
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public CodeGeneratorResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new CodeGeneratorResponse(codedInputStream, cimplements);
            }
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$for, reason: invalid class name */
        public enum Cfor implements ProtocolMessageEnum {
            FEATURE_NONE(0),
            FEATURE_PROTO3_OPTIONAL(1);

            public static final int FEATURE_NONE_VALUE = 0;
            public static final int FEATURE_PROTO3_OPTIONAL_VALUE = 1;
            private final int value;

            /* renamed from: do, reason: not valid java name */
            private static final Internal.EnumLiteMap<Cfor> f16750do = new Cdo();

            /* renamed from: if, reason: not valid java name */
            private static final Cfor[] f16752if = values();

            /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$for$do, reason: invalid class name */
            public class Cdo implements Internal.EnumLiteMap<Cfor> {
                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cfor findValueByNumber(int i) {
                    return Cfor.forNumber(i);
                }
            }

            Cfor(int i) {
                this.value = i;
            }

            public static Cfor forNumber(int i) {
                if (i == 0) {
                    return FEATURE_NONE;
                }
                if (i != 1) {
                    return null;
                }
                return FEATURE_PROTO3_OPTIONAL;
            }

            public static final Descriptors.Ctry getDescriptor() {
                return CodeGeneratorResponse.getDescriptor().m19323const().get(0);
            }

            public static Internal.EnumLiteMap<Cfor> internalGetValueMap() {
                return f16750do;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.Ctry getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.Ccase getValueDescriptor() {
                return getDescriptor().m19356const().get(ordinal());
            }

            @Deprecated
            public static Cfor valueOf(int i) {
                return forNumber(i);
            }

            public static Cfor valueOf(Descriptors.Ccase ccase) {
                if (ccase.m19264goto() == getDescriptor()) {
                    return f16752if[ccase.m19262case()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$new, reason: invalid class name */
        public static final class Cnew extends GeneratedMessageV3 implements FileOrBuilder {
            public static final int CONTENT_FIELD_NUMBER = 15;
            public static final int INSERTION_POINT_FIELD_NUMBER = 2;
            public static final int NAME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private volatile Object content_;
            private volatile Object insertionPoint_;
            private byte memoizedIsInitialized;
            private volatile Object name_;

            /* renamed from: do, reason: not valid java name */
            private static final Cnew f16758do = new Cnew();

            @Deprecated
            public static final Parser<Cnew> PARSER = new Cdo();

            /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$new$do, reason: invalid class name */
            public class Cdo extends com.google.protobuf.Cdo<Cnew> {
                @Override // com.google.protobuf.Parser
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cnew parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                    return new Cnew(codedInputStream, cimplements);
                }
            }

            public static Cnew getDefaultInstance() {
                return f16758do;
            }

            public static final Descriptors.Cif getDescriptor() {
                return PluginProtos.f16742else;
            }

            public static Cif newBuilder() {
                return f16758do.toBuilder();
            }

            public static Cnew parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Cnew) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Cnew parseFrom(ByteBuffer byteBuffer) throws n {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Parser<Cnew> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Cnew)) {
                    return super.equals(obj);
                }
                Cnew cnew = (Cnew) obj;
                if (hasName() != cnew.hasName()) {
                    return false;
                }
                if ((hasName() && !getName().equals(cnew.getName())) || hasInsertionPoint() != cnew.hasInsertionPoint()) {
                    return false;
                }
                if ((!hasInsertionPoint() || getInsertionPoint().equals(cnew.getInsertionPoint())) && hasContent() == cnew.hasContent()) {
                    return (!hasContent() || getContent().equals(cnew.getContent())) && this.unknownFields.equals(cnew.unknownFields);
                }
                return false;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.content_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public ByteString getContentBytes() {
                Object obj = this.content_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.content_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public String getInsertionPoint() {
                Object obj = this.insertionPoint_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.insertionPoint_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public ByteString getInsertionPointBytes() {
                Object obj = this.insertionPoint_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.insertionPoint_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
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
            public Parser<Cnew> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.name_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.insertionPoint_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeStringSize += GeneratedMessageV3.computeStringSize(15, this.content_);
                }
                int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
            public final t1 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public boolean hasContent() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public boolean hasInsertionPoint() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasName()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getName().hashCode();
                }
                if (hasInsertionPoint()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getInsertionPoint().hashCode();
                }
                if (hasContent()) {
                    iHashCode = (((iHashCode * 37) + 15) * 53) + getContent().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f16744goto.m19575new(Cnew.class, Cif.class);
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
                return new Cnew();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(Cnative cnative) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    GeneratedMessageV3.writeString(cnative, 1, this.name_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessageV3.writeString(cnative, 2, this.insertionPoint_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessageV3.writeString(cnative, 15, this.content_);
                }
                this.unknownFields.writeTo(cnative);
            }

            /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$new$if, reason: invalid class name */
            public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements FileOrBuilder {

                /* renamed from: do, reason: not valid java name */
                private int f16759do;

                /* renamed from: for, reason: not valid java name */
                private Object f16760for;

                /* renamed from: if, reason: not valid java name */
                private Object f16761if;

                /* renamed from: new, reason: not valid java name */
                private Object f16762new;

                public static final Descriptors.Cif getDescriptor() {
                    return PluginProtos.f16742else;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
                /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif mo18392clone() {
                    return (Cif) super.mo18392clone();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
                /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif clearField(Descriptors.Celse celse) {
                    return (Cif) super.clearField(celse);
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cnew getDefaultInstanceForType() {
                    return Cnew.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                    Cnew cnew = null;
                    try {
                        try {
                            Cnew partialFrom = Cnew.PARSER.parsePartialFrom(codedInputStream, cimplements);
                            if (partialFrom != null) {
                                m20082final(partialFrom);
                            }
                            return this;
                        } catch (n e) {
                            Cnew cnew2 = (Cnew) e.getUnfinishedMessage();
                            try {
                                throw e.unwrapIOException();
                            } catch (Throwable th) {
                                th = th;
                                cnew = cnew2;
                                if (cnew != null) {
                                    m20082final(cnew);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cnew != null) {
                        }
                        throw th;
                    }
                }

                @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
                /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif mergeFrom(Message message) {
                    if (message instanceof Cnew) {
                        return m20082final((Cnew) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
                    return (Cif) super.addRepeatedField(celse, obj);
                }

                /* renamed from: else, reason: not valid java name */
                public Cif m20081else() {
                    this.f16759do &= -3;
                    this.f16760for = Cnew.getDefaultInstance().getInsertionPoint();
                    onChanged();
                    return this;
                }

                /* renamed from: final, reason: not valid java name */
                public Cif m20082final(Cnew cnew) {
                    if (cnew == Cnew.getDefaultInstance()) {
                        return this;
                    }
                    if (cnew.hasName()) {
                        this.f16759do |= 1;
                        this.f16761if = cnew.name_;
                        onChanged();
                    }
                    if (cnew.hasInsertionPoint()) {
                        this.f16759do |= 2;
                        this.f16760for = cnew.insertionPoint_;
                        onChanged();
                    }
                    if (cnew.hasContent()) {
                        this.f16759do |= 4;
                        this.f16762new = cnew.content_;
                        onChanged();
                    }
                    mergeUnknownFields(cnew.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cnew buildPartial() {
                    Cnew cnew = new Cnew(this);
                    int i = this.f16759do;
                    int i2 = (i & 1) != 0 ? 1 : 0;
                    cnew.name_ = this.f16761if;
                    if ((i & 2) != 0) {
                        i2 |= 2;
                    }
                    cnew.insertionPoint_ = this.f16760for;
                    if ((i & 4) != 0) {
                        i2 |= 4;
                    }
                    cnew.content_ = this.f16762new;
                    cnew.bitField0_ = i2;
                    onBuilt();
                    return cnew;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public String getContent() {
                    Object obj = this.f16762new;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.f16762new = stringUtf8;
                    }
                    return stringUtf8;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public ByteString getContentBytes() {
                    Object obj = this.f16762new;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.f16762new = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Cif getDescriptorForType() {
                    return PluginProtos.f16742else;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public String getInsertionPoint() {
                    Object obj = this.f16760for;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.f16760for = stringUtf8;
                    }
                    return stringUtf8;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public ByteString getInsertionPointBytes() {
                    Object obj = this.f16760for;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.f16760for = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public String getName() {
                    Object obj = this.f16761if;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.f16761if = stringUtf8;
                    }
                    return stringUtf8;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.f16761if;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.f16761if = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }

                /* renamed from: goto, reason: not valid java name */
                public Cif m20084goto() {
                    this.f16759do &= -2;
                    this.f16761if = Cnew.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public boolean hasContent() {
                    return (this.f16759do & 4) != 0;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public boolean hasInsertionPoint() {
                    return (this.f16759do & 2) != 0;
                }

                @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public boolean hasName() {
                    return (this.f16759do & 1) != 0;
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cnew build() {
                    Cnew cnewBuildPartial = buildPartial();
                    if (cnewBuildPartial.isInitialized()) {
                        return cnewBuildPartial;
                    }
                    throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cnewBuildPartial);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
                /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif setField(Descriptors.Celse celse, Object obj) {
                    return (Cif) super.setField(celse, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return PluginProtos.f16744goto.m19575new(Cnew.class, Cif.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                /* renamed from: native, reason: not valid java name */
                public Cif m20087native(String str) {
                    Objects.requireNonNull(str);
                    this.f16759do |= 2;
                    this.f16760for = str;
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif clear() {
                    super.clear();
                    this.f16761if = "";
                    int i = this.f16759do & (-2);
                    this.f16759do = i;
                    this.f16760for = "";
                    int i2 = i & (-3);
                    this.f16759do = i2;
                    this.f16762new = "";
                    this.f16759do = i2 & (-5);
                    return this;
                }

                /* renamed from: public, reason: not valid java name */
                public Cif m20089public(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.f16759do |= 2;
                    this.f16760for = byteString;
                    onChanged();
                    return this;
                }

                /* renamed from: return, reason: not valid java name */
                public Cif m20090return(String str) {
                    Objects.requireNonNull(str);
                    this.f16759do |= 1;
                    this.f16761if = str;
                    onChanged();
                    return this;
                }

                /* renamed from: static, reason: not valid java name */
                public Cif m20091static(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.f16759do |= 1;
                    this.f16761if = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
                /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
                public final Cif mergeUnknownFields(t1 t1Var) {
                    return (Cif) super.mergeUnknownFields(t1Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
                /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                    return (Cif) super.setRepeatedField(celse, i, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
                /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cif clearOneof(Descriptors.Cbreak cbreak) {
                    return (Cif) super.clearOneof(cbreak);
                }

                /* renamed from: throw, reason: not valid java name */
                public Cif m20095throw(String str) {
                    Objects.requireNonNull(str);
                    this.f16759do |= 4;
                    this.f16762new = str;
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
                /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
                public final Cif setUnknownFields(t1 t1Var) {
                    return (Cif) super.setUnknownFields(t1Var);
                }

                /* renamed from: try, reason: not valid java name */
                public Cif m20097try() {
                    this.f16759do &= -5;
                    this.f16762new = Cnew.getDefaultInstance().getContent();
                    onChanged();
                    return this;
                }

                /* renamed from: while, reason: not valid java name */
                public Cif m20098while(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.f16759do |= 4;
                    this.f16762new = byteString;
                    onChanged();
                    return this;
                }

                private Cif() {
                    this.f16761if = "";
                    this.f16760for = "";
                    this.f16762new = "";
                    maybeForceBuilderInitialization();
                }

                private Cif(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.f16761if = "";
                    this.f16760for = "";
                    this.f16762new = "";
                    maybeForceBuilderInitialization();
                }
            }

            public static Cif newBuilder(Cnew cnew) {
                return f16758do.toBuilder().m20082final(cnew);
            }

            public static Cnew parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
                return PARSER.parseFrom(byteBuffer, cimplements);
            }

            private Cnew(GeneratedMessageV3.Cif<?> cif) {
                super(cif);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Cnew parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
                return (Cnew) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
            }

            public static Cnew parseFrom(ByteString byteString) throws n {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Cnew getDefaultInstanceForType() {
                return f16758do;
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Cif toBuilder() {
                return this == f16758do ? new Cif() : new Cif().m20082final(this);
            }

            public static Cnew parseFrom(ByteString byteString, Cimplements cimplements) throws n {
                return PARSER.parseFrom(byteString, cimplements);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Cif newBuilderForType() {
                return newBuilder();
            }

            private Cnew() {
                this.memoizedIsInitialized = (byte) -1;
                this.name_ = "";
                this.insertionPoint_ = "";
                this.content_ = "";
            }

            public static Cnew parseFrom(byte[] bArr) throws n {
                return PARSER.parseFrom(bArr);
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Cif(builderParent);
            }

            public static Cnew parseFrom(byte[] bArr, Cimplements cimplements) throws n {
                return PARSER.parseFrom(bArr, cimplements);
            }

            public static Cnew parseFrom(InputStream inputStream) throws IOException {
                return (Cnew) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Cnew parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
                return (Cnew) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
            }

            private Cnew(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                this();
                Objects.requireNonNull(cimplements);
                t1.Cif cifM21191this = t1.m21191this();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int iL = codedInputStream.l();
                            if (iL != 0) {
                                if (iL == 10) {
                                    ByteString byteStringMo18443throws = codedInputStream.mo18443throws();
                                    this.bitField0_ = 1 | this.bitField0_;
                                    this.name_ = byteStringMo18443throws;
                                } else if (iL == 18) {
                                    ByteString byteStringMo18443throws2 = codedInputStream.mo18443throws();
                                    this.bitField0_ |= 2;
                                    this.insertionPoint_ = byteStringMo18443throws2;
                                } else if (iL != 122) {
                                    if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                    }
                                } else {
                                    ByteString byteStringMo18443throws3 = codedInputStream.mo18443throws();
                                    this.bitField0_ |= 4;
                                    this.content_ = byteStringMo18443throws3;
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

            public static Cnew parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Cnew) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Cnew parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
                return (Cnew) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
            }
        }

        public static CodeGeneratorResponse getDefaultInstance() {
            return f16749do;
        }

        public static final Descriptors.Cif getDescriptor() {
            return PluginProtos.f16748try;
        }

        public static Cif newBuilder() {
            return f16749do.toBuilder();
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<CodeGeneratorResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorResponse)) {
                return super.equals(obj);
            }
            CodeGeneratorResponse codeGeneratorResponse = (CodeGeneratorResponse) obj;
            if (hasError() != codeGeneratorResponse.hasError()) {
                return false;
            }
            if ((!hasError() || getError().equals(codeGeneratorResponse.getError())) && hasSupportedFeatures() == codeGeneratorResponse.hasSupportedFeatures()) {
                return (!hasSupportedFeatures() || getSupportedFeatures() == codeGeneratorResponse.getSupportedFeatures()) && getFileList().equals(codeGeneratorResponse.getFileList()) && this.unknownFields.equals(codeGeneratorResponse.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.error_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public ByteString getErrorBytes() {
            Object obj = this.error_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.error_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public Cnew getFile(int i) {
            return this.file_.get(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public int getFileCount() {
            return this.file_.size();
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public List<Cnew> getFileList() {
            return this.file_;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public FileOrBuilder getFileOrBuilder(int i) {
            return this.file_.get(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public List<? extends FileOrBuilder> getFileOrBuilderList() {
            return this.file_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CodeGeneratorResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessageV3.computeStringSize(1, this.error_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += Cnative.u(2, this.supportedFeatures_);
            }
            for (int i2 = 0; i2 < this.file_.size(); i2++) {
                iComputeStringSize += Cnative.m20900synchronized(15, this.file_.get(i2));
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public long getSupportedFeatures() {
            return this.supportedFeatures_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public boolean hasSupportedFeatures() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasError()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getError().hashCode();
            }
            if (hasSupportedFeatures()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.m19622native(getSupportedFeatures());
            }
            if (getFileCount() > 0) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getFileList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f16740case.m19575new(CodeGeneratorResponse.class, Cif.class);
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
            return new CodeGeneratorResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(cnative, 1, this.error_);
            }
            if ((this.bitField0_ & 2) != 0) {
                cnative.writeUInt64(2, this.supportedFeatures_);
            }
            for (int i = 0; i < this.file_.size(); i++) {
                cnative.f0(15, this.file_.get(i));
            }
            this.unknownFields.writeTo(cnative);
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$if, reason: invalid class name */
        public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements CodeGeneratorResponseOrBuilder {

            /* renamed from: do, reason: not valid java name */
            private int f16753do;

            /* renamed from: for, reason: not valid java name */
            private long f16754for;

            /* renamed from: if, reason: not valid java name */
            private Object f16755if;

            /* renamed from: new, reason: not valid java name */
            private List<Cnew> f16756new;

            /* renamed from: try, reason: not valid java name */
            private v0<Cnew, Cnew.Cif, FileOrBuilder> f16757try;

            public static final Descriptors.Cif getDescriptor() {
                return PluginProtos.f16748try;
            }

            /* renamed from: import, reason: not valid java name */
            private void m20039import() {
                if ((this.f16753do & 4) == 0) {
                    this.f16756new = new ArrayList(this.f16756new);
                    this.f16753do |= 4;
                }
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m20040static();
                }
            }

            /* renamed from: static, reason: not valid java name */
            private v0<Cnew, Cnew.Cif, FileOrBuilder> m20040static() {
                if (this.f16757try == null) {
                    this.f16757try = new v0<>(this.f16756new, (this.f16753do & 4) != 0, getParentForChildren(), isClean());
                    this.f16756new = null;
                }
                return this.f16757try;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif setField(Descriptors.Celse celse, Object obj) {
                return (Cif) super.setField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
            public CodeGeneratorResponse buildPartial() {
                CodeGeneratorResponse codeGeneratorResponse = new CodeGeneratorResponse(this);
                int i = this.f16753do;
                int i2 = (i & 1) != 0 ? 1 : 0;
                codeGeneratorResponse.error_ = this.f16755if;
                if ((i & 2) != 0) {
                    codeGeneratorResponse.supportedFeatures_ = this.f16754for;
                    i2 |= 2;
                }
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    if ((this.f16753do & 4) != 0) {
                        this.f16756new = Collections.unmodifiableList(this.f16756new);
                        this.f16753do &= -5;
                    }
                    codeGeneratorResponse.file_ = this.f16756new;
                } else {
                    codeGeneratorResponse.file_ = v0Var.m21453case();
                }
                codeGeneratorResponse.bitField0_ = i2;
                onBuilt();
                return codeGeneratorResponse;
            }

            /* renamed from: case, reason: not valid java name */
            public Cnew.Cif m20043case() {
                return (Cnew.Cif) m20040static().m21460for(Cnew.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clear() {
                super.clear();
                this.f16755if = "";
                int i = this.f16753do & (-2);
                this.f16753do = i;
                this.f16754for = 0L;
                this.f16753do = i & (-3);
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    this.f16756new = Collections.emptyList();
                    this.f16753do &= -5;
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            /* renamed from: class, reason: not valid java name */
            public Cif m20045class() {
                this.f16753do &= -2;
                this.f16755if = CodeGeneratorResponse.getDefaultInstance().getError();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clearField(Descriptors.Celse celse) {
                return (Cif) super.clearField(celse);
            }

            /* renamed from: continue, reason: not valid java name */
            public Cif m20047continue(int i, Cnew.Cif cif) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    m20039import();
                    this.f16756new.set(i, cif.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, cif.build());
                }
                return this;
            }

            /* renamed from: default, reason: not valid java name */
            public Cif m20048default(CodeGeneratorResponse codeGeneratorResponse) {
                if (codeGeneratorResponse == CodeGeneratorResponse.getDefaultInstance()) {
                    return this;
                }
                if (codeGeneratorResponse.hasError()) {
                    this.f16753do |= 1;
                    this.f16755if = codeGeneratorResponse.error_;
                    onChanged();
                }
                if (codeGeneratorResponse.hasSupportedFeatures()) {
                    m20057interface(codeGeneratorResponse.getSupportedFeatures());
                }
                if (this.f16757try == null) {
                    if (!codeGeneratorResponse.file_.isEmpty()) {
                        if (this.f16756new.isEmpty()) {
                            this.f16756new = codeGeneratorResponse.file_;
                            this.f16753do &= -5;
                        } else {
                            m20039import();
                            this.f16756new.addAll(codeGeneratorResponse.file_);
                        }
                        onChanged();
                    }
                } else if (!codeGeneratorResponse.file_.isEmpty()) {
                    if (this.f16757try.m21465public()) {
                        this.f16757try.m21461goto();
                        this.f16757try = null;
                        this.f16756new = codeGeneratorResponse.file_;
                        this.f16753do &= -5;
                        this.f16757try = GeneratedMessageV3.alwaysUseFieldBuilders ? m20040static() : null;
                    } else {
                        this.f16757try.m21457do(codeGeneratorResponse.file_);
                    }
                }
                mergeUnknownFields(codeGeneratorResponse.unknownFields);
                onChanged();
                return this;
            }

            /* renamed from: do, reason: not valid java name */
            public Cif m20049do(Iterable<? extends Cnew> iterable) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    m20039import();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16756new);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            /* renamed from: else, reason: not valid java name */
            public Cnew.Cif m20050else(int i) {
                return (Cnew.Cif) m20040static().m21462if(i, Cnew.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
            public final Cif mergeUnknownFields(t1 t1Var) {
                return (Cif) super.mergeUnknownFields(t1Var);
            }

            /* renamed from: final, reason: not valid java name */
            public Cif m20052final() {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    this.f16756new = Collections.emptyList();
                    this.f16753do &= -5;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            /* renamed from: finally, reason: not valid java name */
            public Cif m20053finally(int i) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    m20039import();
                    this.f16756new.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            /* renamed from: for, reason: not valid java name */
            public Cif m20054for(int i, Cnew cnew) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    Objects.requireNonNull(cnew);
                    m20039import();
                    this.f16756new.add(i, cnew);
                    onChanged();
                } else {
                    v0Var.m21464new(i, cnew);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return PluginProtos.f16748try;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public String getError() {
                Object obj = this.f16755if;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f16755if = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public ByteString getErrorBytes() {
                Object obj = this.f16755if;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f16755if = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public Cnew getFile(int i) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                return v0Var == null ? this.f16756new.get(i) : (Cnew) v0Var.m21459final(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public int getFileCount() {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                return v0Var == null ? this.f16756new.size() : v0Var.m21456const();
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public List<Cnew> getFileList() {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                return v0Var == null ? Collections.unmodifiableList(this.f16756new) : v0Var.m21468throw();
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public FileOrBuilder getFileOrBuilder(int i) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                return v0Var == null ? this.f16756new.get(i) : (FileOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public List<? extends FileOrBuilder> getFileOrBuilderList() {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16756new);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public long getSupportedFeatures() {
                return this.f16754for;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Cif) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public boolean hasError() {
                return (this.f16753do & 1) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public boolean hasSupportedFeatures() {
                return (this.f16753do & 2) != 0;
            }

            /* renamed from: if, reason: not valid java name */
            public Cif m20056if(int i, Cnew.Cif cif) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    m20039import();
                    this.f16756new.add(i, cif.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, cif.build());
                }
                return this;
            }

            /* renamed from: interface, reason: not valid java name */
            public Cif m20057interface(long j) {
                this.f16753do |= 2;
                this.f16754for = j;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f16740case.m19575new(CodeGeneratorResponse.class, Cif.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
            public CodeGeneratorResponse getDefaultInstanceForType() {
                return CodeGeneratorResponse.getDefaultInstance();
            }

            /* renamed from: new, reason: not valid java name */
            public Cif m20059new(Cnew.Cif cif) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    m20039import();
                    this.f16756new.add(cif.build());
                    onChanged();
                } else {
                    v0Var.m21469try(cif.build());
                }
                return this;
            }

            /* renamed from: package, reason: not valid java name */
            public Cif m20060package(String str) {
                Objects.requireNonNull(str);
                this.f16753do |= 1;
                this.f16755if = str;
                onChanged();
                return this;
            }

            /* renamed from: private, reason: not valid java name */
            public Cif m20061private(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f16753do |= 1;
                this.f16755if = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
            public final Cif setUnknownFields(t1 t1Var) {
                return (Cif) super.setUnknownFields(t1Var);
            }

            /* renamed from: public, reason: not valid java name */
            public Cnew.Cif m20063public(int i) {
                return (Cnew.Cif) m20040static().m21454catch(i);
            }

            /* renamed from: return, reason: not valid java name */
            public List<Cnew.Cif> m20064return() {
                return m20040static().m21455class();
            }

            /* renamed from: strictfp, reason: not valid java name */
            public Cif m20065strictfp(int i, Cnew cnew) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    Objects.requireNonNull(cnew);
                    m20039import();
                    this.f16756new.set(i, cnew);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, cnew);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clearOneof(Descriptors.Cbreak cbreak) {
                return (Cif) super.clearOneof(cbreak);
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                CodeGeneratorResponse codeGeneratorResponse = null;
                try {
                    try {
                        CodeGeneratorResponse partialFrom = CodeGeneratorResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (partialFrom != null) {
                            m20048default(partialFrom);
                        }
                        return this;
                    } catch (n e) {
                        CodeGeneratorResponse codeGeneratorResponse2 = (CodeGeneratorResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            codeGeneratorResponse = codeGeneratorResponse2;
                            if (codeGeneratorResponse != null) {
                                m20048default(codeGeneratorResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (codeGeneratorResponse != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
            public CodeGeneratorResponse build() {
                CodeGeneratorResponse codeGeneratorResponseBuildPartial = buildPartial();
                if (codeGeneratorResponseBuildPartial.isInitialized()) {
                    return codeGeneratorResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) codeGeneratorResponseBuildPartial);
            }

            /* renamed from: throw, reason: not valid java name */
            public Cif m20069throw() {
                this.f16753do &= -3;
                this.f16754for = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif mergeFrom(Message message) {
                if (message instanceof CodeGeneratorResponse) {
                    return m20048default((CodeGeneratorResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            /* renamed from: try, reason: not valid java name */
            public Cif m20071try(Cnew cnew) {
                v0<Cnew, Cnew.Cif, FileOrBuilder> v0Var = this.f16757try;
                if (v0Var == null) {
                    Objects.requireNonNull(cnew);
                    m20039import();
                    this.f16756new.add(cnew);
                    onChanged();
                } else {
                    v0Var.m21469try(cnew);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (Cif) super.setRepeatedField(celse, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif mo18392clone() {
                return (Cif) super.mo18392clone();
            }

            private Cif() {
                this.f16755if = "";
                this.f16756new = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Cif(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f16755if = "";
                this.f16756new = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        public static Cif newBuilder(CodeGeneratorResponse codeGeneratorResponse) {
            return f16749do.toBuilder().m20048default(codeGeneratorResponse);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private CodeGeneratorResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CodeGeneratorResponse getDefaultInstanceForType() {
            return f16749do;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Cif toBuilder() {
            return this == f16749do ? new Cif() : new Cif().m20048default(this);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Cif newBuilderForType() {
            return newBuilder();
        }

        private CodeGeneratorResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.error_ = "";
            this.file_ = Collections.emptyList();
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Cif(builderParent);
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 10) {
                                ByteString byteStringMo18443throws = codedInputStream.mo18443throws();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.error_ = byteStringMo18443throws;
                            } else if (iL == 16) {
                                this.bitField0_ |= 2;
                                this.supportedFeatures_ = codedInputStream.n();
                            } else if (iL != 122) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                if ((i & 4) == 0) {
                                    this.file_ = new ArrayList();
                                    i |= 4;
                                }
                                this.file_.add(codedInputStream.mo18430interface(Cnew.PARSER, cimplements));
                            }
                        }
                        z = true;
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 4) != 0) {
                        this.file_ = Collections.unmodifiableList(this.file_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static CodeGeneratorResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CodeGeneratorResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface CodeGeneratorResponseOrBuilder extends MessageOrBuilder {
        String getError();

        ByteString getErrorBytes();

        CodeGeneratorResponse.Cnew getFile(int i);

        int getFileCount();

        List<CodeGeneratorResponse.Cnew> getFileList();

        CodeGeneratorResponse.FileOrBuilder getFileOrBuilder(int i);

        List<? extends CodeGeneratorResponse.FileOrBuilder> getFileOrBuilderList();

        long getSupportedFeatures();

        boolean hasError();

        boolean hasSupportedFeatures();
    }

    public interface VersionOrBuilder extends MessageOrBuilder {
        int getMajor();

        int getMinor();

        int getPatch();

        String getSuffix();

        ByteString getSuffixBytes();

        boolean hasMajor();

        boolean hasMinor();

        boolean hasPatch();

        boolean hasSuffix();
    }

    /* renamed from: com.google.protobuf.compiler.PluginProtos$for, reason: invalid class name */
    public static final class Cfor extends GeneratedMessageV3 implements VersionOrBuilder {
        public static final int MAJOR_FIELD_NUMBER = 1;
        public static final int MINOR_FIELD_NUMBER = 2;
        public static final int PATCH_FIELD_NUMBER = 3;
        public static final int SUFFIX_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int major_;
        private byte memoizedIsInitialized;
        private int minor_;
        private int patch_;
        private volatile Object suffix_;

        /* renamed from: do, reason: not valid java name */
        private static final Cfor f16763do = new Cfor();

        @Deprecated
        public static final Parser<Cfor> PARSER = new Cdo();

        /* renamed from: com.google.protobuf.compiler.PluginProtos$for$do, reason: invalid class name */
        public class Cdo extends com.google.protobuf.Cdo<Cfor> {
            @Override // com.google.protobuf.Parser
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfor parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new Cfor(codedInputStream, cimplements);
            }
        }

        public static Cfor getDefaultInstance() {
            return f16763do;
        }

        public static final Descriptors.Cif getDescriptor() {
            return PluginProtos.f16741do;
        }

        public static Cif newBuilder() {
            return f16763do.toBuilder();
        }

        public static Cfor parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Cfor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Cfor parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Cfor> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cfor)) {
                return super.equals(obj);
            }
            Cfor cfor = (Cfor) obj;
            if (hasMajor() != cfor.hasMajor()) {
                return false;
            }
            if ((hasMajor() && getMajor() != cfor.getMajor()) || hasMinor() != cfor.hasMinor()) {
                return false;
            }
            if ((hasMinor() && getMinor() != cfor.getMinor()) || hasPatch() != cfor.hasPatch()) {
                return false;
            }
            if ((!hasPatch() || getPatch() == cfor.getPatch()) && hasSuffix() == cfor.hasSuffix()) {
                return (!hasSuffix() || getSuffix().equals(cfor.getSuffix())) && this.unknownFields.equals(cfor.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public int getMajor() {
            return this.major_;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public int getMinor() {
            return this.minor_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Cfor> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public int getPatch() {
            return this.patch_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iM20874abstract = (this.bitField0_ & 1) != 0 ? 0 + Cnative.m20874abstract(1, this.major_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iM20874abstract += Cnative.m20874abstract(2, this.minor_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iM20874abstract += Cnative.m20874abstract(3, this.patch_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(4, this.suffix_);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public String getSuffix() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.suffix_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public ByteString getSuffixBytes() {
            Object obj = this.suffix_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.suffix_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public boolean hasMajor() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public boolean hasMinor() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public boolean hasPatch() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
        public boolean hasSuffix() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasMajor()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getMajor();
            }
            if (hasMinor()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMinor();
            }
            if (hasPatch()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPatch();
            }
            if (hasSuffix()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getSuffix().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f16745if.m19575new(Cfor.class, Cif.class);
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
            return new Cfor();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                cnative.writeInt32(1, this.major_);
            }
            if ((this.bitField0_ & 2) != 0) {
                cnative.writeInt32(2, this.minor_);
            }
            if ((this.bitField0_ & 4) != 0) {
                cnative.writeInt32(3, this.patch_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessageV3.writeString(cnative, 4, this.suffix_);
            }
            this.unknownFields.writeTo(cnative);
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$for$if, reason: invalid class name */
        public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements VersionOrBuilder {

            /* renamed from: do, reason: not valid java name */
            private int f16764do;

            /* renamed from: for, reason: not valid java name */
            private int f16765for;

            /* renamed from: if, reason: not valid java name */
            private int f16766if;

            /* renamed from: new, reason: not valid java name */
            private int f16767new;

            /* renamed from: try, reason: not valid java name */
            private Object f16768try;

            public static final Descriptors.Cif getDescriptor() {
                return PluginProtos.f16741do;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            /* renamed from: break, reason: not valid java name */
            public Cif m20100break() {
                this.f16764do &= -9;
                this.f16768try = Cfor.getDefaultInstance().getSuffix();
                onChanged();
                return this;
            }

            /* renamed from: case, reason: not valid java name */
            public Cif m20101case() {
                this.f16764do &= -2;
                this.f16766if = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif mo18392clone() {
                return (Cif) super.mo18392clone();
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfor getDefaultInstanceForType() {
                return Cfor.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                Cfor cfor = null;
                try {
                    try {
                        Cfor partialFrom = Cfor.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (partialFrom != null) {
                            m20117super(partialFrom);
                        }
                        return this;
                    } catch (n e) {
                        Cfor cfor2 = (Cfor) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            cfor = cfor2;
                            if (cfor != null) {
                                m20117super(cfor);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cfor != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Cif) super.addRepeatedField(celse, obj);
            }

            /* renamed from: else, reason: not valid java name */
            public Cif m20106else() {
                this.f16764do &= -3;
                this.f16765for = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif mergeFrom(Message message) {
                if (message instanceof Cfor) {
                    return m20117super((Cfor) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfor buildPartial() {
                int i;
                Cfor cfor = new Cfor(this);
                int i2 = this.f16764do;
                if ((i2 & 1) != 0) {
                    cfor.major_ = this.f16766if;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cfor.minor_ = this.f16765for;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cfor.patch_ = this.f16767new;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    i |= 8;
                }
                cfor.suffix_ = this.f16768try;
                cfor.bitField0_ = i;
                onBuilt();
                return cfor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return PluginProtos.f16741do;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public int getMajor() {
                return this.f16766if;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public int getMinor() {
                return this.f16765for;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public int getPatch() {
                return this.f16767new;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public String getSuffix() {
                Object obj = this.f16768try;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f16768try = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public ByteString getSuffixBytes() {
                Object obj = this.f16768try;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f16768try = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clearOneof(Descriptors.Cbreak cbreak) {
                return (Cif) super.clearOneof(cbreak);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public boolean hasMajor() {
                return (this.f16764do & 1) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public boolean hasMinor() {
                return (this.f16764do & 2) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public boolean hasPatch() {
                return (this.f16764do & 4) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.VersionOrBuilder
            public boolean hasSuffix() {
                return (this.f16764do & 8) != 0;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfor build() {
                Cfor cforBuildPartial = buildPartial();
                if (cforBuildPartial.isInitialized()) {
                    return cforBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cforBuildPartial);
            }

            /* renamed from: import, reason: not valid java name */
            public Cif m20111import(int i) {
                this.f16764do |= 1;
                this.f16766if = i;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f16745if.m19575new(Cfor.class, Cif.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: native, reason: not valid java name */
            public Cif m20112native(int i) {
                this.f16764do |= 2;
                this.f16765for = i;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clear() {
                super.clear();
                this.f16766if = 0;
                int i = this.f16764do & (-2);
                this.f16764do = i;
                this.f16765for = 0;
                int i2 = i & (-3);
                this.f16764do = i2;
                this.f16767new = 0;
                int i3 = i2 & (-5);
                this.f16764do = i3;
                this.f16768try = "";
                this.f16764do = i3 & (-9);
                return this;
            }

            /* renamed from: public, reason: not valid java name */
            public Cif m20114public(int i) {
                this.f16764do |= 4;
                this.f16767new = i;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (Cif) super.setRepeatedField(celse, i, obj);
            }

            /* renamed from: static, reason: not valid java name */
            public Cif m20116static(String str) {
                Objects.requireNonNull(str);
                this.f16764do |= 8;
                this.f16768try = str;
                onChanged();
                return this;
            }

            /* renamed from: super, reason: not valid java name */
            public Cif m20117super(Cfor cfor) {
                if (cfor == Cfor.getDefaultInstance()) {
                    return this;
                }
                if (cfor.hasMajor()) {
                    m20111import(cfor.getMajor());
                }
                if (cfor.hasMinor()) {
                    m20112native(cfor.getMinor());
                }
                if (cfor.hasPatch()) {
                    m20114public(cfor.getPatch());
                }
                if (cfor.hasSuffix()) {
                    this.f16764do |= 8;
                    this.f16768try = cfor.suffix_;
                    onChanged();
                }
                mergeUnknownFields(cfor.unknownFields);
                onChanged();
                return this;
            }

            /* renamed from: switch, reason: not valid java name */
            public Cif m20118switch(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f16764do |= 8;
                this.f16768try = byteString;
                onChanged();
                return this;
            }

            /* renamed from: this, reason: not valid java name */
            public Cif m20119this() {
                this.f16764do &= -5;
                this.f16767new = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
            public final Cif mergeUnknownFields(t1 t1Var) {
                return (Cif) super.mergeUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
            public final Cif setUnknownFields(t1 t1Var) {
                return (Cif) super.setUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif clearField(Descriptors.Celse celse) {
                return (Cif) super.clearField(celse);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif setField(Descriptors.Celse celse, Object obj) {
                return (Cif) super.setField(celse, obj);
            }

            private Cif() {
                this.f16768try = "";
                maybeForceBuilderInitialization();
            }

            private Cif(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f16768try = "";
                maybeForceBuilderInitialization();
            }
        }

        public static Cif newBuilder(Cfor cfor) {
            return f16763do.toBuilder().m20117super(cfor);
        }

        public static Cfor parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private Cfor(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Cfor parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (Cfor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static Cfor parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Cfor getDefaultInstanceForType() {
            return f16763do;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Cif toBuilder() {
            return this == f16763do ? new Cif() : new Cif().m20117super(this);
        }

        public static Cfor parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Cif newBuilderForType() {
            return newBuilder();
        }

        private Cfor() {
            this.memoizedIsInitialized = (byte) -1;
            this.suffix_ = "";
        }

        public static Cfor parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Cif(builderParent);
        }

        public static Cfor parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static Cfor parseFrom(InputStream inputStream) throws IOException {
            return (Cfor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Cfor(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 8) {
                                this.bitField0_ |= 1;
                                this.major_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 16) {
                                this.bitField0_ |= 2;
                                this.minor_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 24) {
                                this.bitField0_ |= 4;
                                this.patch_ = codedInputStream.mo18439strictfp();
                            } else if (iL != 34) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                ByteString byteStringMo18443throws = codedInputStream.mo18443throws();
                                this.bitField0_ |= 8;
                                this.suffix_ = byteStringMo18443throws;
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

        public static Cfor parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (Cfor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static Cfor parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Cfor) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Cfor parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (Cfor) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    /* renamed from: com.google.protobuf.compiler.PluginProtos$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3 implements CodeGeneratorRequestOrBuilder {
        public static final int COMPILER_VERSION_FIELD_NUMBER = 3;
        public static final int FILE_TO_GENERATE_FIELD_NUMBER = 1;
        public static final int PARAMETER_FIELD_NUMBER = 2;
        public static final int PROTO_FILE_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Cfor compilerVersion_;
        private LazyStringList fileToGenerate_;
        private byte memoizedIsInitialized;
        private volatile Object parameter_;
        private List<DescriptorProtos.Cgoto> protoFile_;

        /* renamed from: do, reason: not valid java name */
        private static final Cif f16769do = new Cif();

        @Deprecated
        public static final Parser<Cif> PARSER = new Cdo();

        /* renamed from: com.google.protobuf.compiler.PluginProtos$if$do, reason: invalid class name */
        public class Cdo extends com.google.protobuf.Cdo<Cif> {
            @Override // com.google.protobuf.Parser
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new Cif(codedInputStream, cimplements);
            }
        }

        public static Cif getDefaultInstance() {
            return f16769do;
        }

        public static final Descriptors.Cif getDescriptor() {
            return PluginProtos.f16743for;
        }

        public static C0162if newBuilder() {
            return f16769do.toBuilder();
        }

        public static Cif parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Cif) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Cif parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Cif> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cif)) {
                return super.equals(obj);
            }
            Cif cif = (Cif) obj;
            if (!getFileToGenerateList().equals(cif.getFileToGenerateList()) || hasParameter() != cif.hasParameter()) {
                return false;
            }
            if ((!hasParameter() || getParameter().equals(cif.getParameter())) && getProtoFileList().equals(cif.getProtoFileList()) && hasCompilerVersion() == cif.hasCompilerVersion()) {
                return (!hasCompilerVersion() || getCompilerVersion().equals(cif.getCompilerVersion())) && this.unknownFields.equals(cif.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public Cfor getCompilerVersion() {
            Cfor cfor = this.compilerVersion_;
            return cfor == null ? Cfor.getDefaultInstance() : cfor;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public VersionOrBuilder getCompilerVersionOrBuilder() {
            Cfor cfor = this.compilerVersion_;
            return cfor == null ? Cfor.getDefaultInstance() : cfor;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public String getFileToGenerate(int i) {
            return this.fileToGenerate_.get(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public ByteString getFileToGenerateBytes(int i) {
            return this.fileToGenerate_.getByteString(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public int getFileToGenerateCount() {
            return this.fileToGenerate_.size();
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public String getParameter() {
            Object obj = this.parameter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.parameter_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public ByteString getParameterBytes() {
            Object obj = this.parameter_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parameter_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Cif> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public DescriptorProtos.Cgoto getProtoFile(int i) {
            return this.protoFile_.get(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public int getProtoFileCount() {
            return this.protoFile_.size();
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public List<DescriptorProtos.Cgoto> getProtoFileList() {
            return this.protoFile_;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i) {
            return this.protoFile_.get(i);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList() {
            return this.protoFile_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSizeNoTag = 0;
            for (int i2 = 0; i2 < this.fileToGenerate_.size(); i2++) {
                iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.fileToGenerate_.getRaw(i2));
            }
            int size = iComputeStringSizeNoTag + 0 + (getFileToGenerateList().size() * 1);
            if ((this.bitField0_ & 1) != 0) {
                size += GeneratedMessageV3.computeStringSize(2, this.parameter_);
            }
            if ((this.bitField0_ & 2) != 0) {
                size += Cnative.m20900synchronized(3, getCompilerVersion());
            }
            for (int i3 = 0; i3 < this.protoFile_.size(); i3++) {
                size += Cnative.m20900synchronized(15, this.protoFile_.get(i3));
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public boolean hasCompilerVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public boolean hasParameter() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getFileToGenerateCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getFileToGenerateList().hashCode();
            }
            if (hasParameter()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getParameter().hashCode();
            }
            if (getProtoFileCount() > 0) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getProtoFileList().hashCode();
            }
            if (hasCompilerVersion()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCompilerVersion().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f16746new.m19575new(Cif.class, C0162if.class);
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
            for (int i = 0; i < getProtoFileCount(); i++) {
                if (!getProtoFile(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.Ctry ctry) {
            return new Cif();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            for (int i = 0; i < this.fileToGenerate_.size(); i++) {
                GeneratedMessageV3.writeString(cnative, 1, this.fileToGenerate_.getRaw(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(cnative, 2, this.parameter_);
            }
            if ((this.bitField0_ & 2) != 0) {
                cnative.f0(3, getCompilerVersion());
            }
            for (int i2 = 0; i2 < this.protoFile_.size(); i2++) {
                cnative.f0(15, this.protoFile_.get(i2));
            }
            this.unknownFields.writeTo(cnative);
        }

        /* renamed from: com.google.protobuf.compiler.PluginProtos$if$if, reason: invalid class name and collision with other inner class name */
        public static final class C0162if extends GeneratedMessageV3.Cif<C0162if> implements CodeGeneratorRequestOrBuilder {

            /* renamed from: case, reason: not valid java name */
            private Cfor f16770case;

            /* renamed from: do, reason: not valid java name */
            private int f16771do;

            /* renamed from: else, reason: not valid java name */
            private a1<Cfor, Cfor.Cif, VersionOrBuilder> f16772else;

            /* renamed from: for, reason: not valid java name */
            private Object f16773for;

            /* renamed from: if, reason: not valid java name */
            private LazyStringList f16774if;

            /* renamed from: new, reason: not valid java name */
            private List<DescriptorProtos.Cgoto> f16775new;

            /* renamed from: try, reason: not valid java name */
            private v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> f16776try;

            /* renamed from: abstract, reason: not valid java name */
            private v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> m20125abstract() {
                if (this.f16776try == null) {
                    this.f16776try = new v0<>(this.f16775new, (this.f16771do & 4) != 0, getParentForChildren(), isClean());
                    this.f16775new = null;
                }
                return this.f16776try;
            }

            /* renamed from: default, reason: not valid java name */
            private a1<Cfor, Cfor.Cif, VersionOrBuilder> m20126default() {
                if (this.f16772else == null) {
                    this.f16772else = new a1<>(getCompilerVersion(), getParentForChildren(), isClean());
                    this.f16770case = null;
                }
                return this.f16772else;
            }

            public static final Descriptors.Cif getDescriptor() {
                return PluginProtos.f16743for;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m20125abstract();
                    m20126default();
                }
            }

            /* renamed from: static, reason: not valid java name */
            private void m20127static() {
                if ((this.f16771do & 1) == 0) {
                    this.f16774if = new s(this.f16774if);
                    this.f16771do |= 1;
                }
            }

            /* renamed from: switch, reason: not valid java name */
            private void m20128switch() {
                if ((this.f16771do & 4) == 0) {
                    this.f16775new = new ArrayList(this.f16775new);
                    this.f16771do |= 4;
                }
            }

            public C0162if a(int i, String str) {
                Objects.requireNonNull(str);
                m20127static();
                this.f16774if.set(i, (int) str);
                onChanged();
                return this;
            }

            public C0162if b(String str) {
                Objects.requireNonNull(str);
                this.f16771do |= 2;
                this.f16773for = str;
                onChanged();
                return this;
            }

            /* renamed from: break, reason: not valid java name */
            public DescriptorProtos.Cgoto.Cif m20129break(int i) {
                return (DescriptorProtos.Cgoto.Cif) m20125abstract().m21462if(i, DescriptorProtos.Cgoto.getDefaultInstance());
            }

            public C0162if c(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f16771do |= 2;
                this.f16773for = byteString;
                onChanged();
                return this;
            }

            /* renamed from: case, reason: not valid java name */
            public C0162if m20130case(int i, DescriptorProtos.Cgoto cgoto) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    Objects.requireNonNull(cgoto);
                    m20128switch();
                    this.f16775new.add(i, cgoto);
                    onChanged();
                } else {
                    v0Var.m21464new(i, cgoto);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (C0162if) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif build() {
                Cif cifBuildPartial = buildPartial();
                if (cifBuildPartial.isInitialized()) {
                    return cifBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cifBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif buildPartial() {
                Cif cif = new Cif(this);
                int i = this.f16771do;
                if ((i & 1) != 0) {
                    this.f16774if = this.f16774if.getUnmodifiableView();
                    this.f16771do &= -2;
                }
                cif.fileToGenerate_ = this.f16774if;
                int i2 = (i & 2) != 0 ? 1 : 0;
                cif.parameter_ = this.f16773for;
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    if ((this.f16771do & 4) != 0) {
                        this.f16775new = Collections.unmodifiableList(this.f16775new);
                        this.f16771do &= -5;
                    }
                    cif.protoFile_ = this.f16775new;
                } else {
                    cif.protoFile_ = v0Var.m21453case();
                }
                if ((i & 8) != 0) {
                    a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                    if (a1Var == null) {
                        cif.compilerVersion_ = this.f16770case;
                    } else {
                        cif.compilerVersion_ = (Cfor) a1Var.m19686do();
                    }
                    i2 |= 2;
                }
                cif.bitField0_ = i2;
                onBuilt();
                return cif;
            }

            /* renamed from: continue, reason: not valid java name */
            public C0162if m20134continue(Cfor cfor) {
                Cfor cfor2;
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var == null) {
                    if ((this.f16771do & 8) == 0 || (cfor2 = this.f16770case) == null || cfor2 == Cfor.getDefaultInstance()) {
                        this.f16770case = cfor;
                    } else {
                        this.f16770case = Cfor.newBuilder(this.f16770case).m20117super(cfor).buildPartial();
                    }
                    onChanged();
                } else {
                    a1Var.m19687else(cfor);
                }
                this.f16771do |= 8;
                return this;
            }

            public C0162if d(int i, DescriptorProtos.Cgoto.Cif cif) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    m20128switch();
                    this.f16775new.set(i, cif.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, cif.build());
                }
                return this;
            }

            /* renamed from: do, reason: not valid java name */
            public C0162if m20135do(Iterable<String> iterable) {
                m20127static();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16774if);
                onChanged();
                return this;
            }

            public C0162if e(int i, DescriptorProtos.Cgoto cgoto) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    Objects.requireNonNull(cgoto);
                    m20128switch();
                    this.f16775new.set(i, cgoto);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, cgoto);
                }
                return this;
            }

            /* renamed from: else, reason: not valid java name */
            public C0162if m20136else(DescriptorProtos.Cgoto.Cif cif) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    m20128switch();
                    this.f16775new.add(cif.build());
                    onChanged();
                } else {
                    v0Var.m21469try(cif.build());
                }
                return this;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif getDefaultInstanceForType() {
                return Cif.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public C0162if setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (C0162if) super.setRepeatedField(celse, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if clear() {
                super.clear();
                this.f16774if = s.f17207try;
                int i = this.f16771do & (-2);
                this.f16771do = i;
                this.f16773for = "";
                this.f16771do = i & (-3);
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    this.f16775new = Collections.emptyList();
                    this.f16771do &= -5;
                } else {
                    v0Var.m21458else();
                }
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var == null) {
                    this.f16770case = null;
                } else {
                    a1Var.m19689if();
                }
                this.f16771do &= -9;
                return this;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
            public ProtocolStringList getFileToGenerateList() {
                return this.f16774if.getUnmodifiableView();
            }

            /* renamed from: for, reason: not valid java name */
            public C0162if m20140for(String str) {
                Objects.requireNonNull(str);
                m20127static();
                this.f16774if.add((LazyStringList) str);
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public final C0162if setUnknownFields(t1 t1Var) {
                return (C0162if) super.setUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public Cfor getCompilerVersion() {
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var != null) {
                    return (Cfor) a1Var.m19692try();
                }
                Cfor cfor = this.f16770case;
                return cfor == null ? Cfor.getDefaultInstance() : cfor;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public VersionOrBuilder getCompilerVersionOrBuilder() {
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var != null) {
                    return (VersionOrBuilder) a1Var.m19685case();
                }
                Cfor cfor = this.f16770case;
                return cfor == null ? Cfor.getDefaultInstance() : cfor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return PluginProtos.f16743for;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public String getFileToGenerate(int i) {
                return this.f16774if.get(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public ByteString getFileToGenerateBytes(int i) {
                return this.f16774if.getByteString(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public int getFileToGenerateCount() {
                return this.f16774if.size();
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public String getParameter() {
                Object obj = this.f16773for;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f16773for = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public ByteString getParameterBytes() {
                Object obj = this.f16773for;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f16773for = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public DescriptorProtos.Cgoto getProtoFile(int i) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                return v0Var == null ? this.f16775new.get(i) : (DescriptorProtos.Cgoto) v0Var.m21459final(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public int getProtoFileCount() {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                return v0Var == null ? this.f16775new.size() : v0Var.m21456const();
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public List<DescriptorProtos.Cgoto> getProtoFileList() {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                return v0Var == null ? Collections.unmodifiableList(this.f16775new) : v0Var.m21468throw();
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                return v0Var == null ? this.f16775new.get(i) : (DescriptorProtos.FileDescriptorProtoOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList() {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16775new);
            }

            /* renamed from: goto, reason: not valid java name */
            public C0162if m20141goto(DescriptorProtos.Cgoto cgoto) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    Objects.requireNonNull(cgoto);
                    m20128switch();
                    this.f16775new.add(cgoto);
                    onChanged();
                } else {
                    v0Var.m21469try(cgoto);
                }
                return this;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public boolean hasCompilerVersion() {
                return (this.f16771do & 8) != 0;
            }

            @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public boolean hasParameter() {
                return (this.f16771do & 2) != 0;
            }

            /* renamed from: if, reason: not valid java name */
            public C0162if m20142if(Iterable<? extends DescriptorProtos.Cgoto> iterable) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    m20128switch();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16775new);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            /* renamed from: implements, reason: not valid java name */
            public C0162if m20143implements(Cfor.Cif cif) {
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var == null) {
                    this.f16770case = cif.build();
                    onChanged();
                } else {
                    a1Var.m19691this(cif.build());
                }
                this.f16771do |= 8;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if clearOneof(Descriptors.Cbreak cbreak) {
                return (C0162if) super.clearOneof(cbreak);
            }

            /* renamed from: instanceof, reason: not valid java name */
            public C0162if m20145instanceof(Cfor cfor) {
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var == null) {
                    Objects.requireNonNull(cfor);
                    this.f16770case = cfor;
                    onChanged();
                } else {
                    a1Var.m19691this(cfor);
                }
                this.f16771do |= 8;
                return this;
            }

            /* renamed from: interface, reason: not valid java name */
            public C0162if m20146interface(Cif cif) {
                if (cif == Cif.getDefaultInstance()) {
                    return this;
                }
                if (!cif.fileToGenerate_.isEmpty()) {
                    if (this.f16774if.isEmpty()) {
                        this.f16774if = cif.fileToGenerate_;
                        this.f16771do &= -2;
                    } else {
                        m20127static();
                        this.f16774if.addAll(cif.fileToGenerate_);
                    }
                    onChanged();
                }
                if (cif.hasParameter()) {
                    this.f16771do |= 2;
                    this.f16773for = cif.parameter_;
                    onChanged();
                }
                if (this.f16776try == null) {
                    if (!cif.protoFile_.isEmpty()) {
                        if (this.f16775new.isEmpty()) {
                            this.f16775new = cif.protoFile_;
                            this.f16771do &= -5;
                        } else {
                            m20128switch();
                            this.f16775new.addAll(cif.protoFile_);
                        }
                        onChanged();
                    }
                } else if (!cif.protoFile_.isEmpty()) {
                    if (this.f16776try.m21465public()) {
                        this.f16776try.m21461goto();
                        this.f16776try = null;
                        this.f16775new = cif.protoFile_;
                        this.f16771do &= -5;
                        this.f16776try = GeneratedMessageV3.alwaysUseFieldBuilders ? m20125abstract() : null;
                    } else {
                        this.f16776try.m21457do(cif.protoFile_);
                    }
                }
                if (cif.hasCompilerVersion()) {
                    m20134continue(cif.getCompilerVersion());
                }
                mergeUnknownFields(cif.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f16746new.m19575new(Cif.class, C0162if.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getProtoFileCount(); i++) {
                    if (!getProtoFile(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            /* renamed from: native, reason: not valid java name */
            public C0162if m20147native() {
                this.f16771do &= -3;
                this.f16773for = Cif.getDefaultInstance().getParameter();
                onChanged();
                return this;
            }

            /* renamed from: new, reason: not valid java name */
            public C0162if m20148new(ByteString byteString) {
                Objects.requireNonNull(byteString);
                m20127static();
                this.f16774if.add(byteString);
                onChanged();
                return this;
            }

            /* renamed from: package, reason: not valid java name */
            public DescriptorProtos.Cgoto.Cif m20149package(int i) {
                return (DescriptorProtos.Cgoto.Cif) m20125abstract().m21454catch(i);
            }

            /* renamed from: private, reason: not valid java name */
            public List<DescriptorProtos.Cgoto.Cif> m20150private() {
                return m20125abstract().m21455class();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
            public final C0162if mergeUnknownFields(t1 t1Var) {
                return (C0162if) super.mergeUnknownFields(t1Var);
            }

            /* renamed from: public, reason: not valid java name */
            public C0162if m20152public() {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    this.f16775new = Collections.emptyList();
                    this.f16771do &= -5;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if mo18392clone() {
                return (C0162if) super.mo18392clone();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public C0162if mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                Cif cif = null;
                try {
                    try {
                        Cif partialFrom = Cif.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (partialFrom != null) {
                            m20146interface(partialFrom);
                        }
                        return this;
                    } catch (n e) {
                        Cif cif2 = (Cif) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            cif = cif2;
                            if (cif != null) {
                                m20146interface(cif);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cif != null) {
                    }
                    throw th;
                }
            }

            /* renamed from: super, reason: not valid java name */
            public C0162if m20155super() {
                a1<Cfor, Cfor.Cif, VersionOrBuilder> a1Var = this.f16772else;
                if (a1Var == null) {
                    this.f16770case = null;
                    onChanged();
                } else {
                    a1Var.m19689if();
                }
                this.f16771do &= -9;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if setField(Descriptors.Celse celse, Object obj) {
                return (C0162if) super.setField(celse, obj);
            }

            /* renamed from: this, reason: not valid java name */
            public DescriptorProtos.Cgoto.Cif m20157this() {
                return (DescriptorProtos.Cgoto.Cif) m20125abstract().m21460for(DescriptorProtos.Cgoto.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if clearField(Descriptors.Celse celse) {
                return (C0162if) super.clearField(celse);
            }

            /* renamed from: throws, reason: not valid java name */
            public Cfor.Cif m20159throws() {
                this.f16771do |= 8;
                onChanged();
                return (Cfor.Cif) m20126default().m19690new();
            }

            /* renamed from: transient, reason: not valid java name */
            public C0162if m20160transient(int i) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    m20128switch();
                    this.f16775new.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            /* renamed from: try, reason: not valid java name */
            public C0162if m20161try(int i, DescriptorProtos.Cgoto.Cif cif) {
                v0<DescriptorProtos.Cgoto, DescriptorProtos.Cgoto.Cif, DescriptorProtos.FileDescriptorProtoOrBuilder> v0Var = this.f16776try;
                if (v0Var == null) {
                    m20128switch();
                    this.f16775new.add(i, cif.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, cif.build());
                }
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
            public C0162if mergeFrom(Message message) {
                if (message instanceof Cif) {
                    return m20146interface((Cif) message);
                }
                super.mergeFrom(message);
                return this;
            }

            /* renamed from: while, reason: not valid java name */
            public C0162if m20163while() {
                this.f16774if = s.f17207try;
                this.f16771do &= -2;
                onChanged();
                return this;
            }

            private C0162if() {
                this.f16774if = s.f17207try;
                this.f16773for = "";
                this.f16775new = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private C0162if(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f16774if = s.f17207try;
                this.f16773for = "";
                this.f16775new = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        public static C0162if newBuilder(Cif cif) {
            return f16769do.toBuilder().m20146interface(cif);
        }

        public static Cif parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        @Override // com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public ProtocolStringList getFileToGenerateList() {
            return this.fileToGenerate_;
        }

        private Cif(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Cif parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (Cif) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static Cif parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Cif getDefaultInstanceForType() {
            return f16769do;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public C0162if toBuilder() {
            return this == f16769do ? new C0162if() : new C0162if().m20146interface(this);
        }

        public static Cif parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public C0162if newBuilderForType() {
            return newBuilder();
        }

        private Cif() {
            this.memoizedIsInitialized = (byte) -1;
            this.fileToGenerate_ = s.f17207try;
            this.parameter_ = "";
            this.protoFile_ = Collections.emptyList();
        }

        public static Cif parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public C0162if newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new C0162if(builderParent);
        }

        public static Cif parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static Cif parseFrom(InputStream inputStream) throws IOException {
            return (Cif) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Cif parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (Cif) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Cif(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 10) {
                                ByteString byteStringMo18443throws = codedInputStream.mo18443throws();
                                if ((i & 1) == 0) {
                                    this.fileToGenerate_ = new s();
                                    i |= 1;
                                }
                                this.fileToGenerate_.add(byteStringMo18443throws);
                            } else if (iL == 18) {
                                ByteString byteStringMo18443throws2 = codedInputStream.mo18443throws();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.parameter_ = byteStringMo18443throws2;
                            } else if (iL == 26) {
                                Cfor.Cif builder = (this.bitField0_ & 2) != 0 ? this.compilerVersion_.toBuilder() : null;
                                Cfor cfor = (Cfor) codedInputStream.mo18430interface(Cfor.PARSER, cimplements);
                                this.compilerVersion_ = cfor;
                                if (builder != null) {
                                    builder.m20117super(cfor);
                                    this.compilerVersion_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 2;
                            } else if (iL != 122) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                if ((i & 4) == 0) {
                                    this.protoFile_ = new ArrayList();
                                    i |= 4;
                                }
                                this.protoFile_.add(codedInputStream.mo18430interface(DescriptorProtos.Cgoto.PARSER, cimplements));
                            }
                        }
                        z = true;
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 1) != 0) {
                        this.fileToGenerate_ = this.fileToGenerate_.getUnmodifiableView();
                    }
                    if ((i & 4) != 0) {
                        this.protoFile_ = Collections.unmodifiableList(this.protoFile_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Cif parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Cif) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Cif parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (Cif) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    static {
        Descriptors.Cif cif = m20035this().m19244while().get(0);
        f16741do = cif;
        f16745if = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Major", "Minor", "Patch", "Suffix"});
        Descriptors.Cif cif2 = m20035this().m19244while().get(1);
        f16743for = cif2;
        f16746new = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"FileToGenerate", "Parameter", "ProtoFile", "CompilerVersion"});
        Descriptors.Cif cif3 = m20035this().m19244while().get(2);
        f16748try = cif3;
        f16740case = new GeneratedMessageV3.FieldAccessorTable(cif3, new String[]{"Error", "SupportedFeatures", "File"});
        Descriptors.Cif cif4 = cif3.m19337while().get(0);
        f16742else = cif4;
        f16744goto = new GeneratedMessageV3.FieldAccessorTable(cif4, new String[]{"Name", "InsertionPoint", "Content"});
        DescriptorProtos.p();
    }

    private PluginProtos() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m20026break(Cprotected cprotected) {
        m20028catch(cprotected);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m20028catch(Cimplements cimplements) {
    }

    /* renamed from: this, reason: not valid java name */
    public static Descriptors.FileDescriptor m20035this() {
        return f16747this;
    }
}
