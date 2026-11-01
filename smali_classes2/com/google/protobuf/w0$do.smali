.class Lcom/google/protobuf/w0$do;
.super Lcom/google/protobuf/ByteString$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/w0;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final do:Lcom/google/protobuf/w0$for;

.field public final synthetic for:Lcom/google/protobuf/w0;

.field public if:Lcom/google/protobuf/ByteString$ByteIterator;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/w0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/w0$do;->for:Lcom/google/protobuf/w0;

    invoke-direct {p0}, Lcom/google/protobuf/ByteString$for;-><init>()V

    .line 2
    new-instance v0, Lcom/google/protobuf/w0$for;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/w0$for;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/w0$do;)V

    iput-object v0, p0, Lcom/google/protobuf/w0$do;->do:Lcom/google/protobuf/w0$for;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$do;->if()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$do;->if:Lcom/google/protobuf/ByteString$ByteIterator;

    return-void
.end method

.method private if()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0$do;->do:Lcom/google/protobuf/w0$for;

    invoke-virtual {v0}, Lcom/google/protobuf/w0$for;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/w0$do;->do:Lcom/google/protobuf/w0$for;

    invoke-virtual {v0}, Lcom/google/protobuf/w0$for;->for()Lcom/google/protobuf/ByteString$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0$do;->if:Lcom/google/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0$do;->if:Lcom/google/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/w0$do;->if:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/w0$do;->if()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/w0$do;->if:Lcom/google/protobuf/ByteString$ByteIterator;

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
