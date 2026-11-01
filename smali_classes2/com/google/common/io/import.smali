.class public final Lcom/google/common/io/import;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation


# instance fields
.field private final case:Lcom/google/common/io/while;

.field private final do:Ljava/lang/Readable;

.field private final for:Ljava/nio/CharBuffer;

.field private final if:Ljava/io/Reader;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field

.field private final new:[C

.field private final try:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/io/this;->try()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/import;->for:Ljava/nio/CharBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/import;->new:[C

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/import;->try:Ljava/util/Queue;

    .line 5
    new-instance v0, Lcom/google/common/io/import$do;

    invoke-direct {v0, p0}, Lcom/google/common/io/import$do;-><init>(Lcom/google/common/io/import;)V

    iput-object v0, p0, Lcom/google/common/io/import;->case:Lcom/google/common/io/while;

    .line 6
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    iput-object v0, p0, Lcom/google/common/io/import;->do:Ljava/lang/Readable;

    .line 7
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Reader;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/common/io/import;->if:Ljava/io/Reader;

    return-void
.end method

.method public static synthetic do(Lcom/google/common/io/import;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/io/import;->try:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public if()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/import;->try:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/io/import;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/google/common/io/import;->if:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/common/io/import;->new:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/import;->do:Ljava/lang/Readable;

    iget-object v2, p0, Lcom/google/common/io/import;->for:Ljava/nio/CharBuffer;

    invoke-interface {v0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/io/import;->case:Lcom/google/common/io/while;

    invoke-virtual {v0}, Lcom/google/common/io/while;->if()V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/import;->case:Lcom/google/common/io/while;

    iget-object v3, p0, Lcom/google/common/io/import;->new:[C

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/common/io/while;->do([CII)V

    goto :goto_0

    .line 6
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/common/io/import;->try:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
