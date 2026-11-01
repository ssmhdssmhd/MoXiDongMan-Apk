package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c1;
import com.google.protobuf.g0;
import com.google.protobuf.h0;
import com.google.protobuf.o0;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: com.google.protobuf.else, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Celse extends GeneratedMessageV3 implements ApiOrBuilder {
    public static final int METHODS_FIELD_NUMBER = 2;
    public static final int MIXINS_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    public static final int VERSION_FIELD_NUMBER = 4;

    /* renamed from: do, reason: not valid java name */
    private static final Celse f16878do = new Celse();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Celse> f16879if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<g0> methods_;
    private List<h0> mixins_;
    private volatile Object name_;
    private List<o0> options_;
    private c1 sourceContext_;
    private int syntax_;
    private volatile Object version_;

    /* renamed from: com.google.protobuf.else$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Celse> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Celse(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.else$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements ApiOrBuilder {

        /* renamed from: break, reason: not valid java name */
        private List<h0> f16880break;

        /* renamed from: case, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f16881case;

        /* renamed from: catch, reason: not valid java name */
        private v0<h0, h0.Cif, MixinOrBuilder> f16882catch;

        /* renamed from: class, reason: not valid java name */
        private int f16883class;

        /* renamed from: do, reason: not valid java name */
        private int f16884do;

        /* renamed from: else, reason: not valid java name */
        private Object f16885else;

        /* renamed from: for, reason: not valid java name */
        private List<g0> f16886for;

        /* renamed from: goto, reason: not valid java name */
        private c1 f16887goto;

        /* renamed from: if, reason: not valid java name */
        private Object f16888if;

        /* renamed from: new, reason: not valid java name */
        private v0<g0, g0.Cif, MethodOrBuilder> f16889new;

        /* renamed from: this, reason: not valid java name */
        private a1<c1, c1.Cif, SourceContextOrBuilder> f16890this;

        /* renamed from: try, reason: not valid java name */
        private List<o0> f16891try;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private v0<g0, g0.Cif, MethodOrBuilder> c() {
            if (this.f16889new == null) {
                this.f16889new = new v0<>(this.f16886for, (this.f16884do & 1) != 0, getParentForChildren(), isClean());
                this.f16886for = null;
            }
            return this.f16889new;
        }

        private v0<h0, h0.Cif, MixinOrBuilder> f() {
            if (this.f16882catch == null) {
                this.f16882catch = new v0<>(this.f16880break, (this.f16884do & 4) != 0, getParentForChildren(), isClean());
                this.f16880break = null;
            }
            return this.f16882catch;
        }

        public static final Descriptors.Cif getDescriptor() {
            return Cgoto.f16950do;
        }

        private v0<o0, o0.Cif, OptionOrBuilder> i() {
            if (this.f16881case == null) {
                this.f16881case = new v0<>(this.f16891try, (this.f16884do & 2) != 0, getParentForChildren(), isClean());
                this.f16891try = null;
            }
            return this.f16881case;
        }

        /* renamed from: implements, reason: not valid java name */
        private void m20360implements() {
            if ((this.f16884do & 4) == 0) {
                this.f16880break = new ArrayList(this.f16880break);
                this.f16884do |= 4;
            }
        }

        /* renamed from: instanceof, reason: not valid java name */
        private void m20361instanceof() {
            if ((this.f16884do & 2) == 0) {
                this.f16891try = new ArrayList(this.f16891try);
                this.f16884do |= 2;
            }
        }

        private a1<c1, c1.Cif, SourceContextOrBuilder> k() {
            if (this.f16890this == null) {
                this.f16890this = new a1<>(getSourceContext(), getParentForChildren(), isClean());
                this.f16887goto = null;
            }
            return this.f16890this;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                c();
                i();
                f();
            }
        }

        /* renamed from: transient, reason: not valid java name */
        private void m20362transient() {
            if ((this.f16884do & 1) == 0) {
                this.f16886for = new ArrayList(this.f16886for);
                this.f16884do |= 1;
            }
        }

        public Cif A(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                m20361instanceof();
                this.f16891try.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        public Cif B(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20361instanceof();
                this.f16891try.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: C, reason: merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        public Cif D(c1.Cif cif) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var == null) {
                this.f16887goto = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            return this;
        }

        public Cif E(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var == null) {
                Objects.requireNonNull(c1Var);
                this.f16887goto = c1Var;
                onChanged();
            } else {
                a1Var.m19691this(c1Var);
            }
            return this;
        }

        public Cif F(i1 i1Var) {
            Objects.requireNonNull(i1Var);
            this.f16883class = i1Var.getNumber();
            onChanged();
            return this;
        }

        public Cif G(int i) {
            this.f16883class = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: H, reason: merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        public Cif I(String str) {
            Objects.requireNonNull(str);
            this.f16885else = str;
            onChanged();
            return this;
        }

        public Cif J(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16885else = byteString;
            onChanged();
            return this;
        }

        public g0.Cif a(int i) {
            return (g0.Cif) c().m21454catch(i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        public List<g0.Cif> b() {
            return c().m21455class();
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20364break(int i, h0.Cif cif) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                m20360implements();
                this.f16880break.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20365case(g0.Cif cif) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                m20362transient();
                this.f16886for.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m20366catch(int i, h0 h0Var) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                Objects.requireNonNull(h0Var);
                m20360implements();
                this.f16880break.add(i, h0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, h0Var);
            }
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m20367class(h0.Cif cif) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                m20360implements();
                this.f16880break.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m20368const(h0 h0Var) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                Objects.requireNonNull(h0Var);
                m20360implements();
                this.f16880break.add(h0Var);
                onChanged();
            } else {
                v0Var.m21469try(h0Var);
            }
            return this;
        }

        /* renamed from: continue, reason: not valid java name */
        public Cif m20369continue() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                this.f16891try = Collections.emptyList();
                this.f16884do &= -3;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        public h0.Cif d(int i) {
            return (h0.Cif) f().m21454catch(i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16888if = "";
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                this.f16886for = Collections.emptyList();
                this.f16884do &= -2;
            } else {
                v0Var.m21458else();
            }
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f16881case;
            if (v0Var2 == null) {
                this.f16891try = Collections.emptyList();
                this.f16884do &= -3;
            } else {
                v0Var2.m21458else();
            }
            this.f16885else = "";
            if (this.f16890this == null) {
                this.f16887goto = null;
            } else {
                this.f16887goto = null;
                this.f16890this = null;
            }
            v0<h0, h0.Cif, MixinOrBuilder> v0Var3 = this.f16882catch;
            if (v0Var3 == null) {
                this.f16880break = Collections.emptyList();
                this.f16884do &= -5;
            } else {
                v0Var3.m21458else();
            }
            this.f16883class = 0;
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20371do(Iterable<? extends g0> iterable) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                m20362transient();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16886for);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public List<h0.Cif> e() {
            return f().m21455class();
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m20372else(g0 g0Var) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                Objects.requireNonNull(g0Var);
                m20362transient();
                this.f16886for.add(g0Var);
                onChanged();
            } else {
                v0Var.m21469try(g0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: final, reason: not valid java name */
        public h0.Cif m20374final() {
            return (h0.Cif) f().m21460for(h0.getDefaultInstance());
        }

        /* renamed from: finally, reason: not valid java name */
        public Cif m20375finally() {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                this.f16886for = Collections.emptyList();
                this.f16884do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20376for(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                m20361instanceof();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16891try);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public o0.Cif g(int i) {
            return (o0.Cif) i().m21454catch(i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Cgoto.f16950do;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public g0 getMethods(int i) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            return v0Var == null ? this.f16886for.get(i) : (g0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getMethodsCount() {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            return v0Var == null ? this.f16886for.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<g0> getMethodsList() {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            return v0Var == null ? Collections.unmodifiableList(this.f16886for) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public MethodOrBuilder getMethodsOrBuilder(int i) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            return v0Var == null ? this.f16886for.get(i) : (MethodOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16886for);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public h0 getMixins(int i) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            return v0Var == null ? this.f16880break.get(i) : (h0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getMixinsCount() {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            return v0Var == null ? this.f16880break.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<h0> getMixinsList() {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            return v0Var == null ? Collections.unmodifiableList(this.f16880break) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public MixinOrBuilder getMixinsOrBuilder(int i) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            return v0Var == null ? this.f16880break.get(i) : (MixinOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16880break);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public String getName() {
            Object obj = this.f16888if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16888if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16888if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16888if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            return v0Var == null ? this.f16891try.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            return v0Var == null ? this.f16891try.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            return v0Var == null ? Collections.unmodifiableList(this.f16891try) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            return v0Var == null ? this.f16891try.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16891try);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public c1 getSourceContext() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var != null) {
                return (c1) a1Var.m19692try();
            }
            c1 c1Var = this.f16887goto;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var != null) {
                return (SourceContextOrBuilder) a1Var.m19685case();
            }
            c1 c1Var = this.f16887goto;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public i1 getSyntax() {
            i1 i1VarValueOf = i1.valueOf(this.f16883class);
            return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getSyntaxValue() {
            return this.f16883class;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public String getVersion() {
            Object obj = this.f16885else;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16885else = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public ByteString getVersionBytes() {
            Object obj = this.f16885else;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16885else = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        /* renamed from: goto, reason: not valid java name */
        public g0.Cif m20377goto() {
            return (g0.Cif) c().m21460for(g0.getDefaultInstance());
        }

        public List<o0.Cif> h() {
            return i().m21455class();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public boolean hasSourceContext() {
            return (this.f16890this == null && this.f16887goto == null) ? false : true;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20378if(Iterable<? extends h0> iterable) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                m20360implements();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16880break);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m20379import(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                m20361instanceof();
                this.f16891try.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: interface, reason: not valid java name */
        public Cif m20380interface() {
            this.f16885else = Celse.getDefaultInstance().getVersion();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Cgoto.f16953if.m19575new(Celse.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public c1.Cif j() {
            onChanged();
            return (c1.Cif) k().m19690new();
        }

        public Cif l(Celse celse) {
            if (celse == Celse.getDefaultInstance()) {
                return this;
            }
            if (!celse.getName().isEmpty()) {
                this.f16888if = celse.name_;
                onChanged();
            }
            if (this.f16889new == null) {
                if (!celse.methods_.isEmpty()) {
                    if (this.f16886for.isEmpty()) {
                        this.f16886for = celse.methods_;
                        this.f16884do &= -2;
                    } else {
                        m20362transient();
                        this.f16886for.addAll(celse.methods_);
                    }
                    onChanged();
                }
            } else if (!celse.methods_.isEmpty()) {
                if (this.f16889new.m21465public()) {
                    this.f16889new.m21461goto();
                    this.f16889new = null;
                    this.f16886for = celse.methods_;
                    this.f16884do &= -2;
                    this.f16889new = GeneratedMessageV3.alwaysUseFieldBuilders ? c() : null;
                } else {
                    this.f16889new.m21457do(celse.methods_);
                }
            }
            if (this.f16881case == null) {
                if (!celse.options_.isEmpty()) {
                    if (this.f16891try.isEmpty()) {
                        this.f16891try = celse.options_;
                        this.f16884do &= -3;
                    } else {
                        m20361instanceof();
                        this.f16891try.addAll(celse.options_);
                    }
                    onChanged();
                }
            } else if (!celse.options_.isEmpty()) {
                if (this.f16881case.m21465public()) {
                    this.f16881case.m21461goto();
                    this.f16881case = null;
                    this.f16891try = celse.options_;
                    this.f16884do &= -3;
                    this.f16881case = GeneratedMessageV3.alwaysUseFieldBuilders ? i() : null;
                } else {
                    this.f16881case.m21457do(celse.options_);
                }
            }
            if (!celse.getVersion().isEmpty()) {
                this.f16885else = celse.version_;
                onChanged();
            }
            if (celse.hasSourceContext()) {
                o(celse.getSourceContext());
            }
            if (this.f16882catch == null) {
                if (!celse.mixins_.isEmpty()) {
                    if (this.f16880break.isEmpty()) {
                        this.f16880break = celse.mixins_;
                        this.f16884do &= -5;
                    } else {
                        m20360implements();
                        this.f16880break.addAll(celse.mixins_);
                    }
                    onChanged();
                }
            } else if (!celse.mixins_.isEmpty()) {
                if (this.f16882catch.m21465public()) {
                    this.f16882catch.m21461goto();
                    this.f16882catch = null;
                    this.f16880break = celse.mixins_;
                    this.f16884do &= -5;
                    this.f16882catch = GeneratedMessageV3.alwaysUseFieldBuilders ? f() : null;
                } else {
                    this.f16882catch.m21457do(celse.mixins_);
                }
            }
            if (celse.syntax_ != 0) {
                G(celse.getSyntaxValue());
            }
            mergeUnknownFields(celse.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Celse celse = null;
            try {
                try {
                    Celse celse2 = (Celse) Celse.f16879if.parsePartialFrom(codedInputStream, cimplements);
                    if (celse2 != null) {
                        l(celse2);
                    }
                    return this;
                } catch (n e) {
                    Celse celse3 = (Celse) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        celse = celse3;
                        if (celse != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (celse != null) {
                    l(celse);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Celse) {
                return l((Celse) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m20381native(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20361instanceof();
                this.f16891try.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m20382new(int i, g0.Cif cif) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                m20362transient();
                this.f16886for.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        public Cif o(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var == null) {
                c1 c1Var2 = this.f16887goto;
                if (c1Var2 != null) {
                    this.f16887goto = c1.newBuilder(c1Var2).m19947class(c1Var).buildPartial();
                } else {
                    this.f16887goto = c1Var;
                }
                onChanged();
            } else {
                a1Var.m19687else(c1Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: p, reason: merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: package, reason: not valid java name */
        public Cif m20383package() {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                this.f16880break = Collections.emptyList();
                this.f16884do &= -5;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: private, reason: not valid java name */
        public Cif m20384private() {
            this.f16888if = Celse.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        /* renamed from: public, reason: not valid java name */
        public o0.Cif m20386public() {
            return (o0.Cif) i().m21460for(o0.getDefaultInstance());
        }

        public Cif q(int i) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                m20362transient();
                this.f16886for.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        public Cif r(int i) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                m20360implements();
                this.f16880break.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        /* renamed from: return, reason: not valid java name */
        public o0.Cif m20387return(int i) {
            return (o0.Cif) i().m21462if(i, o0.getDefaultInstance());
        }

        public Cif s(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                m20361instanceof();
                this.f16891try.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cif m20389strictfp() {
            if (this.f16890this == null) {
                this.f16887goto = null;
                onChanged();
            } else {
                this.f16887goto = null;
                this.f16890this = null;
            }
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public h0.Cif m20390super(int i) {
            return (h0.Cif) f().m21462if(i, h0.getDefaultInstance());
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse build() {
            Celse celseBuildPartial = buildPartial();
            if (celseBuildPartial.isInitialized()) {
                return celseBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) celseBuildPartial);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse getDefaultInstanceForType() {
            return Celse.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: t, reason: merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        /* renamed from: this, reason: not valid java name */
        public g0.Cif m20393this(int i) {
            return (g0.Cif) c().m21462if(i, g0.getDefaultInstance());
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m20394throw(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                m20361instanceof();
                this.f16891try.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse buildPartial() {
            Celse celse = new Celse(this, (Cdo) null);
            celse.name_ = this.f16888if;
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                if ((this.f16884do & 1) != 0) {
                    this.f16886for = Collections.unmodifiableList(this.f16886for);
                    this.f16884do &= -2;
                }
                celse.methods_ = this.f16886for;
            } else {
                celse.methods_ = v0Var.m21453case();
            }
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f16881case;
            if (v0Var2 == null) {
                if ((this.f16884do & 2) != 0) {
                    this.f16891try = Collections.unmodifiableList(this.f16891try);
                    this.f16884do &= -3;
                }
                celse.options_ = this.f16891try;
            } else {
                celse.options_ = v0Var2.m21453case();
            }
            celse.version_ = this.f16885else;
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16890this;
            if (a1Var == null) {
                celse.sourceContext_ = this.f16887goto;
            } else {
                celse.sourceContext_ = (c1) a1Var.m19686do();
            }
            v0<h0, h0.Cif, MixinOrBuilder> v0Var3 = this.f16882catch;
            if (v0Var3 == null) {
                if ((this.f16884do & 4) != 0) {
                    this.f16880break = Collections.unmodifiableList(this.f16880break);
                    this.f16884do &= -5;
                }
                celse.mixins_ = this.f16880break;
            } else {
                celse.mixins_ = v0Var3.m21453case();
            }
            celse.syntax_ = this.f16883class;
            onBuilt();
            return celse;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m20396try(int i, g0 g0Var) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                Objects.requireNonNull(g0Var);
                m20362transient();
                this.f16886for.add(i, g0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, g0Var);
            }
            return this;
        }

        public Cif u(int i, g0.Cif cif) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                m20362transient();
                this.f16886for.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        public Cif v(int i, g0 g0Var) {
            v0<g0, g0.Cif, MethodOrBuilder> v0Var = this.f16889new;
            if (v0Var == null) {
                Objects.requireNonNull(g0Var);
                m20362transient();
                this.f16886for.set(i, g0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, g0Var);
            }
            return this;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cif m20397volatile() {
            this.f16883class = 0;
            onChanged();
            return this;
        }

        public Cif w(int i, h0.Cif cif) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                m20360implements();
                this.f16880break.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m20398while(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16881case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20361instanceof();
                this.f16891try.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        public Cif x(int i, h0 h0Var) {
            v0<h0, h0.Cif, MixinOrBuilder> v0Var = this.f16882catch;
            if (v0Var == null) {
                Objects.requireNonNull(h0Var);
                m20360implements();
                this.f16880break.set(i, h0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, h0Var);
            }
            return this;
        }

        public Cif y(String str) {
            Objects.requireNonNull(str);
            this.f16888if = str;
            onChanged();
            return this;
        }

        public Cif z(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16888if = byteString;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f16888if = "";
            this.f16886for = Collections.emptyList();
            this.f16891try = Collections.emptyList();
            this.f16885else = "";
            this.f16880break = Collections.emptyList();
            this.f16883class = 0;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16888if = "";
            this.f16886for = Collections.emptyList();
            this.f16891try = Collections.emptyList();
            this.f16885else = "";
            this.f16880break = Collections.emptyList();
            this.f16883class = 0;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ Celse(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Celse getDefaultInstance() {
        return f16878do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Cgoto.f16950do;
    }

    public static Cif newBuilder() {
        return f16878do.toBuilder();
    }

    public static Celse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Celse) GeneratedMessageV3.parseDelimitedWithIOException(f16879if, inputStream);
    }

    public static Celse parseFrom(ByteBuffer byteBuffer) throws n {
        return f16879if.parseFrom(byteBuffer);
    }

    public static Parser<Celse> parser() {
        return f16879if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Celse)) {
            return super.equals(obj);
        }
        Celse celse = (Celse) obj;
        if (getName().equals(celse.getName()) && getMethodsList().equals(celse.getMethodsList()) && getOptionsList().equals(celse.getOptionsList()) && getVersion().equals(celse.getVersion()) && hasSourceContext() == celse.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(celse.getSourceContext())) && getMixinsList().equals(celse.getMixinsList()) && this.syntax_ == celse.syntax_ && this.unknownFields.equals(celse.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public g0 getMethods(int i) {
        return this.methods_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getMethodsCount() {
        return this.methods_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<g0> getMethodsList() {
        return this.methods_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public MethodOrBuilder getMethodsOrBuilder(int i) {
        return this.methods_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
        return this.methods_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public h0 getMixins(int i) {
        return this.mixins_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getMixinsCount() {
        return this.mixins_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<h0> getMixinsList() {
        return this.mixins_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public MixinOrBuilder getMixinsOrBuilder(int i) {
        return this.mixins_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
        return this.mixins_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Celse> getParserForType() {
        return f16879if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.methods_.size(); i2++) {
            iComputeStringSize += Cnative.m20900synchronized(2, this.methods_.get(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            iComputeStringSize += Cnative.m20900synchronized(3, this.options_.get(i3));
        }
        if (!getVersionBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.version_);
        }
        if (this.sourceContext_ != null) {
            iComputeStringSize += Cnative.m20900synchronized(5, getSourceContext());
        }
        for (int i4 = 0; i4 < this.mixins_.size(); i4++) {
            iComputeStringSize += Cnative.m20900synchronized(6, this.mixins_.get(i4));
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            iComputeStringSize += Cnative.m20887import(7, this.syntax_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public c1 getSourceContext() {
        c1 c1Var = this.sourceContext_;
        return c1Var == null ? c1.getDefaultInstance() : c1Var;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        return getSourceContext();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public i1 getSyntax() {
        i1 i1VarValueOf = i1.valueOf(this.syntax_);
        return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public String getVersion() {
        Object obj = this.version_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.version_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public ByteString getVersionBytes() {
        Object obj = this.version_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.version_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public boolean hasSourceContext() {
        return this.sourceContext_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getMethodsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getMethodsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        int iHashCode2 = (((iHashCode * 37) + 4) * 53) + getVersion().hashCode();
        if (hasSourceContext()) {
            iHashCode2 = (((iHashCode2 * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        if (getMixinsCount() > 0) {
            iHashCode2 = (((iHashCode2 * 37) + 6) * 53) + getMixinsList().hashCode();
        }
        int iHashCode3 = (((((iHashCode2 * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Cgoto.f16953if.m19575new(Celse.class, Cif.class);
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
        return new Celse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        for (int i = 0; i < this.methods_.size(); i++) {
            cnative.f0(2, this.methods_.get(i));
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            cnative.f0(3, this.options_.get(i2));
        }
        if (!getVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 4, this.version_);
        }
        if (this.sourceContext_ != null) {
            cnative.f0(5, getSourceContext());
        }
        for (int i3 = 0; i3 < this.mixins_.size(); i3++) {
            cnative.f0(6, this.mixins_.get(i3));
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            cnative.writeEnum(7, this.syntax_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Celse(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Celse celse) {
        return f16878do.toBuilder().l(celse);
    }

    public static Celse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16879if.parseFrom(byteBuffer, cimplements);
    }

    private Celse(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Celse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Celse) GeneratedMessageV3.parseDelimitedWithIOException(f16879if, inputStream, cimplements);
    }

    public static Celse parseFrom(ByteString byteString) throws n {
        return f16879if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Celse getDefaultInstanceForType() {
        return f16878do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16878do ? new Cif(cdo) : new Cif(cdo).l(this);
    }

    public static Celse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16879if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Celse() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.methods_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.version_ = "";
        this.mixins_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Celse parseFrom(byte[] bArr) throws n {
        return f16879if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Celse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16879if.parseFrom(bArr, cimplements);
    }

    public static Celse parseFrom(InputStream inputStream) throws IOException {
        return (Celse) GeneratedMessageV3.parseWithIOException(f16879if, inputStream);
    }

    public static Celse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Celse) GeneratedMessageV3.parseWithIOException(f16879if, inputStream, cimplements);
    }

    public static Celse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Celse) GeneratedMessageV3.parseWithIOException(f16879if, codedInputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Celse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            this.name_ = codedInputStream.k();
                        } else if (iL == 18) {
                            if ((i & 1) == 0) {
                                this.methods_ = new ArrayList();
                                i |= 1;
                            }
                            this.methods_.add(codedInputStream.mo18430interface(g0.parser(), cimplements));
                        } else if (iL == 26) {
                            if ((i & 2) == 0) {
                                this.options_ = new ArrayList();
                                i |= 2;
                            }
                            this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
                        } else if (iL == 34) {
                            this.version_ = codedInputStream.k();
                        } else if (iL == 42) {
                            c1 c1Var = this.sourceContext_;
                            c1.Cif builder = c1Var != null ? c1Var.toBuilder() : null;
                            c1 c1Var2 = (c1) codedInputStream.mo18430interface(c1.parser(), cimplements);
                            this.sourceContext_ = c1Var2;
                            if (builder != null) {
                                builder.m19947class(c1Var2);
                                this.sourceContext_ = builder.buildPartial();
                            }
                        } else if (iL == 50) {
                            if ((i & 4) == 0) {
                                this.mixins_ = new ArrayList();
                                i |= 4;
                            }
                            this.mixins_.add(codedInputStream.mo18430interface(h0.parser(), cimplements));
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
                if ((i & 1) != 0) {
                    this.methods_ = Collections.unmodifiableList(this.methods_);
                }
                if ((i & 2) != 0) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                if ((i & 4) != 0) {
                    this.mixins_ = Collections.unmodifiableList(this.mixins_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Celse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Celse) GeneratedMessageV3.parseWithIOException(f16879if, codedInputStream, cimplements);
    }
}
