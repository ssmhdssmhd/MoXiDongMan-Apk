.class public final Lcom/google/protobuf/t1$new;
.super Lcom/google/protobuf/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/do<",
        "Lcom/google/protobuf/t1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/do;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object p2

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/t1$if;->try()Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/protobuf/n;

    invoke-direct {v0, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2}, Lcom/google/protobuf/t1$if;->try()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/t1$if;->try()Lcom/google/protobuf/t1;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$new;->do(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1
.end method
