package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Cvolatile;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.c2;
import com.google.protobuf.q;
import com.google.protobuf.t1;
import freemarker.ext.servlet.FreemarkerServlet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public abstract class GeneratedMessage extends AbstractMessage implements Serializable {
    public static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    public t1 unknownFields;

    public interface BuilderParent extends AbstractMessage.BuilderParent {
    }

    public interface ExtendableMessageOrBuilder<MessageType extends Cthis> extends MessageOrBuilder {
        @Override // com.google.protobuf.MessageOrBuilder
        Message getDefaultInstanceForType();

        <Type> Type getExtension(Cbreak<MessageType, Type> cbreak);

        <Type> Type getExtension(Cbreak<MessageType, List<Type>> cbreak, int i);

        <Type> Type getExtension(Cinterface<MessageType, Type> cinterface);

        <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i);

        <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile);

        <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i);

        <Type> int getExtensionCount(Cbreak<MessageType, List<Type>> cbreak);

        <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface);

        <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile);

        <Type> boolean hasExtension(Cbreak<MessageType, Type> cbreak);

        <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface);

        <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile);
    }

    public interface ExtensionDescriptorRetriever {
        Descriptors.Celse getDescriptor();
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$break, reason: invalid class name */
    public static class Cbreak<ContainingType extends Message, Type> extends Cvolatile<ContainingType, Type> {

        /* renamed from: case, reason: not valid java name */
        private final Cvolatile.Cdo f16437case;

        /* renamed from: do, reason: not valid java name */
        private ExtensionDescriptorRetriever f16438do;

        /* renamed from: for, reason: not valid java name */
        private final Message f16439for;

        /* renamed from: if, reason: not valid java name */
        private final Class f16440if;

        /* renamed from: new, reason: not valid java name */
        private final Method f16441new;

        /* renamed from: try, reason: not valid java name */
        private final Method f16442try;

        /* renamed from: com.google.protobuf.GeneratedMessage$break$do, reason: invalid class name */
        public class Cdo implements ExtensionDescriptorRetriever {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Descriptors.Celse f16443do;

            public Cdo(Cbreak cbreak, Descriptors.Celse celse) {
                this.f16443do = celse;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtensionDescriptorRetriever
            public Descriptors.Celse getDescriptor() {
                return this.f16443do;
            }
        }

        public Cbreak(ExtensionDescriptorRetriever extensionDescriptorRetriever, Class cls, Message message, Cvolatile.Cdo cdo) {
            if (Message.class.isAssignableFrom(cls) && !cls.isInstance(message)) {
                String name = cls.getName();
                throw new IllegalArgumentException(name.length() != 0 ? "Bad messageDefaultInstance for ".concat(name) : new String("Bad messageDefaultInstance for "));
            }
            this.f16438do = extensionDescriptorRetriever;
            this.f16440if = cls;
            this.f16439for = message;
            if (ProtocolMessageEnum.class.isAssignableFrom(cls)) {
                this.f16441new = GeneratedMessage.getMethodOrDie(cls, "valueOf", Descriptors.Ccase.class);
                this.f16442try = GeneratedMessage.getMethodOrDie(cls, "getValueDescriptor", new Class[0]);
            } else {
                this.f16441new = null;
                this.f16442try = null;
            }
            this.f16437case = cdo;
        }

        @Override // com.google.protobuf.Cvolatile, com.google.protobuf.Cinterface
        /* renamed from: break, reason: not valid java name */
        public Message mo19450for() {
            return this.f16439for;
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: case, reason: not valid java name */
        public boolean mo19444case() {
            return mo19451goto().isRepeated();
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: class, reason: not valid java name */
        public Object mo19445class(Object obj) {
            int i = Ctry.f16463do[mo19451goto().m19302while().ordinal()];
            return i != 1 ? i != 2 ? obj : GeneratedMessage.invokeOrDie(this.f16441new, null, (Descriptors.Ccase) obj) : this.f16440if.isInstance(obj) ? obj : this.f16439for.newBuilderForType().mergeFrom((Message) obj).build();
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: const, reason: not valid java name */
        public Object mo19446const(Object obj) {
            return Ctry.f16463do[mo19451goto().m19302while().ordinal()] != 2 ? obj : GeneratedMessage.invokeOrDie(this.f16442try, obj, new Object[0]);
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: do, reason: not valid java name */
        public Type mo19447do() {
            return mo19444case() ? (Type) Collections.emptyList() : mo19451goto().m19302while() == Descriptors.Celse.Cdo.MESSAGE ? (Type) this.f16439for : (Type) mo19445class(mo19451goto().m19283const());
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: else, reason: not valid java name */
        public Object mo19448else(Object obj) {
            Descriptors.Celse celseMo19451goto = mo19451goto();
            if (!celseMo19451goto.isRepeated()) {
                return mo19445class(obj);
            }
            if (celseMo19451goto.m19302while() != Descriptors.Celse.Cdo.MESSAGE && celseMo19451goto.m19302while() != Descriptors.Celse.Cdo.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(mo19445class(it.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: final, reason: not valid java name */
        public Object mo19449final(Object obj) {
            Descriptors.Celse celseMo19451goto = mo19451goto();
            if (!celseMo19451goto.isRepeated()) {
                return mo19446const(obj);
            }
            if (celseMo19451goto.m19302while() != Descriptors.Celse.Cdo.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(mo19446const(it.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: goto, reason: not valid java name */
        public Descriptors.Celse mo19451goto() {
            ExtensionDescriptorRetriever extensionDescriptorRetriever = this.f16438do;
            if (extensionDescriptorRetriever != null) {
                return extensionDescriptorRetriever.getDescriptor();
            }
            throw new IllegalStateException("getDescriptor() called before internalInit()");
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: if, reason: not valid java name */
        public c2.Cif mo19452if() {
            return mo19451goto().getLiteType();
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: new, reason: not valid java name */
        public int mo19453new() {
            return mo19451goto().getNumber();
        }

        /* renamed from: super, reason: not valid java name */
        public void m19454super(Descriptors.Celse celse) {
            if (this.f16438do != null) {
                throw new IllegalStateException("Already initialized.");
            }
            this.f16438do = new Cdo(this, celse);
        }

        @Override // com.google.protobuf.Cvolatile
        /* renamed from: this, reason: not valid java name */
        public Cvolatile.Cdo mo19455this() {
            return this.f16437case;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$case, reason: invalid class name */
    public static abstract class Ccase<BuilderType extends Ccase<BuilderType>> extends AbstractMessage.Cdo<BuilderType> {

        /* renamed from: do, reason: not valid java name */
        private BuilderParent f16444do;

        /* renamed from: for, reason: not valid java name */
        private boolean f16445for;

        /* renamed from: if, reason: not valid java name */
        private Ccase<BuilderType>.Cdo f16446if;

        /* renamed from: new, reason: not valid java name */
        private t1 f16447new;

        /* renamed from: com.google.protobuf.GeneratedMessage$case$do, reason: invalid class name */
        public class Cdo implements BuilderParent {
            private Cdo() {
            }

            @Override // com.google.protobuf.AbstractMessage.BuilderParent
            public void markDirty() {
                Ccase.this.onChanged();
            }

            public /* synthetic */ Cdo(Ccase ccase, Cdo cdo) {
                this();
            }
        }

        public Ccase() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<Descriptors.Celse, Object> getAllFieldsMutable() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.Celse> listM19332super = m19464goto().f16382do.m19332super();
            int iM19253class = 0;
            while (iM19253class < listM19332super.size()) {
                Descriptors.Celse oneofFieldDescriptor = listM19332super.get(iM19253class);
                Descriptors.Cbreak cbreakM19281catch = oneofFieldDescriptor.m19281catch();
                if (cbreakM19281catch != null) {
                    iM19253class += cbreakM19281catch.m19253class() - 1;
                    if (hasOneof(cbreakM19281catch)) {
                        oneofFieldDescriptor = getOneofFieldDescriptor(cbreakM19281catch);
                        treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                    }
                } else if (oneofFieldDescriptor.isRepeated()) {
                    List list = (List) getField(oneofFieldDescriptor);
                    if (!list.isEmpty()) {
                        treeMap.put(oneofFieldDescriptor, list);
                    }
                } else if (hasField(oneofFieldDescriptor)) {
                    treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                }
                iM19253class++;
            }
            return treeMap;
        }

        /* renamed from: break, reason: not valid java name */
        public boolean mo19457break(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
            return cif.m21251final(i, codedInputStream);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mo18392clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType setField(Descriptors.Celse celse, Object obj) {
            m19464goto().m19422case(celse).set(this, obj);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            m19464goto().m19422case(celse).setRepeated(this, i, obj);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType setUnknownFields(t1 t1Var) {
            this.f16447new = t1Var;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo
        void dispose() {
            this.f16444do = null;
        }

        /* renamed from: else, reason: not valid java name */
        public BuilderParent m19462else() {
            if (this.f16446if == null) {
                this.f16446if = new Cdo(this, null);
            }
            return this.f16446if;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType clear() {
            this.f16447new = t1.m21189for();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            return Collections.unmodifiableMap(getAllFieldsMutable());
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return m19464goto().f16382do;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            Object obj = m19464goto().m19422case(celse).get(this);
            return celse.isRepeated() ? Collections.unmodifiableList((List) obj) : obj;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.Celse celse) {
            return m19464goto().m19422case(celse).getBuilder(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            return m19464goto().m19424else(cbreak).m19439if(this);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            return m19464goto().m19422case(celse).getRepeated(this, i);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i) {
            return m19464goto().m19422case(celse).getRepeatedBuilder(this, i);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            return m19464goto().m19422case(celse).getRepeatedCount(this);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.f16447new;
        }

        /* renamed from: goto, reason: not valid java name */
        public abstract FieldAccessorTable m19464goto();

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            return m19464goto().m19422case(celse).has(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            return m19464goto().m19424else(cbreak).m19440new(this);
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType addRepeatedField(Descriptors.Celse celse, Object obj) {
            m19464goto().m19422case(celse).addRepeated(this, obj);
            return this;
        }

        public MapField internalGetMapField(int i) {
            String name = getClass().getName();
            throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
        }

        public MapField internalGetMutableMapField(int i) {
            String name = getClass().getName();
            throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
        }

        public boolean isClean() {
            return this.f16445for;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            for (Descriptors.Celse celse : getDescriptorForType().m19332super()) {
                if (celse.m19280abstract() && !hasField(celse)) {
                    return false;
                }
                if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    if (celse.isRepeated()) {
                        Iterator it = ((List) getField(celse)).iterator();
                        while (it.hasNext()) {
                            if (!((Message) it.next()).isInitialized()) {
                                return false;
                            }
                        }
                    } else if (hasField(celse) && !((Message) getField(celse)).isInitialized()) {
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo
        public void markClean() {
            this.f16445for = true;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType clearField(Descriptors.Celse celse) {
            m19464goto().m19422case(celse).clear(this);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.Celse celse) {
            return m19464goto().m19422case(celse).newBuilder();
        }

        public void onBuilt() {
            if (this.f16444do != null) {
                markClean();
            }
        }

        public final void onChanged() {
            BuilderParent builderParent;
            if (!this.f16445for || (builderParent = this.f16444do) == null) {
                return;
            }
            builderParent.markDirty();
            this.f16445for = false;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mergeUnknownFields(t1 t1Var) {
            this.f16447new = t1.m21184break(this.f16447new).m21260public(t1Var).build();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType clearOneof(Descriptors.Cbreak cbreak) {
            m19464goto().m19424else(cbreak).m19437do(this);
            return this;
        }

        public Ccase(BuilderParent builderParent) {
            this.f16447new = t1.m21189for();
            this.f16444do = builderParent;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$do, reason: invalid class name */
    public class Cdo implements BuilderParent {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AbstractMessage.BuilderParent f16449do;

        public Cdo(GeneratedMessage generatedMessage, AbstractMessage.BuilderParent builderParent) {
            this.f16449do = builderParent;
        }

        @Override // com.google.protobuf.AbstractMessage.BuilderParent
        public void markDirty() {
            this.f16449do.markDirty();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$else, reason: invalid class name */
    public static abstract class Celse implements ExtensionDescriptorRetriever {

        /* renamed from: do, reason: not valid java name */
        private volatile Descriptors.Celse f16450do;

        private Celse() {
        }

        /* renamed from: do, reason: not valid java name */
        public abstract Descriptors.Celse mo19469do();

        @Override // com.google.protobuf.GeneratedMessage.ExtensionDescriptorRetriever
        public Descriptors.Celse getDescriptor() {
            if (this.f16450do == null) {
                synchronized (this) {
                    if (this.f16450do == null) {
                        this.f16450do = mo19469do();
                    }
                }
            }
            return this.f16450do;
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$for, reason: invalid class name */
    public class Cfor extends Celse {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ String f16451for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Message f16452if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Message message, String str) {
            super(null);
            this.f16452if = message;
            this.f16451for = str;
        }

        @Override // com.google.protobuf.GeneratedMessage.Celse
        /* renamed from: do */
        public Descriptors.Celse mo19469do() {
            return this.f16452if.getDescriptorForType().m19334this(this.f16451for);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$if, reason: invalid class name */
    public class Cif extends Celse {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f16454for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Message f16455if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Message message, int i) {
            super(null);
            this.f16455if = message;
            this.f16454for = i;
        }

        @Override // com.google.protobuf.GeneratedMessage.Celse
        /* renamed from: do */
        public Descriptors.Celse mo19469do() {
            return this.f16455if.getDescriptorForType().m19325final().get(this.f16454for);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$new, reason: invalid class name */
    public class Cnew extends Celse {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ String f16456for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Class f16457if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ String f16458new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(Class cls, String str, String str2) {
            super(null);
            this.f16457if = cls;
            this.f16456for = str;
            this.f16458new = str2;
        }

        @Override // com.google.protobuf.GeneratedMessage.Celse
        /* renamed from: do */
        public Descriptors.Celse mo19469do() {
            try {
                return ((Descriptors.FileDescriptor) this.f16457if.getClassLoader().loadClass(this.f16456for).getField("descriptor").get(null)).m19228catch(this.f16458new);
            } catch (Exception e) {
                String str = this.f16456for;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 62);
                sb.append("Cannot load descriptors: ");
                sb.append(str);
                sb.append(" is not a valid descriptor class name");
                throw new RuntimeException(sb.toString(), e);
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$try, reason: invalid class name */
    public static /* synthetic */ class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16463do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cdo.values().length];
            f16463do = iArr;
            try {
                iArr[Descriptors.Celse.Cdo.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16463do[Descriptors.Celse.Cdo.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public GeneratedMessage() {
        this.unknownFields = t1.m21189for();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends Cthis<MessageType>, T> Cvolatile<MessageType, T> checkNotLite(Cinterface<MessageType, T> cinterface) {
        if (cinterface.mo20622try()) {
            throw new IllegalArgumentException("Expected non-lite extension.");
        }
        return (Cvolatile) cinterface;
    }

    public static int computeStringSize(int i, Object obj) {
        return obj instanceof String ? Cnative.p(i, (String) obj) : Cnative.m20883final(i, (ByteString) obj);
    }

    public static int computeStringSizeNoTag(Object obj) {
        return obj instanceof String ? Cnative.q((String) obj) : Cnative.m20898super((ByteString) obj);
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        alwaysUseFieldBuilders = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<Descriptors.Celse, Object> getAllFieldsMutable(boolean z) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.Celse> listM19332super = internalGetFieldAccessorTable().f16382do.m19332super();
        int iM19253class = 0;
        while (iM19253class < listM19332super.size()) {
            Descriptors.Celse oneofFieldDescriptor = listM19332super.get(iM19253class);
            Descriptors.Cbreak cbreakM19281catch = oneofFieldDescriptor.m19281catch();
            if (cbreakM19281catch != null) {
                iM19253class += cbreakM19281catch.m19253class() - 1;
                if (hasOneof(cbreakM19281catch)) {
                    oneofFieldDescriptor = getOneofFieldDescriptor(cbreakM19281catch);
                    if (z || oneofFieldDescriptor.m19302while() != Descriptors.Celse.Cdo.STRING) {
                        treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                    } else {
                        treeMap.put(oneofFieldDescriptor, getFieldRaw(oneofFieldDescriptor));
                    }
                }
            } else if (oneofFieldDescriptor.isRepeated()) {
                List list = (List) getField(oneofFieldDescriptor);
                if (!list.isEmpty()) {
                    treeMap.put(oneofFieldDescriptor, list);
                }
            } else if (hasField(oneofFieldDescriptor)) {
                if (z) {
                    treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                }
            }
            iM19253class++;
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(name.length() + 45 + String.valueOf(str).length());
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(str);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <ContainingType extends Message, Type> Cbreak<ContainingType, Type> newFileScopedGeneratedExtension(Class cls, Message message) {
        return new Cbreak<>(null, cls, message, Cvolatile.Cdo.IMMUTABLE);
    }

    public static <ContainingType extends Message, Type> Cbreak<ContainingType, Type> newMessageScopedGeneratedExtension(Message message, int i, Class cls, Message message2) {
        return new Cbreak<>(new Cif(message, i), cls, message2, Cvolatile.Cdo.IMMUTABLE);
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream inputStream) throws IOException {
        try {
            return parser.parseDelimitedFrom(inputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream inputStream) throws IOException {
        try {
            return parser.parseFrom(inputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static void writeString(Cnative cnative, int i, Object obj) throws IOException {
        if (obj instanceof String) {
            cnative.writeString(i, (String) obj);
        } else {
            cnative.writeBytes(i, (ByteString) obj);
        }
    }

    public static void writeStringNoTag(Cnative cnative, Object obj) throws IOException {
        if (obj instanceof String) {
            cnative.z0((String) obj);
        } else {
            cnative.T((ByteString) obj);
        }
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.Celse, Object> getAllFields() {
        return Collections.unmodifiableMap(getAllFieldsMutable(false));
    }

    public Map<Descriptors.Celse, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(getAllFieldsMutable(true));
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Cif getDescriptorForType() {
        return internalGetFieldAccessorTable().f16382do;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19422case(celse).get(this);
    }

    public Object getFieldRaw(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19422case(celse).getRaw(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
        return internalGetFieldAccessorTable().m19424else(cbreak).m19438for(this);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<? extends GeneratedMessage> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.Celse celse, int i) {
        return internalGetFieldAccessorTable().m19422case(celse).getRepeated(this, i);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19422case(celse).getRepeatedCount(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM19665try = MessageReflection.m19665try(this, getAllFieldsRaw());
        this.memoizedSize = iM19665try;
        return iM19665try;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public t1 getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19422case(celse).has(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.Cbreak cbreak) {
        return internalGetFieldAccessorTable().m19424else(cbreak).m19441try(this);
    }

    public abstract FieldAccessorTable internalGetFieldAccessorTable();

    public MapField internalGetMapField(int i) {
        String name = getClass().getName();
        throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        for (Descriptors.Celse celse : getDescriptorForType().m19332super()) {
            if (celse.m19280abstract() && !hasField(celse)) {
                return false;
            }
            if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                if (celse.isRepeated()) {
                    Iterator it = ((List) getField(celse)).iterator();
                    while (it.hasNext()) {
                        if (!((Message) it.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (hasField(celse) && !((Message) getField(celse)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void makeExtensionsImmutable() {
    }

    @Override // com.google.protobuf.AbstractMessage
    public Message.Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
        return newBuilderForType((BuilderParent) new Cdo(this, builderParent));
    }

    public abstract Message.Builder newBuilderForType(BuilderParent builderParent);

    public boolean parseUnknownField(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
        return cif.m21251final(i, codedInputStream);
    }

    public Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.Cthis(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        MessageReflection.m19657catch(this, getAllFieldsRaw(), cnative, false);
    }

    public static final class FieldAccessorTable {

        /* renamed from: do, reason: not valid java name */
        private final Descriptors.Cif f16382do;

        /* renamed from: for, reason: not valid java name */
        private String[] f16383for;

        /* renamed from: if, reason: not valid java name */
        private final FieldAccessor[] f16384if;

        /* renamed from: new, reason: not valid java name */
        private final Cif[] f16385new;

        /* renamed from: try, reason: not valid java name */
        private volatile boolean f16386try;

        public interface FieldAccessor {
            void addRepeated(Ccase ccase, Object obj);

            void clear(Ccase ccase);

            Object get(Ccase ccase);

            Object get(GeneratedMessage generatedMessage);

            Message.Builder getBuilder(Ccase ccase);

            Object getRaw(Ccase ccase);

            Object getRaw(GeneratedMessage generatedMessage);

            Object getRepeated(Ccase ccase, int i);

            Object getRepeated(GeneratedMessage generatedMessage, int i);

            Message.Builder getRepeatedBuilder(Ccase ccase, int i);

            int getRepeatedCount(Ccase ccase);

            int getRepeatedCount(GeneratedMessage generatedMessage);

            Object getRepeatedRaw(Ccase ccase, int i);

            Object getRepeatedRaw(GeneratedMessage generatedMessage, int i);

            boolean has(Ccase ccase);

            boolean has(GeneratedMessage generatedMessage);

            Message.Builder newBuilder();

            void set(Ccase ccase, Object obj);

            void setRepeated(Ccase ccase, int i, Object obj);
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$do, reason: invalid class name */
        public static class Cdo implements FieldAccessor {

            /* renamed from: do, reason: not valid java name */
            private final Descriptors.Celse f16394do;

            /* renamed from: if, reason: not valid java name */
            private final Message f16395if;

            public Cdo(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
                this.f16394do = celse;
                this.f16395if = m19433if((GeneratedMessage) GeneratedMessage.invokeOrDie(GeneratedMessage.getMethodOrDie(cls, "getDefaultInstance", new Class[0]), null, new Object[0])).m19645break();
            }

            /* renamed from: do, reason: not valid java name */
            private MapField<?, ?> m19431do(Ccase ccase) {
                return ccase.internalGetMapField(this.f16394do.getNumber());
            }

            /* renamed from: for, reason: not valid java name */
            private MapField<?, ?> m19432for(Ccase ccase) {
                return ccase.internalGetMutableMapField(this.f16394do.getNumber());
            }

            /* renamed from: if, reason: not valid java name */
            private MapField<?, ?> m19433if(GeneratedMessage generatedMessage) {
                return generatedMessage.internalGetMapField(this.f16394do.getNumber());
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void addRepeated(Ccase ccase, Object obj) {
                m19432for(ccase).m19647catch().add((Message) obj);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void clear(Ccase ccase) {
                m19432for(ccase).m19647catch().clear();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessage generatedMessage) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < getRepeatedCount(generatedMessage); i++) {
                    arrayList.add(getRepeated(generatedMessage, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Ccase ccase) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessage generatedMessage) {
                return get(generatedMessage);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessage generatedMessage, int i) {
                return m19433if(generatedMessage).m19652goto().get(i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Ccase ccase, int i) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessage generatedMessage) {
                return m19433if(generatedMessage).m19652goto().size();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessage generatedMessage, int i) {
                return getRepeated(generatedMessage, i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessage generatedMessage) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return this.f16395if.newBuilderForType();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                clear(ccase);
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    addRepeated(ccase, it.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void setRepeated(Ccase ccase, int i, Object obj) {
                m19432for(ccase).m19647catch().set(i, (Message) obj);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(Ccase ccase) {
                return get(ccase);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Ccase ccase, int i) {
                return m19431do(ccase).m19652goto().get(i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Ccase ccase) {
                return m19431do(ccase).m19652goto().size();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Ccase ccase, int i) {
                return getRepeated(ccase, i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(Ccase ccase) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(Ccase ccase) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < getRepeatedCount(ccase); i++) {
                    arrayList.add(getRepeated(ccase, i));
                }
                return Collections.unmodifiableList(arrayList);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$else, reason: invalid class name */
        public static class Celse implements FieldAccessor {

            /* renamed from: break, reason: not valid java name */
            public final Descriptors.Celse f16396break;

            /* renamed from: case, reason: not valid java name */
            public final Method f16397case;

            /* renamed from: catch, reason: not valid java name */
            public final boolean f16398catch;

            /* renamed from: class, reason: not valid java name */
            public final boolean f16399class;

            /* renamed from: do, reason: not valid java name */
            public final Class<?> f16400do;

            /* renamed from: else, reason: not valid java name */
            public final Method f16401else;

            /* renamed from: for, reason: not valid java name */
            public final Method f16402for;

            /* renamed from: goto, reason: not valid java name */
            public final Method f16403goto;

            /* renamed from: if, reason: not valid java name */
            public final Method f16404if;

            /* renamed from: new, reason: not valid java name */
            public final Method f16405new;

            /* renamed from: this, reason: not valid java name */
            public final Method f16406this;

            /* renamed from: try, reason: not valid java name */
            public final Method f16407try;

            public Celse(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2, String str2) {
                Method methodOrDie;
                Method methodOrDie2;
                Method methodOrDie3;
                this.f16396break = celse;
                boolean z = celse.m19281catch() != null;
                this.f16398catch = z;
                boolean z2 = FieldAccessorTable.m19429this(celse.mo19232do()) || (!z && celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE);
                this.f16399class = z2;
                String strValueOf = String.valueOf(str);
                Method methodOrDie4 = GeneratedMessage.getMethodOrDie(cls, strValueOf.length() != 0 ? "get".concat(strValueOf) : new String("get"), new Class[0]);
                this.f16404if = methodOrDie4;
                String strValueOf2 = String.valueOf(str);
                this.f16402for = GeneratedMessage.getMethodOrDie(cls2, strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), new Class[0]);
                Class<?> returnType = methodOrDie4.getReturnType();
                this.f16400do = returnType;
                String strValueOf3 = String.valueOf(str);
                this.f16405new = GeneratedMessage.getMethodOrDie(cls2, strValueOf3.length() != 0 ? "set".concat(strValueOf3) : new String("set"), returnType);
                Method methodOrDie5 = null;
                if (z2) {
                    String strValueOf4 = String.valueOf(str);
                    methodOrDie = GeneratedMessage.getMethodOrDie(cls, strValueOf4.length() != 0 ? "has".concat(strValueOf4) : new String("has"), new Class[0]);
                } else {
                    methodOrDie = null;
                }
                this.f16407try = methodOrDie;
                if (z2) {
                    String strValueOf5 = String.valueOf(str);
                    methodOrDie2 = GeneratedMessage.getMethodOrDie(cls2, strValueOf5.length() != 0 ? "has".concat(strValueOf5) : new String("has"), new Class[0]);
                } else {
                    methodOrDie2 = null;
                }
                this.f16397case = methodOrDie2;
                String strValueOf6 = String.valueOf(str);
                this.f16401else = GeneratedMessage.getMethodOrDie(cls2, strValueOf6.length() != 0 ? FreemarkerServlet.r.concat(strValueOf6) : new String(FreemarkerServlet.r), new Class[0]);
                if (z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 7);
                    sb.append("get");
                    sb.append(str2);
                    sb.append("Case");
                    methodOrDie3 = GeneratedMessage.getMethodOrDie(cls, sb.toString(), new Class[0]);
                } else {
                    methodOrDie3 = null;
                }
                this.f16403goto = methodOrDie3;
                if (z) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 7);
                    sb2.append("get");
                    sb2.append(str2);
                    sb2.append("Case");
                    methodOrDie5 = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                }
                this.f16406this = methodOrDie5;
            }

            /* renamed from: do, reason: not valid java name */
            private int m19434do(Ccase ccase) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16406this, ccase, new Object[0])).getNumber();
            }

            /* renamed from: if, reason: not valid java name */
            private int m19435if(GeneratedMessage generatedMessage) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16403goto, generatedMessage, new Object[0])).getNumber();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void addRepeated(Ccase ccase, Object obj) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void clear(Ccase ccase) {
                GeneratedMessage.invokeOrDie(this.f16401else, ccase, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessage generatedMessage) {
                return GeneratedMessage.invokeOrDie(this.f16404if, generatedMessage, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Ccase ccase) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessage generatedMessage) {
                return get(generatedMessage);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessage generatedMessage, int i) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Ccase ccase, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessage generatedMessage) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessage generatedMessage, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessage generatedMessage) {
                return !this.f16399class ? this.f16398catch ? m19435if(generatedMessage) == this.f16396break.getNumber() : !get(generatedMessage).equals(this.f16396break.m19283const()) : ((Boolean) GeneratedMessage.invokeOrDie(this.f16407try, generatedMessage, new Object[0])).booleanValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                GeneratedMessage.invokeOrDie(this.f16405new, ccase, obj);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void setRepeated(Ccase ccase, int i, Object obj) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(Ccase ccase) {
                return GeneratedMessage.invokeOrDie(this.f16402for, ccase, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(Ccase ccase) {
                return get(ccase);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Ccase ccase, int i) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Ccase ccase) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Ccase ccase, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(Ccase ccase) {
                if (this.f16399class) {
                    return ((Boolean) GeneratedMessage.invokeOrDie(this.f16397case, ccase, new Object[0])).booleanValue();
                }
                if (this.f16398catch) {
                    return m19434do(ccase) == this.f16396break.getNumber();
                }
                return !get(ccase).equals(this.f16396break.m19283const());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$goto, reason: invalid class name */
        public static final class Cgoto extends Celse {

            /* renamed from: const, reason: not valid java name */
            private final Method f16416const;

            /* renamed from: final, reason: not valid java name */
            private final Method f16417final;

            public Cgoto(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                this.f16416const = GeneratedMessage.getMethodOrDie(this.f16400do, "newBuilder", new Class[0]);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 10);
                sb.append("get");
                sb.append(str);
                sb.append("Builder");
                this.f16417final = GeneratedMessage.getMethodOrDie(cls2, sb.toString(), new Class[0]);
            }

            /* renamed from: for, reason: not valid java name */
            private Object m19436for(Object obj) {
                return this.f16400do.isInstance(obj) ? obj : ((Message.Builder) GeneratedMessage.invokeOrDie(this.f16416const, null, new Object[0])).mergeFrom((Message) obj).buildPartial();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Ccase ccase) {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f16417final, ccase, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f16416const, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                super.set(ccase, m19436for(obj));
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$if, reason: invalid class name */
        public static class Cif {

            /* renamed from: do, reason: not valid java name */
            private final Descriptors.Cif f16418do;

            /* renamed from: for, reason: not valid java name */
            private final Method f16419for;

            /* renamed from: if, reason: not valid java name */
            private final Method f16420if;

            /* renamed from: new, reason: not valid java name */
            private final Method f16421new;

            public Cif(Descriptors.Cif cif, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
                this.f16418do = cif;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                sb.append("get");
                sb.append(str);
                sb.append("Case");
                this.f16420if = GeneratedMessage.getMethodOrDie(cls, sb.toString(), new Class[0]);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
                sb2.append("get");
                sb2.append(str);
                sb2.append("Case");
                this.f16419for = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                String strValueOf = String.valueOf(str);
                this.f16421new = GeneratedMessage.getMethodOrDie(cls2, strValueOf.length() != 0 ? FreemarkerServlet.r.concat(strValueOf) : new String(FreemarkerServlet.r), new Class[0]);
            }

            /* renamed from: do, reason: not valid java name */
            public void m19437do(Ccase ccase) {
                GeneratedMessage.invokeOrDie(this.f16421new, ccase, new Object[0]);
            }

            /* renamed from: for, reason: not valid java name */
            public Descriptors.Celse m19438for(GeneratedMessage generatedMessage) {
                int number = ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16420if, generatedMessage, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f16418do.m19320break(number);
                }
                return null;
            }

            /* renamed from: if, reason: not valid java name */
            public Descriptors.Celse m19439if(Ccase ccase) {
                int number = ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16419for, ccase, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f16418do.m19320break(number);
                }
                return null;
            }

            /* renamed from: new, reason: not valid java name */
            public boolean m19440new(Ccase ccase) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16419for, ccase, new Object[0])).getNumber() != 0;
            }

            /* renamed from: try, reason: not valid java name */
            public boolean m19441try(GeneratedMessage generatedMessage) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f16420if, generatedMessage, new Object[0])).getNumber() != 0;
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$new, reason: invalid class name */
        public static class Cnew implements FieldAccessor {

            /* renamed from: break, reason: not valid java name */
            public final Method f16422break;

            /* renamed from: case, reason: not valid java name */
            public final Method f16423case;

            /* renamed from: do, reason: not valid java name */
            public final Class f16424do;

            /* renamed from: else, reason: not valid java name */
            public final Method f16425else;

            /* renamed from: for, reason: not valid java name */
            public final Method f16426for;

            /* renamed from: goto, reason: not valid java name */
            public final Method f16427goto;

            /* renamed from: if, reason: not valid java name */
            public final Method f16428if;

            /* renamed from: new, reason: not valid java name */
            public final Method f16429new;

            /* renamed from: this, reason: not valid java name */
            public final Method f16430this;

            /* renamed from: try, reason: not valid java name */
            public final Method f16431try;

            public Cnew(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                sb.append("get");
                sb.append(str);
                sb.append("List");
                this.f16428if = GeneratedMessage.getMethodOrDie(cls, sb.toString(), new Class[0]);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
                sb2.append("get");
                sb2.append(str);
                sb2.append("List");
                this.f16426for = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                String strValueOf = String.valueOf(str);
                String strConcat = strValueOf.length() != 0 ? "get".concat(strValueOf) : new String("get");
                Class cls3 = Integer.TYPE;
                Method methodOrDie = GeneratedMessage.getMethodOrDie(cls, strConcat, cls3);
                this.f16429new = methodOrDie;
                String strValueOf2 = String.valueOf(str);
                this.f16431try = GeneratedMessage.getMethodOrDie(cls2, strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), cls3);
                Class<?> returnType = methodOrDie.getReturnType();
                this.f16424do = returnType;
                String strValueOf3 = String.valueOf(str);
                this.f16423case = GeneratedMessage.getMethodOrDie(cls2, strValueOf3.length() != 0 ? "set".concat(strValueOf3) : new String("set"), cls3, returnType);
                String strValueOf4 = String.valueOf(str);
                this.f16425else = GeneratedMessage.getMethodOrDie(cls2, strValueOf4.length() != 0 ? "add".concat(strValueOf4) : new String("add"), returnType);
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                sb3.append("get");
                sb3.append(str);
                sb3.append("Count");
                this.f16427goto = GeneratedMessage.getMethodOrDie(cls, sb3.toString(), new Class[0]);
                StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 8);
                sb4.append("get");
                sb4.append(str);
                sb4.append("Count");
                this.f16430this = GeneratedMessage.getMethodOrDie(cls2, sb4.toString(), new Class[0]);
                String strValueOf5 = String.valueOf(str);
                this.f16422break = GeneratedMessage.getMethodOrDie(cls2, strValueOf5.length() != 0 ? FreemarkerServlet.r.concat(strValueOf5) : new String(FreemarkerServlet.r), new Class[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void addRepeated(Ccase ccase, Object obj) {
                GeneratedMessage.invokeOrDie(this.f16425else, ccase, obj);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void clear(Ccase ccase) {
                GeneratedMessage.invokeOrDie(this.f16422break, ccase, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessage generatedMessage) {
                return GeneratedMessage.invokeOrDie(this.f16428if, generatedMessage, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Ccase ccase) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessage generatedMessage) {
                return get(generatedMessage);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessage generatedMessage, int i) {
                return GeneratedMessage.invokeOrDie(this.f16429new, generatedMessage, Integer.valueOf(i));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Ccase ccase, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessage generatedMessage) {
                return ((Integer) GeneratedMessage.invokeOrDie(this.f16427goto, generatedMessage, new Object[0])).intValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessage generatedMessage, int i) {
                return getRepeated(generatedMessage, i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessage generatedMessage) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                clear(ccase);
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    addRepeated(ccase, it.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void setRepeated(Ccase ccase, int i, Object obj) {
                GeneratedMessage.invokeOrDie(this.f16423case, ccase, Integer.valueOf(i), obj);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(Ccase ccase) {
                return GeneratedMessage.invokeOrDie(this.f16426for, ccase, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(Ccase ccase) {
                return get(ccase);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Ccase ccase, int i) {
                return GeneratedMessage.invokeOrDie(this.f16431try, ccase, Integer.valueOf(i));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Ccase ccase) {
                return ((Integer) GeneratedMessage.invokeOrDie(this.f16430this, ccase, new Object[0])).intValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Ccase ccase, int i) {
                return getRepeated(ccase, i);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public boolean has(Ccase ccase) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$this, reason: invalid class name */
        public static final class Cthis extends Celse {

            /* renamed from: const, reason: not valid java name */
            private final Method f16432const;

            /* renamed from: final, reason: not valid java name */
            private final Method f16433final;

            /* renamed from: super, reason: not valid java name */
            private final Method f16434super;

            public Cthis(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                sb.append("get");
                sb.append(str);
                sb.append("Bytes");
                this.f16432const = GeneratedMessage.getMethodOrDie(cls, sb.toString(), new Class[0]);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                sb2.append("get");
                sb2.append(str);
                sb2.append("Bytes");
                this.f16433final = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                sb3.append("set");
                sb3.append(str);
                sb3.append("Bytes");
                this.f16434super = GeneratedMessage.getMethodOrDie(cls2, sb3.toString(), ByteString.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessage generatedMessage) {
                return GeneratedMessage.invokeOrDie(this.f16432const, generatedMessage, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                if (obj instanceof ByteString) {
                    GeneratedMessage.invokeOrDie(this.f16434super, ccase, obj);
                } else {
                    super.set(ccase, obj);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRaw(Ccase ccase) {
                return GeneratedMessage.invokeOrDie(this.f16433final, ccase, new Object[0]);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$try, reason: invalid class name */
        public static final class Ctry extends Cnew {

            /* renamed from: catch, reason: not valid java name */
            private final Method f16435catch;

            /* renamed from: class, reason: not valid java name */
            private final Method f16436class;

            public Ctry(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
                super(celse, str, cls, cls2);
                this.f16435catch = GeneratedMessage.getMethodOrDie(this.f16424do, "newBuilder", new Class[0]);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 10);
                sb.append("get");
                sb.append(str);
                sb.append("Builder");
                this.f16436class = GeneratedMessage.getMethodOrDie(cls2, sb.toString(), Integer.TYPE);
            }

            /* renamed from: do, reason: not valid java name */
            private Object m19442do(Object obj) {
                return this.f16424do.isInstance(obj) ? obj : ((Message.Builder) GeneratedMessage.invokeOrDie(this.f16435catch, null, new Object[0])).mergeFrom((Message) obj).build();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void addRepeated(Ccase ccase, Object obj) {
                super.addRepeated(ccase, m19442do(obj));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Ccase ccase, int i) {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f16436class, ccase, Integer.valueOf(i));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f16435catch, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void setRepeated(Ccase ccase, int i, Object obj) {
                super.setRepeated(ccase, i, m19442do(obj));
            }
        }

        public FieldAccessorTable(Descriptors.Cif cif, String[] strArr, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
            this(cif, strArr);
            m19430try(cls, cls2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public FieldAccessor m19422case(Descriptors.Celse celse) {
            if (celse.m19282class() != this.f16382do) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (celse.m19286extends()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f16384if[celse.m19299throw()];
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public Cif m19424else(Descriptors.Cbreak cbreak) {
            if (cbreak.m19251break() == this.f16382do) {
                return this.f16385new[cbreak.m19255final()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        /* renamed from: goto, reason: not valid java name */
        private boolean m19426goto(Descriptors.Celse celse) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public static boolean m19429this(Descriptors.FileDescriptor fileDescriptor) {
            return fileDescriptor.m19241static() == Descriptors.FileDescriptor.Cdo.PROTO2;
        }

        /* renamed from: try, reason: not valid java name */
        public FieldAccessorTable m19430try(Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
            if (this.f16386try) {
                return this;
            }
            synchronized (this) {
                if (this.f16386try) {
                    return this;
                }
                int length = this.f16384if.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Descriptors.Celse celse = this.f16382do.m19332super().get(i);
                    String str = celse.m19281catch() != null ? this.f16383for[celse.m19281catch().m19255final() + length] : null;
                    if (celse.isRepeated()) {
                        if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                            if (celse.m19288finally() && m19426goto(celse)) {
                                this.f16384if[i] = new Cdo(celse, this.f16383for[i], cls, cls2);
                            } else {
                                this.f16384if[i] = new Ctry(celse, this.f16383for[i], cls, cls2);
                            }
                        } else if (celse.m19302while() == Descriptors.Celse.Cdo.ENUM) {
                            this.f16384if[i] = new Cfor(celse, this.f16383for[i], cls, cls2);
                        } else {
                            this.f16384if[i] = new Cnew(celse, this.f16383for[i], cls, cls2);
                        }
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                        this.f16384if[i] = new Cgoto(celse, this.f16383for[i], cls, cls2, str);
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.ENUM) {
                        this.f16384if[i] = new Ccase(celse, this.f16383for[i], cls, cls2, str);
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.STRING) {
                        this.f16384if[i] = new Cthis(celse, this.f16383for[i], cls, cls2, str);
                    } else {
                        this.f16384if[i] = new Celse(celse, this.f16383for[i], cls, cls2, str);
                    }
                    i++;
                }
                int length2 = this.f16385new.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f16385new[i2] = new Cif(this.f16382do, this.f16383for[i2 + length], cls, cls2);
                }
                this.f16386try = true;
                this.f16383for = null;
                return this;
            }
        }

        public FieldAccessorTable(Descriptors.Cif cif, String[] strArr) {
            this.f16382do = cif;
            this.f16383for = strArr;
            this.f16384if = new FieldAccessor[cif.m19332super().size()];
            this.f16385new = new Cif[cif.m19327import().size()];
            this.f16386try = false;
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$case, reason: invalid class name */
        public static final class Ccase extends Celse {

            /* renamed from: const, reason: not valid java name */
            private Descriptors.Ctry f16387const;

            /* renamed from: final, reason: not valid java name */
            private Method f16388final;

            /* renamed from: import, reason: not valid java name */
            private Method f16389import;

            /* renamed from: native, reason: not valid java name */
            private Method f16390native;

            /* renamed from: super, reason: not valid java name */
            private Method f16391super;

            /* renamed from: throw, reason: not valid java name */
            private boolean f16392throw;

            /* renamed from: while, reason: not valid java name */
            private Method f16393while;

            public Ccase(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                this.f16387const = celse.getEnumType();
                this.f16388final = GeneratedMessage.getMethodOrDie(this.f16400do, "valueOf", Descriptors.Ccase.class);
                this.f16391super = GeneratedMessage.getMethodOrDie(this.f16400do, "getValueDescriptor", new Class[0]);
                boolean zM19226abstract = celse.mo19232do().m19226abstract();
                this.f16392throw = zM19226abstract;
                if (zM19226abstract) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                    sb.append("get");
                    sb.append(str);
                    sb.append("Value");
                    this.f16393while = GeneratedMessage.getMethodOrDie(cls, sb.toString(), new Class[0]);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("Value");
                    this.f16389import = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb3.append("set");
                    sb3.append(str);
                    sb3.append("Value");
                    this.f16390native = GeneratedMessage.getMethodOrDie(cls2, sb3.toString(), Integer.TYPE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessage generatedMessage) {
                if (!this.f16392throw) {
                    return GeneratedMessage.invokeOrDie(this.f16391super, super.get(generatedMessage), new Object[0]);
                }
                return this.f16387const.m19358goto(((Integer) GeneratedMessage.invokeOrDie(this.f16393while, generatedMessage, new Object[0])).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void set(Ccase ccase, Object obj) {
                if (this.f16392throw) {
                    GeneratedMessage.invokeOrDie(this.f16390native, ccase, Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.set(ccase, GeneratedMessage.invokeOrDie(this.f16388final, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Celse, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(Ccase ccase) {
                if (this.f16392throw) {
                    return this.f16387const.m19358goto(((Integer) GeneratedMessage.invokeOrDie(this.f16389import, ccase, new Object[0])).intValue());
                }
                return GeneratedMessage.invokeOrDie(this.f16391super, super.get(ccase), new Object[0]);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$for, reason: invalid class name */
        public static final class Cfor extends Cnew {

            /* renamed from: catch, reason: not valid java name */
            private Descriptors.Ctry f16408catch;

            /* renamed from: class, reason: not valid java name */
            private final Method f16409class;

            /* renamed from: const, reason: not valid java name */
            private final Method f16410const;

            /* renamed from: final, reason: not valid java name */
            private boolean f16411final;

            /* renamed from: import, reason: not valid java name */
            private Method f16412import;

            /* renamed from: super, reason: not valid java name */
            private Method f16413super;

            /* renamed from: throw, reason: not valid java name */
            private Method f16414throw;

            /* renamed from: while, reason: not valid java name */
            private Method f16415while;

            public Cfor(Descriptors.Celse celse, String str, Class<? extends GeneratedMessage> cls, Class<? extends Ccase> cls2) {
                super(celse, str, cls, cls2);
                this.f16408catch = celse.getEnumType();
                this.f16409class = GeneratedMessage.getMethodOrDie(this.f16424do, "valueOf", Descriptors.Ccase.class);
                this.f16410const = GeneratedMessage.getMethodOrDie(this.f16424do, "getValueDescriptor", new Class[0]);
                boolean zM19226abstract = celse.mo19232do().m19226abstract();
                this.f16411final = zM19226abstract;
                if (zM19226abstract) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                    sb.append("get");
                    sb.append(str);
                    sb.append("Value");
                    String string = sb.toString();
                    Class cls3 = Integer.TYPE;
                    this.f16413super = GeneratedMessage.getMethodOrDie(cls, string, cls3);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("Value");
                    this.f16414throw = GeneratedMessage.getMethodOrDie(cls2, sb2.toString(), cls3);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb3.append("set");
                    sb3.append(str);
                    sb3.append("Value");
                    this.f16415while = GeneratedMessage.getMethodOrDie(cls2, sb3.toString(), cls3, cls3);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb4.append("add");
                    sb4.append(str);
                    sb4.append("Value");
                    this.f16412import = GeneratedMessage.getMethodOrDie(cls2, sb4.toString(), cls3);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void addRepeated(Ccase ccase, Object obj) {
                if (this.f16411final) {
                    GeneratedMessage.invokeOrDie(this.f16412import, ccase, Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.addRepeated(ccase, GeneratedMessage.invokeOrDie(this.f16409class, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessage generatedMessage) {
                ArrayList arrayList = new ArrayList();
                int repeatedCount = getRepeatedCount(generatedMessage);
                for (int i = 0; i < repeatedCount; i++) {
                    arrayList.add(getRepeated(generatedMessage, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessage generatedMessage, int i) {
                return this.f16411final ? this.f16408catch.m19358goto(((Integer) GeneratedMessage.invokeOrDie(this.f16413super, generatedMessage, Integer.valueOf(i))).intValue()) : GeneratedMessage.invokeOrDie(this.f16410const, super.getRepeated(generatedMessage, i), new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public void setRepeated(Ccase ccase, int i, Object obj) {
                if (this.f16411final) {
                    GeneratedMessage.invokeOrDie(this.f16415while, ccase, Integer.valueOf(i), Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.setRepeated(ccase, i, GeneratedMessage.invokeOrDie(this.f16409class, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object get(Ccase ccase) {
                ArrayList arrayList = new ArrayList();
                int repeatedCount = getRepeatedCount(ccase);
                for (int i = 0; i < repeatedCount; i++) {
                    arrayList.add(getRepeated(ccase, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.Cnew, com.google.protobuf.GeneratedMessage.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Ccase ccase, int i) {
                if (!this.f16411final) {
                    return GeneratedMessage.invokeOrDie(this.f16410const, super.getRepeated(ccase, i), new Object[0]);
                }
                return this.f16408catch.m19358goto(((Integer) GeneratedMessage.invokeOrDie(this.f16414throw, ccase, Integer.valueOf(i))).intValue());
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$goto, reason: invalid class name */
    public static abstract class Cgoto<MessageType extends Cthis, BuilderType extends Cgoto<MessageType, BuilderType>> extends Ccase<BuilderType> implements ExtendableMessageOrBuilder<MessageType> {

        /* renamed from: try, reason: not valid java name */
        private FieldSet<Descriptors.Celse> f16453try;

        public Cgoto() {
            this.f16453try = FieldSet.m19372native();
        }

        /* renamed from: extends, reason: not valid java name */
        private void m19470extends() {
            if (this.f16453try.m19382abstract()) {
                this.f16453try = this.f16453try.clone();
            }
        }

        /* renamed from: instanceof, reason: not valid java name */
        private void m19472instanceof(Descriptors.Celse celse) {
            if (celse.m19282class() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: native, reason: not valid java name */
        public FieldSet<Descriptors.Celse> m19473native() {
            this.f16453try.m19393protected();
            return this.f16453try;
        }

        /* renamed from: synchronized, reason: not valid java name */
        private void m19474synchronized(Cvolatile<MessageType, ?> cvolatile) {
            if (cvolatile.mo19451goto().m19282class() == getDescriptorForType()) {
                return;
            }
            String strMo19235if = cvolatile.mo19451goto().m19282class().mo19235if();
            String strMo19235if2 = getDescriptorForType().mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 62 + String.valueOf(strMo19235if2).length());
            sb.append("Extension is for type \"");
            sb.append(strMo19235if);
            sb.append("\" which does not match message type \"");
            sb.append(strMo19235if2);
            sb.append("\".");
            throw new IllegalArgumentException(sb.toString());
        }

        /* renamed from: abstract, reason: not valid java name */
        public final <Type> BuilderType m19475abstract(Cvolatile<MessageType, List<Type>> cvolatile, int i, Type type) {
            return (BuilderType) m19488strictfp(cvolatile, i, type);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase
        /* renamed from: break */
        public boolean mo19457break(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
            return MessageReflection.m19659else(codedInputStream, cif, cimplements, getDescriptorForType(), new MessageReflection.Cif(this), i);
        }

        /* renamed from: continue, reason: not valid java name */
        public final <Type> BuilderType m19476continue(Cvolatile<MessageType, Type> cvolatile, Type type) {
            return (BuilderType) m19494volatile(cvolatile, type);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mo18392clone() {
            return (BuilderType) super.mo18392clone();
        }

        /* renamed from: finally, reason: not valid java name */
        public boolean m19478finally() {
            return this.f16453try.m19385continue();
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable();
            allFieldsMutable.putAll(this.f16453try.m19394public());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            Object objM19395return = this.f16453try.m19395return(celseMo19451goto);
            return objM19395return == null ? celseMo19451goto.isRepeated() ? (Type) Collections.emptyList() : celseMo19451goto.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? (Type) cvolatileCheckNotLite.mo19450for() : (Type) cvolatileCheckNotLite.mo19448else(celseMo19451goto.m19283const()) : (Type) cvolatileCheckNotLite.mo19448else(objM19395return);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            return this.f16453try.m19386default(cvolatileCheckNotLite.mo19451goto());
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getField(celse);
            }
            m19472instanceof(celse);
            Object objM19395return = this.f16453try.m19395return(celse);
            return objM19395return == null ? celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? Cfinally.m20453try(celse.m19291native()) : celse.m19283const() : objM19395return;
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            if (!celse.m19286extends()) {
                return super.getRepeatedField(celse, i);
            }
            m19472instanceof(celse);
            return this.f16453try.m19398throws(celse, i);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getRepeatedFieldCount(celse);
            }
            m19472instanceof(celse);
            return this.f16453try.m19386default(celse);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            return this.f16453try.m19391package(cvolatileCheckNotLite.mo19451goto());
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.hasField(celse);
            }
            m19472instanceof(celse);
            return this.f16453try.m19391package(celse);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.Message.Builder
        /* renamed from: implements, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.setRepeatedField(celse, i, obj);
            }
            m19472instanceof(celse);
            m19470extends();
            this.f16453try.c(celse, i, obj);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType addRepeatedField(Descriptors.Celse celse, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.addRepeatedField(celse, obj);
            }
            m19472instanceof(celse);
            m19470extends();
            this.f16453try.m19388goto(celse, obj);
            onChanged();
            return this;
        }

        /* renamed from: interface, reason: not valid java name */
        public <Type> BuilderType m19481interface(Cbreak<MessageType, List<Type>> cbreak, int i, Type type) {
            return (BuilderType) m19488strictfp(cbreak, i, type);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && m19478finally();
        }

        /* renamed from: package, reason: not valid java name */
        public void m19482package(FieldSet<Descriptors.Celse> fieldSet) {
            this.f16453try = fieldSet;
        }

        /* renamed from: private, reason: not valid java name */
        public final void m19483private(Cthis cthis) {
            m19470extends();
            this.f16453try.m19399transient(cthis.extensions);
            onChanged();
        }

        /* renamed from: protected, reason: not valid java name */
        public <Type> BuilderType m19484protected(Cbreak<MessageType, Type> cbreak, Type type) {
            return (BuilderType) m19494volatile(cbreak, type);
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType clear() {
            this.f16453try = FieldSet.m19372native();
            return (BuilderType) super.clear();
        }

        /* renamed from: return, reason: not valid java name */
        public final <Type> BuilderType m19486return(Cvolatile<MessageType, ?> cvolatile) {
            return (BuilderType) m19487static(cvolatile);
        }

        /* renamed from: static, reason: not valid java name */
        public final <Type> BuilderType m19487static(Cinterface<MessageType, ?> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            m19470extends();
            this.f16453try.m19383break(cvolatileCheckNotLite.mo19451goto());
            onChanged();
            return this;
        }

        /* renamed from: strictfp, reason: not valid java name */
        public final <Type> BuilderType m19488strictfp(Cinterface<MessageType, List<Type>> cinterface, int i, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            m19470extends();
            this.f16453try.c(cvolatileCheckNotLite.mo19451goto(), i, cvolatileCheckNotLite.mo19446const(type));
            onChanged();
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public final <Type> BuilderType m19489super(Cvolatile<MessageType, List<Type>> cvolatile, Type type) {
            return (BuilderType) m19491throw(cvolatile, type);
        }

        /* renamed from: switch, reason: not valid java name */
        public <Type> BuilderType m19490switch(Cbreak<MessageType, ?> cbreak) {
            return (BuilderType) m19487static(cbreak);
        }

        /* renamed from: throw, reason: not valid java name */
        public final <Type> BuilderType m19491throw(Cinterface<MessageType, List<Type>> cinterface, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            m19470extends();
            this.f16453try.m19388goto(cvolatileCheckNotLite.mo19451goto(), cvolatileCheckNotLite.mo19446const(type));
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType clearField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.clearField(celse);
            }
            m19472instanceof(celse);
            m19470extends();
            this.f16453try.m19383break(celse);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessage.Ccase, com.google.protobuf.Message.Builder
        /* renamed from: transient, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType setField(Descriptors.Celse celse, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.setField(celse, obj);
            }
            m19472instanceof(celse);
            m19470extends();
            this.f16453try.b(celse, obj);
            onChanged();
            return this;
        }

        /* renamed from: volatile, reason: not valid java name */
        public final <Type> BuilderType m19494volatile(Cinterface<MessageType, Type> cinterface, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            m19470extends();
            this.f16453try.b(cvolatileCheckNotLite.mo19451goto(), cvolatileCheckNotLite.mo19449final(type));
            onChanged();
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public <Type> BuilderType m19495while(Cbreak<MessageType, List<Type>> cbreak, Type type) {
            return (BuilderType) m19491throw(cbreak, type);
        }

        public Cgoto(BuilderParent builderParent) {
            super(builderParent);
            this.f16453try = FieldSet.m19372native();
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile) {
            return hasExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile) {
            return getExtensionCount((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cbreak<MessageType, Type> cbreak) {
            return hasExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cbreak<MessageType, List<Type>> cbreak) {
            return getExtensionCount((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19474synchronized(cvolatileCheckNotLite);
            return (Type) cvolatileCheckNotLite.mo19445class(this.f16453try.m19398throws(cvolatileCheckNotLite.mo19451goto(), i));
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile) {
            return (Type) getExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cbreak<MessageType, Type> cbreak) {
            return (Type) getExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i) {
            return (Type) getExtension((Cinterface) cvolatile, i);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cbreak<MessageType, List<Type>> cbreak, int i) {
            return (Type) getExtension((Cinterface) cbreak, i);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$this, reason: invalid class name */
    public static abstract class Cthis<MessageType extends Cthis> extends GeneratedMessage implements ExtendableMessageOrBuilder<MessageType> {
        private static final long serialVersionUID = 1;
        private final FieldSet<Descriptors.Celse> extensions;

        /* renamed from: com.google.protobuf.GeneratedMessage$this$do, reason: invalid class name */
        public class Cdo {

            /* renamed from: do, reason: not valid java name */
            private final Iterator<Map.Entry<Descriptors.Celse, Object>> f16459do;

            /* renamed from: for, reason: not valid java name */
            private final boolean f16460for;

            /* renamed from: if, reason: not valid java name */
            private Map.Entry<Descriptors.Celse, Object> f16461if;

            public /* synthetic */ Cdo(Cthis cthis, boolean z, Cdo cdo) {
                this(z);
            }

            /* renamed from: do, reason: not valid java name */
            public void m19498do(int i, Cnative cnative) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.Celse, Object> entry = this.f16461if;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    Descriptors.Celse key = this.f16461if.getKey();
                    if (!this.f16460for || key.getLiteJavaType() != c2.Cfor.MESSAGE || key.isRepeated()) {
                        FieldSet.g(key, this.f16461if.getValue(), cnative);
                    } else if (this.f16461if instanceof q.Cif) {
                        cnative.s0(key.getNumber(), ((q.Cif) this.f16461if).m21001do().m21039final());
                    } else {
                        cnative.j0(key.getNumber(), (Message) this.f16461if.getValue());
                    }
                    if (this.f16459do.hasNext()) {
                        this.f16461if = this.f16459do.next();
                    } else {
                        this.f16461if = null;
                    }
                }
            }

            private Cdo(boolean z) {
                Iterator<Map.Entry<Descriptors.Celse, Object>> itM19390interface = Cthis.this.extensions.m19390interface();
                this.f16459do = itM19390interface;
                if (itM19390interface.hasNext()) {
                    this.f16461if = itM19390interface.next();
                }
                this.f16460for = z;
            }
        }

        public Cthis() {
            this.extensions = FieldSet.m19377synchronized();
        }

        /* renamed from: do, reason: not valid java name */
        private void m19496do(Descriptors.Celse celse) {
            if (celse.m19282class() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m19497if(Cvolatile<MessageType, ?> cvolatile) {
            if (cvolatile.mo19451goto().m19282class() == getDescriptorForType()) {
                return;
            }
            String strMo19235if = cvolatile.mo19451goto().m19282class().mo19235if();
            String strMo19235if2 = getDescriptorForType().mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 62 + String.valueOf(strMo19235if2).length());
            sb.append("Extension is for type \"");
            sb.append(strMo19235if);
            sb.append("\" which does not match message type \"");
            sb.append(strMo19235if2);
            sb.append("\".");
            throw new IllegalArgumentException(sb.toString());
        }

        public boolean extensionsAreInitialized() {
            return this.extensions.m19385continue();
        }

        public int extensionsSerializedSize() {
            return this.extensions.m19387extends();
        }

        public int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.m19396static();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Map<Descriptors.Celse, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19497if(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            Object objM19395return = this.extensions.m19395return(celseMo19451goto);
            return objM19395return == null ? celseMo19451goto.isRepeated() ? (Type) Collections.emptyList() : celseMo19451goto.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? (Type) cvolatileCheckNotLite.mo19450for() : (Type) cvolatileCheckNotLite.mo19448else(celseMo19451goto.m19283const()) : (Type) cvolatileCheckNotLite.mo19448else(objM19395return);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19497if(cvolatileCheckNotLite);
            return this.extensions.m19386default(cvolatileCheckNotLite.mo19451goto());
        }

        public Map<Descriptors.Celse, Object> getExtensionFields() {
            return this.extensions.m19394public();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getField(celse);
            }
            m19496do(celse);
            Object objM19395return = this.extensions.m19395return(celse);
            return objM19395return == null ? celse.isRepeated() ? Collections.emptyList() : celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? Cfinally.m20453try(celse.m19291native()) : celse.m19283const() : objM19395return;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            if (!celse.m19286extends()) {
                return super.getRepeatedField(celse, i);
            }
            m19496do(celse);
            return this.extensions.m19398throws(celse, i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getRepeatedFieldCount(celse);
            }
            m19496do(celse);
            return this.extensions.m19386default(celse);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19497if(cvolatileCheckNotLite);
            return this.extensions.m19391package(cvolatileCheckNotLite.mo19451goto());
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.hasField(celse);
            }
            m19496do(celse);
            return this.extensions.m19391package(celse);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public void makeExtensionsImmutable() {
            this.extensions.m19393protected();
        }

        public Cthis<MessageType>.Cdo newExtensionWriter() {
            return new Cdo(this, false, null);
        }

        public Cthis<MessageType>.Cdo newMessageSetExtensionWriter() {
            return new Cdo(this, true, null);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public boolean parseUnknownField(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
            return MessageReflection.m19659else(codedInputStream, cif, cimplements, getDescriptorForType(), new MessageReflection.Cfor(this.extensions), i);
        }

        public Cthis(Cgoto<MessageType, ?> cgoto) {
            super(cgoto);
            this.extensions = cgoto.m19473native();
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile) {
            return hasExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile) {
            return getExtensionCount((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cbreak<MessageType, Type> cbreak) {
            return hasExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cbreak<MessageType, List<Type>> cbreak) {
            return getExtensionCount((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessage.checkNotLite(cinterface);
            m19497if(cvolatileCheckNotLite);
            return (Type) cvolatileCheckNotLite.mo19445class(this.extensions.m19398throws(cvolatileCheckNotLite.mo19451goto(), i));
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile) {
            return (Type) getExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cbreak<MessageType, Type> cbreak) {
            return (Type) getExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i) {
            return (Type) getExtension((Cinterface) cvolatile, i);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cbreak<MessageType, List<Type>> cbreak, int i) {
            return (Type) getExtension((Cinterface) cbreak, i);
        }
    }

    public static <ContainingType extends Message, Type> Cbreak<ContainingType, Type> newFileScopedGeneratedExtension(Class cls, Message message, String str, String str2) {
        return new Cbreak<>(new Cnew(cls, str, str2), cls, message, Cvolatile.Cdo.MUTABLE);
    }

    public static <ContainingType extends Message, Type> Cbreak<ContainingType, Type> newMessageScopedGeneratedExtension(Message message, String str, Class cls, Message message2) {
        return new Cbreak<>(new Cfor(message, str), cls, message2, Cvolatile.Cdo.MUTABLE);
    }

    public GeneratedMessage(Ccase<?> ccase) {
        this.unknownFields = ccase.getUnknownFields();
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseDelimitedFrom(inputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseFrom(inputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream codedInputStream) throws IOException {
        try {
            return parser.parseFrom(codedInputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseFrom(codedInputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }
}
