.class public interface abstract Lcom/google/protobuf/BlockingService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callBlockingMethod(Lcom/google/protobuf/Descriptors$this;Lcom/google/protobuf/RpcController;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx1;
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$catch;
.end method

.method public abstract getRequestPrototype(Lcom/google/protobuf/Descriptors$this;)Lcom/google/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/google/protobuf/Descriptors$this;)Lcom/google/protobuf/Message;
.end method
