package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c;
import com.google.protobuf.c1;
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
public final class n1 extends GeneratedMessageV3 implements TypeOrBuilder {
    public static final int FIELDS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ONEOFS_FIELD_NUMBER = 3;
    public static final int OPTIONS_FIELD_NUMBER = 4;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 6;

    /* renamed from: do, reason: not valid java name */
    private static final n1 f17074do = new n1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<n1> f17075if = new Cdo();
    private static final long serialVersionUID = 0;
    private List<c> fields_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private LazyStringList oneofs_;
    private List<o0> options_;
    private c1 sourceContext_;
    private int syntax_;

    /* renamed from: com.google.protobuf.n1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<n1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public n1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new n1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.n1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements TypeOrBuilder {

        /* renamed from: break, reason: not valid java name */
        private int f17076break;

        /* renamed from: case, reason: not valid java name */
        private List<o0> f17077case;

        /* renamed from: do, reason: not valid java name */
        private int f17078do;

        /* renamed from: else, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f17079else;

        /* renamed from: for, reason: not valid java name */
        private List<c> f17080for;

        /* renamed from: goto, reason: not valid java name */
        private c1 f17081goto;

        /* renamed from: if, reason: not valid java name */
        private Object f17082if;

        /* renamed from: new, reason: not valid java name */
        private v0<c, c.Cif, FieldOrBuilder> f17083new;

        /* renamed from: this, reason: not valid java name */
        private a1<c1, c1.Cif, SourceContextOrBuilder> f17084this;

        /* renamed from: try, reason: not valid java name */
        private LazyStringList f17085try;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private v0<o0, o0.Cif, OptionOrBuilder> b() {
            if (this.f17079else == null) {
                this.f17079else = new v0<>(this.f17077case, (this.f17078do & 4) != 0, getParentForChildren(), isClean());
                this.f17077case = null;
            }
            return this.f17079else;
        }

        /* renamed from: continue, reason: not valid java name */
        private void m20835continue() {
            if ((this.f17078do & 1) == 0) {
                this.f17080for = new ArrayList(this.f17080for);
                this.f17078do |= 1;
            }
        }

        private a1<c1, c1.Cif, SourceContextOrBuilder> d() {
            if (this.f17084this == null) {
                this.f17084this = new a1<>(getSourceContext(), getParentForChildren(), isClean());
                this.f17081goto = null;
            }
            return this.f17084this;
        }

        public static final Descriptors.Cif getDescriptor() {
            return o1.f17134do;
        }

