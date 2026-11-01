.class public abstract Lcom/google/protobuf/volatile;
.super Lcom/google/protobuf/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/volatile$if;,
        Lcom/google/protobuf/volatile$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/interface<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/interface;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract break()Lcom/google/protobuf/Message;
.end method

.method public catch()Lcom/google/protobuf/volatile$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/volatile$if;->PROTO2:Lcom/google/protobuf/volatile$if;

    return-object v0
.end method

.method public abstract class(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract const(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract else(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract final(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public bridge synthetic for()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->break()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract goto()Lcom/google/protobuf/Descriptors$else;
.end method

.method public abstract this()Lcom/google/protobuf/volatile$do;
.end method

.method public final try()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
