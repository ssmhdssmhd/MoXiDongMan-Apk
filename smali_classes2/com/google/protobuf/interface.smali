.class public abstract Lcom/google/protobuf/interface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case()Z
.end method

.method public abstract do()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation
.end method

.method public abstract for()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract if()Lcom/google/protobuf/c2$if;
.end method

.method public abstract new()I
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
