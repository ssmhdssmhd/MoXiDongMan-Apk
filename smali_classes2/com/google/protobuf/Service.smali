.class public interface abstract Lcom/google/protobuf/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callMethod(Lcom/google/protobuf/Descriptors$this;Lcom/google/protobuf/RpcController;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$this;",
            "Lcom/google/protobuf/RpcController;",
            "Lcom/google/protobuf/Message;",
            "Lcom/google/protobuf/RpcCallback<",
            "Lcom/google/protobuf/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$catch;
.end method

.method public abstract getRequestPrototype(Lcom/google/protobuf/Descriptors$this;)Lcom/google/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/google/protobuf/Descriptors$this;)Lcom/google/protobuf/Message;
.end method
