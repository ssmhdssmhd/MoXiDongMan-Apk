.class public final Lcom/google/protobuf/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/x0$for;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/x0;->if(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lcom/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback<",
            "TType;>;",
            "Ljava/lang/Class<",
            "TType;>;TType;)",
            "Lcom/google/protobuf/RpcCallback<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x0$do;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/protobuf/x0$do;-><init>(Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method private static if(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(TType;",
            "Lcom/google/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/RpcCallback<",
            "TParameterType;>;)",
            "Lcom/google/protobuf/RpcCallback<",
            "TParameterType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x0$if;

    invoke-direct {v0, p0}, Lcom/google/protobuf/x0$if;-><init>(Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static try(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback<",
            "Lcom/google/protobuf/Message;",
            ">;)",
            "Lcom/google/protobuf/RpcCallback<",
            "TType;>;"
        }
    .end annotation

    return-object p0
.end method
