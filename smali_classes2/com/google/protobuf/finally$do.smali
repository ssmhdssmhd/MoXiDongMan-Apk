.class Lcom/google/protobuf/finally$do;
.super Lcom/google/protobuf/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/finally;->getParserForType()Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/do<",
        "Lcom/google/protobuf/finally;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/protobuf/finally;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/finally;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/finally$do;->do:Lcom/google/protobuf/finally;

    invoke-direct {p0}, Lcom/google/protobuf/do;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/finally;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$do;->do:Lcom/google/protobuf/finally;

    invoke-static {v0}, Lcom/google/protobuf/finally;->do(Lcom/google/protobuf/finally;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/finally;->goto(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally$if;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/finally$do;->do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/finally;

    move-result-object p1

    return-object p1
.end method
