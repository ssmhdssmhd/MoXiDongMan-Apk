.class Lcom/google/protobuf/x$for$do;
.super Lcom/google/protobuf/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/x$for;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/x;Lcom/google/protobuf/c2$if;Lcom/google/protobuf/c2$if;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/do<",
        "Lcom/google/protobuf/x<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/protobuf/x$for;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/x$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/x$for$do;->do:Lcom/google/protobuf/x$for;

    invoke-direct {p0}, Lcom/google/protobuf/do;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            ")",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x$for$do;->do:Lcom/google/protobuf/x$for;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/x$do;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$for$do;->do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method
