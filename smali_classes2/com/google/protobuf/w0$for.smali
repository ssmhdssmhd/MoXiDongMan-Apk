.class final Lcom/google/protobuf/w0$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/protobuf/ByteString$else;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/w0;",
            ">;"
        }
    .end annotation
.end field

.field private if:Lcom/google/protobuf/ByteString$else;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/w0;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/w0$for;->do:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/google/protobuf/w0;->access$400(Lcom/google/protobuf/w0;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$for;->do(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$else;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$for;->if:Lcom/google/protobuf/ByteString$else;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/w0$for;->do:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Lcom/google/protobuf/ByteString$else;

    iput-object p1, p0, Lcom/google/protobuf/w0$for;->if:Lcom/google/protobuf/ByteString$else;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/w0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$for;-><init>(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private do(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$else;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p1, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/w0;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/w0$for;->do:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/w0;->access$400(Lcom/google/protobuf/w0;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString$else;

    return-object p1
.end method

.method private if()Lcom/google/protobuf/ByteString$else;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/w0$for;->do:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w0$for;->do:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/w0;

    invoke-static {v0}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/w0;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/w0$for;->do(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$else;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public for()Lcom/google/protobuf/ByteString$else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0$for;->if:Lcom/google/protobuf/ByteString$else;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/w0$for;->if()Lcom/google/protobuf/ByteString$else;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/w0$for;->if:Lcom/google/protobuf/ByteString$else;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0$for;->if:Lcom/google/protobuf/ByteString$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$for;->for()Lcom/google/protobuf/ByteString$else;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