        /* renamed from: implements, reason: not valid java name */
        private v0<c, c.Cif, FieldOrBuilder> m20836implements() {
            if (this.f17083new == null) {
                this.f17083new = new v0<>(this.f17080for, (this.f17078do & 1) != 0, getParentForChildren(), isClean());
                this.f17080for = null;
            }
            return this.f17083new;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m20836implements();
                b();
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        private void m20837strictfp() {
            if ((this.f17078do & 2) == 0) {
                this.f17085try = new s(this.f17085try);
                this.f17078do |= 2;
            }
        }

        /* renamed from: volatile, reason: not valid java name */
        private void m20838volatile() {
            if ((this.f17078do & 4) == 0) {
                this.f17077case = new ArrayList(this.f17077case);
                this.f17078do |= 4;
            }
        }

        public List<o0.Cif> a() {
            return b().m21455class();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20840break(String str) {
            Objects.requireNonNull(str);
            m20837strictfp();
            this.f17085try.add((LazyStringList) str);
            onChanged();
            return this;
        }

        public c1.Cif c() {
            onChanged();
            return (c1.Cif) d().m19690new();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20841case(c.Cif cif) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                m20835continue();
                this.f17080for.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m20842catch(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            m20837strictfp();
            this.f17085try.add(byteString);
            onChanged();
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m20843class(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                m20838volatile();
                this.f17077case.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m20844const(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20838volatile();
                this.f17077case.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20846do(Iterable<? extends c> iterable) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                m20835continue();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f17080for);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            n1 n1Var = null;
            try {
                try {
                    n1 n1Var2 = (n1) n1.f17075if.parsePartialFrom(codedInputStream, cimplements);
                    if (n1Var2 != null) {
                        g(n1Var2);
                    }
                    return this;
                } catch (n e) {
                    n1 n1Var3 = (n1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        n1Var = n1Var3;
                        if (n1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (n1Var != null) {
                    g(n1Var);
                }
                throw th;
            }
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m20847else(c cVar) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                Objects.requireNonNull(cVar);
                m20835continue();
                this.f17080for.add(cVar);
                onChanged();
            } else {
                v0Var.m21469try(cVar);
            }
            return this;
        }

        /* renamed from: extends, reason: not valid java name */
        public Cif m20848extends() {
            this.f17085try = s.f17207try;
            this.f17078do &= -3;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof n1) {
                return g((n1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m20849final(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                m20838volatile();
                this.f17077case.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: finally, reason: not valid java name */
        public Cif m20850finally() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                this.f17077case = Collections.emptyList();
                this.f17078do &= -5;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20851for(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                m20838volatile();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f17077case);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public Cif g(n1 n1Var) {
            if (n1Var == n1.getDefaultInstance()) {
                return this;
            }
            if (!n1Var.getName().isEmpty()) {
                this.f17082if = n1Var.name_;
                onChanged();
            }
            if (this.f17083new == null) {
                if (!n1Var.fields_.isEmpty()) {
                    if (this.f17080for.isEmpty()) {
                        this.f17080for = n1Var.fields_;
                        this.f17078do &= -2;
                    } else {
                        m20835continue();
                        this.f17080for.addAll(n1Var.fields_);
                    }
                    onChanged();
                }
            } else if (!n1Var.fields_.isEmpty()) {
                if (this.f17083new.m21465public()) {
                    this.f17083new.m21461goto();
                    this.f17083new = null;
                    this.f17080for = n1Var.fields_;
                    this.f17078do &= -2;
                    this.f17083new = GeneratedMessageV3.alwaysUseFieldBuilders ? m20836implements() : null;
                } else {
                    this.f17083new.m21457do(n1Var.fields_);
                }
            }
            if (!n1Var.oneofs_.isEmpty()) {
                if (this.f17085try.isEmpty()) {
                    this.f17085try = n1Var.oneofs_;
                    this.f17078do &= -3;
                } else {
                    m20837strictfp();
                    this.f17085try.addAll(n1Var.oneofs_);
                }
                onChanged();
            }
            if (this.f17079else == null) {
                if (!n1Var.options_.isEmpty()) {
                    if (this.f17077case.isEmpty()) {
                        this.f17077case = n1Var.options_;
                        this.f17078do &= -5;
                    } else {
                        m20838volatile();
                        this.f17077case.addAll(n1Var.options_);
                    }
                    onChanged();
                }
            } else if (!n1Var.options_.isEmpty()) {
                if (this.f17079else.m21465public()) {
                    this.f17079else.m21461goto();
                    this.f17079else = null;
                    this.f17077case = n1Var.options_;
                    this.f17078do &= -5;
                    this.f17079else = GeneratedMessageV3.alwaysUseFieldBuilders ? b() : null;
                } else {
                    this.f17079else.m21457do(n1Var.options_);
                }
            }
            if (n1Var.hasSourceContext()) {
                h(n1Var.getSourceContext());
            }
            if (n1Var.syntax_ != 0) {
                x(n1Var.getSyntaxValue());
            }
            mergeUnknownFields(n1Var.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return o1.f17134do;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public c getFields(int i) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            return v0Var == null ? this.f17080for.get(i) : (c) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getFieldsCount() {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            return v0Var == null ? this.f17080for.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<c> getFieldsList() {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            return v0Var == null ? Collections.unmodifiableList(this.f17080for) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public FieldOrBuilder getFieldsOrBuilder(int i) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            return v0Var == null ? this.f17080for.get(i) : (FieldOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<? extends FieldOrBuilder> getFieldsOrBuilderList() {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f17080for);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public String getName() {
            Object obj = this.f17082if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f17082if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f17082if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f17082if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public String getOneofs(int i) {
            return this.f17085try.get(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ByteString getOneofsBytes(int i) {
            return this.f17085try.getByteString(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getOneofsCount() {
            return this.f17085try.size();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            return v0Var == null ? this.f17077case.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            return v0Var == null ? this.f17077case.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            return v0Var == null ? Collections.unmodifiableList(this.f17077case) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            return v0Var == null ? this.f17077case.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f17077case);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public c1 getSourceContext() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var != null) {
                return (c1) a1Var.m19692try();
            }
            c1 c1Var = this.f17081goto;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var != null) {
                return (SourceContextOrBuilder) a1Var.m19685case();
            }
            c1 c1Var = this.f17081goto;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public i1 getSyntax() {
            i1 i1VarValueOf = i1.valueOf(this.f17076break);
            return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getSyntaxValue() {
            return this.f17076break;
        }

        /* renamed from: goto, reason: not valid java name */
        public c.Cif m20852goto() {
            return (c.Cif) m20836implements().m21460for(c.getDefaultInstance());
        }

        public Cif h(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var == null) {
                c1 c1Var2 = this.f17081goto;
                if (c1Var2 != null) {
                    this.f17081goto = c1.newBuilder(c1Var2).m19947class(c1Var).buildPartial();
                } else {
                    this.f17081goto = c1Var;
                }
                onChanged();
            } else {
                a1Var.m19687else(c1Var);
            }
            return this;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public boolean hasSourceContext() {
            return (this.f17084this == null && this.f17081goto == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20853if(Iterable<String> iterable) {
            m20837strictfp();
            AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f17085try);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        public ProtocolStringList getOneofsList() {
            return this.f17085try.getUnmodifiableView();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: interface, reason: not valid java name and merged with bridge method [inline-methods] */
        public n1 getDefaultInstanceForType() {
            return n1.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return o1.f17138if.m19575new(n1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Cif j(int i) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                m20835continue();
                this.f17080for.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        public Cif k(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                m20838volatile();
                this.f17077case.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        public Cif m(int i, c.Cif cif) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                m20835continue();
                this.f17080for.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        public Cif n(int i, c cVar) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                Objects.requireNonNull(cVar);
                m20835continue();
                this.f17080for.set(i, cVar);
                onChanged();
            } else {
                v0Var.m21467switch(i, cVar);
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public n1 build() {
            n1 n1VarBuildPartial = buildPartial();
            if (n1VarBuildPartial.isInitialized()) {
                return n1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) n1VarBuildPartial);
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m20858new(int i, c.Cif cif) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                m20835continue();
                this.f17080for.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        public Cif o(String str) {
            Objects.requireNonNull(str);
            this.f17082if = str;
            onChanged();
            return this;
        }

        public Cif p(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f17082if = byteString;
            onChanged();
            return this;
        }

        /* renamed from: package, reason: not valid java name */
        public Cif m20859package() {
            if (this.f17084this == null) {
                this.f17081goto = null;
                onChanged();
            } else {
                this.f17081goto = null;
                this.f17084this = null;
            }
            return this;
        }

        /* renamed from: private, reason: not valid java name */
        public Cif m20860private() {
            this.f17076break = 0;
            onChanged();
            return this;
        }

        /* renamed from: protected, reason: not valid java name */
        public c.Cif m20861protected(int i) {
            return (c.Cif) m20836implements().m21454catch(i);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public n1 buildPartial() {
            n1 n1Var = new n1(this, (Cdo) null);
            n1Var.name_ = this.f17082if;
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                if ((this.f17078do & 1) != 0) {
                    this.f17080for = Collections.unmodifiableList(this.f17080for);
                    this.f17078do &= -2;
                }
                n1Var.fields_ = this.f17080for;
            } else {
                n1Var.fields_ = v0Var.m21453case();
            }
            if ((this.f17078do & 2) != 0) {
                this.f17085try = this.f17085try.getUnmodifiableView();
                this.f17078do &= -3;
            }
            n1Var.oneofs_ = this.f17085try;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f17079else;
            if (v0Var2 == null) {
                if ((this.f17078do & 4) != 0) {
                    this.f17077case = Collections.unmodifiableList(this.f17077case);
                    this.f17078do &= -5;
                }
                n1Var.options_ = this.f17077case;
            } else {
                n1Var.options_ = v0Var2.m21453case();
            }
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var == null) {
                n1Var.sourceContext_ = this.f17081goto;
            } else {
                n1Var.sourceContext_ = (c1) a1Var.m19686do();
            }
            n1Var.syntax_ = this.f17076break;
            onBuilt();
            return n1Var;
        }

        public Cif q(int i, String str) {
            Objects.requireNonNull(str);
            m20837strictfp();
            this.f17085try.set(i, (int) str);
            onChanged();
            return this;
        }

        public Cif r(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                m20838volatile();
                this.f17077case.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17082if = "";
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                this.f17080for = Collections.emptyList();
                this.f17078do &= -2;
            } else {
                v0Var.m21458else();
            }
            this.f17085try = s.f17207try;
            this.f17078do &= -3;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f17079else;
            if (v0Var2 == null) {
                this.f17077case = Collections.emptyList();
                this.f17078do &= -5;
            } else {
                v0Var2.m21458else();
            }
            if (this.f17084this == null) {
                this.f17081goto = null;
            } else {
                this.f17081goto = null;
                this.f17084this = null;
            }
            this.f17076break = 0;
            return this;
        }

        public Cif s(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20838volatile();
                this.f17077case.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m20865super(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f17079else;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20838volatile();
                this.f17077case.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        /* renamed from: switch, reason: not valid java name */
        public Cif m20866switch() {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                this.f17080for = Collections.emptyList();
                this.f17078do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: synchronized, reason: not valid java name */
        public o0.Cif m20867synchronized(int i) {
            return (o0.Cif) b().m21454catch(i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: t, reason: merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        /* renamed from: this, reason: not valid java name */
        public c.Cif m20868this(int i) {
            return (c.Cif) m20836implements().m21462if(i, c.getDefaultInstance());
        }

        /* renamed from: throw, reason: not valid java name */
        public o0.Cif m20869throw() {
            return (o0.Cif) b().m21460for(o0.getDefaultInstance());
        }

        /* renamed from: throws, reason: not valid java name */
        public Cif m20870throws() {
            this.f17082if = n1.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        /* renamed from: transient, reason: not valid java name */
        public List<c.Cif> m20871transient() {
            return m20836implements().m21455class();
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m20872try(int i, c cVar) {
            v0<c, c.Cif, FieldOrBuilder> v0Var = this.f17083new;
            if (v0Var == null) {
                Objects.requireNonNull(cVar);
                m20835continue();
                this.f17080for.add(i, cVar);
                onChanged();
            } else {
                v0Var.m21464new(i, cVar);
            }
            return this;
        }

        public Cif u(c1.Cif cif) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var == null) {
                this.f17081goto = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            return this;
        }

        public Cif v(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f17084this;
            if (a1Var == null) {
                Objects.requireNonNull(c1Var);
                this.f17081goto = c1Var;
                onChanged();
            } else {
                a1Var.m19691this(c1Var);
            }
            return this;
        }

        public Cif w(i1 i1Var) {
            Objects.requireNonNull(i1Var);
            this.f17076break = i1Var.getNumber();
            onChanged();
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public o0.Cif m20873while(int i) {
            return (o0.Cif) b().m21462if(i, o0.getDefaultInstance());
        }

        public Cif x(int i) {
            this.f17076break = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: y, reason: merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            this.f17082if = "";
            this.f17080for = Collections.emptyList();
            this.f17085try = s.f17207try;
            this.f17077case = Collections.emptyList();
            this.f17076break = 0;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f17082if = "";
            this.f17080for = Collections.emptyList();
            this.f17085try = s.f17207try;
            this.f17077case = Collections.emptyList();
            this.f17076break = 0;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ n1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static n1 getDefaultInstance() {
        return f17074do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return o1.f17134do;
    }

    public static Cif newBuilder() {
        return f17074do.toBuilder();
    }

    public static n1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (n1) GeneratedMessageV3.parseDelimitedWithIOException(f17075if, inputStream);
    }

    public static n1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f17075if.parseFrom(byteBuffer);
    }

    public static Parser<n1> parser() {
        return f17075if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return super.equals(obj);
        }
        n1 n1Var = (n1) obj;
        if (getName().equals(n1Var.getName()) && getFieldsList().equals(n1Var.getFieldsList()) && getOneofsList().equals(n1Var.getOneofsList()) && getOptionsList().equals(n1Var.getOptionsList()) && hasSourceContext() == n1Var.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(n1Var.getSourceContext())) && this.syntax_ == n1Var.syntax_ && this.unknownFields.equals(n1Var.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public c getFields(int i) {
        return this.fields_.get(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getFieldsCount() {
        return this.fields_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<c> getFieldsList() {
        return this.fields_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public FieldOrBuilder getFieldsOrBuilder(int i) {
        return this.fields_.get(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<? extends FieldOrBuilder> getFieldsOrBuilderList() {
        return this.fields_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public String getOneofs(int i) {
        return this.oneofs_.get(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ByteString getOneofsBytes(int i) {
        return this.oneofs_.getByteString(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getOneofsCount() {
        return this.oneofs_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<n1> getParserForType() {
        return f17075if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.fields_.size(); i2++) {
            iComputeStringSize += Cnative.m20900synchronized(2, this.fields_.get(i2));
        }
        int iComputeStringSizeNoTag = 0;
        for (int i3 = 0; i3 < this.oneofs_.size(); i3++) {
            iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.oneofs_.getRaw(i3));
        }
        int size = iComputeStringSize + iComputeStringSizeNoTag + (getOneofsList().size() * 1);
        for (int i4 = 0; i4 < this.options_.size(); i4++) {
            size += Cnative.m20900synchronized(4, this.options_.get(i4));
        }
        if (this.sourceContext_ != null) {
            size += Cnative.m20900synchronized(5, getSourceContext());
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            size += Cnative.m20887import(6, this.syntax_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public c1 getSourceContext() {
        c1 c1Var = this.sourceContext_;
        return c1Var == null ? c1.getDefaultInstance() : c1Var;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        return getSourceContext();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public i1 getSyntax() {
        i1 i1VarValueOf = i1.valueOf(this.syntax_);
        return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.TypeOrBuilder
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
        if (getFieldsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getFieldsList().hashCode();
        }
        if (getOneofsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getOneofsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 6) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return o1.f17138if.m19575new(n1.class, Cif.class);
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
        return new n1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        for (int i = 0; i < this.fields_.size(); i++) {
            cnative.f0(2, this.fields_.get(i));
        }
        for (int i2 = 0; i2 < this.oneofs_.size(); i2++) {
            GeneratedMessageV3.writeString(cnative, 3, this.oneofs_.getRaw(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            cnative.f0(4, this.options_.get(i3));
        }
        if (this.sourceContext_ != null) {
            cnative.f0(5, getSourceContext());
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            cnative.writeEnum(6, this.syntax_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ n1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(n1 n1Var) {
        return f17074do.toBuilder().g(n1Var);
    }

    public static n1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17075if.parseFrom(byteBuffer, cimplements);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ProtocolStringList getOneofsList() {
        return this.oneofs_;
    }

    private n1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static n1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (n1) GeneratedMessageV3.parseDelimitedWithIOException(f17075if, inputStream, cimplements);
    }

    public static n1 parseFrom(ByteString byteString) throws n {
        return f17075if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public n1 getDefaultInstanceForType() {
        return f17074do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17074do ? new Cif(cdo) : new Cif(cdo).g(this);
    }

    public static n1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17075if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private n1() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.fields_ = Collections.emptyList();
        this.oneofs_ = s.f17207try;
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static n1 parseFrom(byte[] bArr) throws n {
        return f17075if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static n1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17075if.parseFrom(bArr, cimplements);
    }

    public static n1 parseFrom(InputStream inputStream) throws IOException {
        return (n1) GeneratedMessageV3.parseWithIOException(f17075if, inputStream);
    }

    public static n1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (n1) GeneratedMessageV3.parseWithIOException(f17075if, inputStream, cimplements);
    }

    public static n1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (n1) GeneratedMessageV3.parseWithIOException(f17075if, codedInputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private n1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.fields_ = new ArrayList();
                                i |= 1;
                            }
                            this.fields_.add(codedInputStream.mo18430interface(c.parser(), cimplements));
                        } else if (iL == 26) {
                            String strK = codedInputStream.k();
                            if ((i & 2) == 0) {
                                this.oneofs_ = new s();
                                i |= 2;
                            }
                            this.oneofs_.add((LazyStringList) strK);
                        } else if (iL == 34) {
                            if ((i & 4) == 0) {
                                this.options_ = new ArrayList();
                                i |= 4;
                            }
                            this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
                        } else if (iL == 42) {
                            c1 c1Var = this.sourceContext_;
                            c1.Cif builder = c1Var != null ? c1Var.toBuilder() : null;
                            c1 c1Var2 = (c1) codedInputStream.mo18430interface(c1.parser(), cimplements);
                            this.sourceContext_ = c1Var2;
                            if (builder != null) {
                                builder.m19947class(c1Var2);
                                this.sourceContext_ = builder.buildPartial();
                            }
                        } else if (iL != 48) {
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
                    this.fields_ = Collections.unmodifiableList(this.fields_);
                }
                if ((i & 2) != 0) {
                    this.oneofs_ = this.oneofs_.getUnmodifiableView();
                }
                if ((i & 4) != 0) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static n1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (n1) GeneratedMessageV3.parseWithIOException(f17075if, codedInputStream, cimplements);
    }
}
