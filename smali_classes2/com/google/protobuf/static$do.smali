.class Lcom/google/protobuf/static$do;
.super Lcom/google/protobuf/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/static;->do(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/do<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/protobuf/Parser;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Parser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/static$do;->do:Lcom/google/protobuf/Parser;

    invoke-direct {p0}, Lcom/google/protobuf/do;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->new()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/static$do;->do:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->y()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->y()V

    .line 4
    throw p2
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/static$do;->do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method
