package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.o0;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class g0 extends GeneratedMessageV3 implements MethodOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 6;
    public static final int REQUEST_STREAMING_FIELD_NUMBER = 3;
    public static final int REQUEST_TYPE_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_STREAMING_FIELD_NUMBER = 5;
    public static final int RESPONSE_TYPE_URL_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 7;

    /* renamed from: do, reason: not valid java name */
    private static final g0 f16929do = new g0();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<g0> f16930if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<o0> options_;
    private boolean requestStreaming_;
    private volatile Object requestTypeUrl_;
    private boolean responseStreaming_;
    private volatile Object responseTypeUrl_;
    private int syntax_;

    /* renamed from: com.google.protobuf.g0$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<g0> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public g0 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new g0(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.g0$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements MethodOrBuilder {

        /* renamed from: case, reason: not valid java name */
        private boolean f16931case;

        /* renamed from: do, reason: not valid java name */
        private int f16932do;

        /* renamed from: else, reason: not valid java name */
        private List<o0> f16933else;

        /* renamed from: for, reason: not valid java name */
        private Object f16934for;

        /* renamed from: goto, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f16935goto;

        /* renamed from: if, reason: not valid java name */
        private Object f16936if;

        /* renamed from: new, reason: not valid java name */
        private boolean f16937new;

        /* renamed from: this, reason: not valid java name */
        private int f16938this;

        /* renamed from: try, reason: not valid java name */
        private Object f16939try;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        /* renamed from: extends, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> m20498extends() {
            if (this.f16935goto == null) {
                this.f16935goto = new v0<>(this.f16933else, (this.f16932do & 1) != 0, getParentForChildren(), isClean());
                this.f16933else = null;
            }
            return this.f16935goto;
        }

        public static final Descriptors.Cif getDescriptor() {
            return Cgoto.f16952for;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m20498extends();
            }
        }

        /* renamed from: static, reason: not valid java name */
        private void m20499static() {
            if ((this.f16932do & 1) == 0) {
                this.f16933else = new ArrayList(this.f16933else);
                this.f16932do |= 1;
            }
        }

        public Cif a(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16934for = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        public Cif b(boolean z) {
            this.f16931case = z;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public g0 buildPartial() {
            g0 g0Var = new g0(this, (Cdo) null);
            g0Var.name_ = this.f16936if;
            g0Var.requestTypeUrl_ = this.f16934for;
            g0Var.requestStreaming_ = this.f16937new;
            g0Var.responseTypeUrl_ = this.f16939try;
            g0Var.responseStreaming_ = this.f16931case;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                if ((this.f16932do & 1) != 0) {
                    this.f16933else = Collections.unmodifiableList(this.f16933else);
                    this.f16932do &= -2;
                }
                g0Var.options_ = this.f16933else;
            } else {
                g0Var.options_ = v0Var.m21453case();
            }
            g0Var.syntax_ = this.f16938this;
            onBuilt();
            return g0Var;
        }

        public Cif c(String str) {
            Objects.requireNonNull(str);
            this.f16939try = str;
            onChanged();
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public o0.Cif m20502case() {
            return (o0.Cif) m20498extends().m21460for(o0.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16936if = "";
            this.f16934for = "";
            this.f16937new = false;
            this.f16939try = "";
            this.f16931case = false;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                this.f16933else = Collections.emptyList();
                this.f16932do &= -2;
            } else {
                v0Var.m21458else();
            }
            this.f16938this = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m20505const() {
            this.f16936if = g0.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        /* renamed from: continue, reason: not valid java name */
        public Cif m20506continue(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                m20499static();
                this.f16933else.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        public Cif d(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16939try = byteString;
            onChanged();
            return this;
        }

        /* renamed from: default, reason: not valid java name */
        public List<o0.Cif> m20507default() {
            return m20498extends().m21455class();
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20508do(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                m20499static();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16933else);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public Cif e(i1 i1Var) {
            Objects.requireNonNull(i1Var);
            this.f16938this = i1Var.getNumber();
            onChanged();
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public o0.Cif m20509else(int i) {
            return (o0.Cif) m20498extends().m21462if(i, o0.getDefaultInstance());
        }

        public Cif f(int i) {
            this.f16938this = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            g0 g0Var = null;
            try {
                try {
                    g0 g0Var2 = (g0) g0.f16930if.parsePartialFrom(codedInputStream, cimplements);
                    if (g0Var2 != null) {
                        m20522private(g0Var2);
                    }
                    return this;
                } catch (n e) {
                    g0 g0Var3 = (g0) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        g0Var = g0Var3;
                        if (g0Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (g0Var != null) {
                    m20522private(g0Var);
                }
                throw th;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20512for(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20499static();
                this.f16933else.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Cgoto.f16952for;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getName() {
            Object obj = this.f16936if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16936if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16936if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16936if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            return v0Var == null ? this.f16933else.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            return v0Var == null ? this.f16933else.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            return v0Var == null ? Collections.unmodifiableList(this.f16933else) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            return v0Var == null ? this.f16933else.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16933else);
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public boolean getRequestStreaming() {
            return this.f16937new;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getRequestTypeUrl() {
            Object obj = this.f16934for;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16934for = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getRequestTypeUrlBytes() {
            Object obj = this.f16934for;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16934for = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public boolean getResponseStreaming() {
            return this.f16931case;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getResponseTypeUrl() {
            Object obj = this.f16939try;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16939try = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getResponseTypeUrlBytes() {
            Object obj = this.f16939try;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16939try = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public i1 getSyntax() {
            i1 i1VarValueOf = i1.valueOf(this.f16938this);
            return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public int getSyntaxValue() {
            return this.f16938this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20514if(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                m20499static();
                this.f16933else.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: implements, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m20516import() {
            this.f16931case = false;
            onChanged();
            return this;
        }

        /* renamed from: instanceof, reason: not valid java name */
        public Cif m20517instanceof(boolean z) {
            this.f16937new = z;
            onChanged();
            return this;
        }

        /* renamed from: interface, reason: not valid java name */
        public Cif m20518interface(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16936if = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Cgoto.f16954new.m19575new(g0.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m20519native() {
            this.f16939try = g0.getDefaultInstance().getResponseTypeUrl();
            onChanged();
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m20520new(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                m20499static();
                this.f16933else.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof g0) {
                return m20522private((g0) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: private, reason: not valid java name */
        public Cif m20522private(g0 g0Var) {
            if (g0Var == g0.getDefaultInstance()) {
                return this;
            }
            if (!g0Var.getName().isEmpty()) {
                this.f16936if = g0Var.name_;
                onChanged();
            }
            if (!g0Var.getRequestTypeUrl().isEmpty()) {
                this.f16934for = g0Var.requestTypeUrl_;
                onChanged();
            }
            if (g0Var.getRequestStreaming()) {
                m20517instanceof(g0Var.getRequestStreaming());
            }
            if (!g0Var.getResponseTypeUrl().isEmpty()) {
                this.f16939try = g0Var.responseTypeUrl_;
                onChanged();
            }
            if (g0Var.getResponseStreaming()) {
                b(g0Var.getResponseStreaming());
            }
            if (this.f16935goto == null) {
                if (!g0Var.options_.isEmpty()) {
                    if (this.f16933else.isEmpty()) {
                        this.f16933else = g0Var.options_;
                        this.f16932do &= -2;
                    } else {
                        m20499static();
                        this.f16933else.addAll(g0Var.options_);
                    }
                    onChanged();
                }
            } else if (!g0Var.options_.isEmpty()) {
                if (this.f16935goto.m21465public()) {
                    this.f16935goto.m21461goto();
                    this.f16935goto = null;
                    this.f16933else = g0Var.options_;
                    this.f16932do &= -2;
                    this.f16935goto = GeneratedMessageV3.alwaysUseFieldBuilders ? m20498extends() : null;
                } else {
                    this.f16935goto.m21457do(g0Var.options_);
                }
            }
            if (g0Var.syntax_ != 0) {
                f(g0Var.getSyntaxValue());
            }
            mergeUnknownFields(g0Var.unknownFields);
            onChanged();
            return this;
        }

        /* renamed from: protected, reason: not valid java name */
        public Cif m20523protected(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                m20499static();
                this.f16933else.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m20524public() {
            this.f16938this = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m20527super() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                this.f16933else = Collections.emptyList();
                this.f16932do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        public g0 getDefaultInstanceForType() {
            return g0.getDefaultInstance();
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Cif m20529synchronized(String str) {
            Objects.requireNonNull(str);
            this.f16934for = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public g0 build() {
            g0 g0VarBuildPartial = buildPartial();
            if (g0VarBuildPartial.isInitialized()) {
                return g0VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) g0VarBuildPartial);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m20531throw() {
            this.f16937new = false;
            onChanged();
            return this;
        }

        /* renamed from: throws, reason: not valid java name */
        public o0.Cif m20532throws(int i) {
            return (o0.Cif) m20498extends().m21454catch(i);
        }

        /* renamed from: transient, reason: not valid java name */
        public Cif m20533transient(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20499static();
                this.f16933else.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m20534try(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16935goto;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20499static();
                this.f16933else.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cif m20535volatile(String str) {
            Objects.requireNonNull(str);
            this.f16936if = str;
            onChanged();
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m20536while() {
            this.f16934for = g0.getDefaultInstance().getRequestTypeUrl();
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            this.f16936if = "";
            this.f16934for = "";
            this.f16939try = "";
            this.f16933else = Collections.emptyList();
            this.f16938this = 0;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16936if = "";
            this.f16934for = "";
            this.f16939try = "";
            this.f16933else = Collections.emptyList();
            this.f16938this = 0;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ g0(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static g0 getDefaultInstance() {
        return f16929do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Cgoto.f16952for;
    }

    public static Cif newBuilder() {
        return f16929do.toBuilder();
    }

    public static g0 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (g0) GeneratedMessageV3.parseDelimitedWithIOException(f16930if, inputStream);
    }

    public static g0 parseFrom(ByteBuffer byteBuffer) throws n {
        return f16930if.parseFrom(byteBuffer);
    }

    public static Parser<g0> parser() {
        return f16930if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return super.equals(obj);
        }
        g0 g0Var = (g0) obj;
        return getName().equals(g0Var.getName()) && getRequestTypeUrl().equals(g0Var.getRequestTypeUrl()) && getRequestStreaming() == g0Var.getRequestStreaming() && getResponseTypeUrl().equals(g0Var.getResponseTypeUrl()) && getResponseStreaming() == g0Var.getResponseStreaming() && getOptionsList().equals(g0Var.getOptionsList()) && this.syntax_ == g0Var.syntax_ && this.unknownFields.equals(g0Var.unknownFields);
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<g0> getParserForType() {
        return f16930if;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public boolean getRequestStreaming() {
        return this.requestStreaming_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getRequestTypeUrl() {
        Object obj = this.requestTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getRequestTypeUrlBytes() {
        Object obj = this.requestTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.requestTypeUrl_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public boolean getResponseStreaming() {
        return this.responseStreaming_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getResponseTypeUrl() {
        Object obj = this.responseTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getResponseTypeUrlBytes() {
        Object obj = this.responseTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.responseTypeUrl_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!getRequestTypeUrlBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        if (z) {
            iComputeStringSize += Cnative.m20885goto(3, z);
        }
        if (!getResponseTypeUrlBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        if (z2) {
            iComputeStringSize += Cnative.m20885goto(5, z2);
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            iComputeStringSize += Cnative.m20900synchronized(6, this.options_.get(i2));
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            iComputeStringSize += Cnative.m20887import(7, this.syntax_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public i1 getSyntax() {
        i1 i1VarValueOf = i1.valueOf(this.syntax_);
        return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
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
        int iHashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRequestTypeUrl().hashCode()) * 37) + 3) * 53) + Internal.m19610catch(getRequestStreaming())) * 37) + 4) * 53) + getResponseTypeUrl().hashCode()) * 37) + 5) * 53) + Internal.m19610catch(getResponseStreaming());
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 6) * 53) + getOptionsList().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Cgoto.f16954new.m19575new(g0.class, Cif.class);
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
        return new g0();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        if (!getRequestTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        if (z) {
            cnative.writeBool(3, z);
        }
        if (!getResponseTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        if (z2) {
            cnative.writeBool(5, z2);
        }
        for (int i = 0; i < this.options_.size(); i++) {
            cnative.f0(6, this.options_.get(i));
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            cnative.writeEnum(7, this.syntax_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ g0(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(g0 g0Var) {
        return f16929do.toBuilder().m20522private(g0Var);
    }

    public static g0 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16930if.parseFrom(byteBuffer, cimplements);
    }

    private g0(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static g0 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (g0) GeneratedMessageV3.parseDelimitedWithIOException(f16930if, inputStream, cimplements);
    }

    public static g0 parseFrom(ByteString byteString) throws n {
        return f16930if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public g0 getDefaultInstanceForType() {
        return f16929do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16929do ? new Cif(cdo) : new Cif(cdo).m20522private(this);
    }

    public static g0 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16930if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private g0() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.responseTypeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static g0 parseFrom(byte[] bArr) throws n {
        return f16930if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static g0 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16930if.parseFrom(bArr, cimplements);
    }

    public static g0 parseFrom(InputStream inputStream) throws IOException {
        return (g0) GeneratedMessageV3.parseWithIOException(f16930if, inputStream);
    }

    public static g0 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (g0) GeneratedMessageV3.parseWithIOException(f16930if, inputStream, cimplements);
    }

    public static g0 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (g0) GeneratedMessageV3.parseWithIOException(f16930if, codedInputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private g0(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                        if (iL == 10) {
                            this.name_ = codedInputStream.k();
                        } else if (iL == 18) {
                            this.requestTypeUrl_ = codedInputStream.k();
                        } else if (iL == 24) {
                            this.requestStreaming_ = codedInputStream.mo18437return();
                        } else if (iL == 34) {
                            this.responseTypeUrl_ = codedInputStream.k();
                        } else if (iL == 40) {
                            this.responseStreaming_ = codedInputStream.mo18437return();
                        } else if (iL == 50) {
                            if (!(z2 & true)) {
                                this.options_ = new ArrayList();
                                z2 |= true;
                            }
                            this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
                        } else if (iL != 56) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.syntax_ = codedInputStream.mo18425extends();
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
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static g0 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (g0) GeneratedMessageV3.parseWithIOException(f16930if, codedInputStream, cimplements);
    }
}
