package com.google.protobuf;

/* loaded from: classes2.dex */
public final class x0 {

    /* renamed from: com.google.protobuf.x0$do, reason: invalid class name */
    public class Cdo implements RpcCallback<Message> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Class f17329do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ RpcCallback f17330for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Message f17331if;

        public Cdo(Class cls, Message message, RpcCallback rpcCallback) {
            this.f17329do = cls;
            this.f17331if = message;
            this.f17330for = rpcCallback;
        }

        @Override // com.google.protobuf.RpcCallback
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void run(Message message) {
            Message messageM21577if;
            try {
                messageM21577if = (Message) this.f17329do.cast(message);
            } catch (ClassCastException unused) {
                messageM21577if = x0.m21577if(this.f17331if, message);
            }
            this.f17330for.run(messageM21577if);
        }
    }

    /* renamed from: com.google.protobuf.x0$for, reason: invalid class name */
    public static final class Cfor extends RuntimeException {
        private static final long serialVersionUID = 5469741279507848266L;

        public Cfor() {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [ParameterType] */
    /* renamed from: com.google.protobuf.x0$if, reason: invalid class name */
    public class Cif<ParameterType> implements RpcCallback<ParameterType> {

        /* renamed from: do, reason: not valid java name */
        private boolean f17332do = false;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ RpcCallback f17333if;

        public Cif(RpcCallback rpcCallback) {
            this.f17333if = rpcCallback;
        }

        @Override // com.google.protobuf.RpcCallback
        public void run(ParameterType parametertype) {
            synchronized (this) {
                if (this.f17332do) {
                    throw new Cfor();
                }
                this.f17332do = true;
            }
            this.f17333if.run(parametertype);
        }
    }

    private x0() {
    }

    /* renamed from: for, reason: not valid java name */
    public static <Type extends Message> RpcCallback<Message> m21576for(RpcCallback<Type> rpcCallback, Class<Type> cls, Type type) {
        return new Cdo(cls, type, rpcCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static <Type extends Message> Type m21577if(Type type, Message message) {
        return (Type) type.newBuilderForType().mergeFrom(message).build();
    }

    /* renamed from: new, reason: not valid java name */
    public static <ParameterType> RpcCallback<ParameterType> m21578new(RpcCallback<ParameterType> rpcCallback) {
        return new Cif(rpcCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static <Type extends Message> RpcCallback<Type> m21579try(RpcCallback<Message> rpcCallback) {
        return rpcCallback;
    }
}
