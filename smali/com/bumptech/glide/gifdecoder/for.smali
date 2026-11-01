.class public Lcom/bumptech/glide/gifdecoder/for;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final break:I = 0xf9

.field private static final case:I = 0xff

.field private static final catch:I = 0xff

.field private static final class:I = 0xfe

.field private static final const:I = 0x1

.field private static final else:I = 0x2c

.field private static final final:I = 0x1c

.field private static final goto:I = 0x21

.field private static final import:I = 0x40

.field private static final native:I = 0x7

.field private static final public:I = 0x80

.field private static final return:I = 0x7

.field public static final static:I = 0x2

.field private static final super:I = 0x2

.field public static final switch:I = 0xa

.field private static final this:I = 0x3b

.field private static final throw:I = 0x1

.field private static final throws:I = 0x100

.field private static final try:Ljava/lang/String; = "GifHeaderParser"

.field private static final while:I = 0x80


# instance fields
.field private final do:[B

.field private for:Lcom/bumptech/glide/gifdecoder/if;

.field private if:Ljava/nio/ByteBuffer;

.field private new:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->do:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    return-void
.end method

.method private break(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_a

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/if;->for:I

    if-gt v2, p1, :cond_a

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iput v4, v2, Lcom/bumptech/glide/gifdecoder/if;->if:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v3, v2, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    if-nez v3, :cond_2

    .line 5
    new-instance v3, Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/do;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->case()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->native()V

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->else()V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    .line 11
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/for;->do:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->final()V

    goto :goto_0

    .line 14
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->native()V

    goto :goto_0

    .line 15
    :cond_7
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->native()V

    goto :goto_0

    .line 16
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    new-instance v3, Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/do;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->catch()V

    goto/16 :goto_0

    .line 18
    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->native()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private case()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/do;->do:I

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/do;->if:I

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/do;->for:I

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/do;->new:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 7
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lcom/bumptech/glide/gifdecoder/do;->try:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0, v4}, Lcom/bumptech/glide/gifdecoder/for;->goto(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/bumptech/glide/gifdecoder/do;->catch:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, v5, Lcom/bumptech/glide/gifdecoder/do;->catch:[I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/do;->break:I

    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->public()V

    .line 12
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    .line 14
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/if;->try:Ljava/util/List;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private catch()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/do;->else:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 4
    iput v4, v1, Lcom/bumptech/glide/gifdecoder/do;->else:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 5
    :goto_0
    iput-boolean v4, v1, Lcom/bumptech/glide/gifdecoder/do;->case:Z

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/if;->new:Lcom/bumptech/glide/gifdecoder/do;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/do;->this:I

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/do;->goto:I

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    return-void
.end method

.method private class()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->const()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/if;->goto:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/if;->this:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifdecoder/for;->goto(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/if;->do:[I

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/if;->do:[I

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/if;->break:I

    aget v1, v1, v2

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->class:I

    :cond_2
    return-void
.end method

.method private const()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->case:I

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->super()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->else:I

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/if;->goto:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    .line 5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/if;->this:I

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->break:I

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->catch:I

    return-void
.end method

.method private else()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/for;->do:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    nop

    const/4 v2, 0x3

    const-string v3, "GifHeaderParser"

    .line 4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Reading Block n: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    :cond_1
    return-void
.end method

.method private final()V
    .locals 3

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->else()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->do:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 4
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/if;->const:I

    .line 6
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private goto(I)[I
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 4
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 5
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 6
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    const-string p1, "GifHeaderParser"

    const/4 v0, 0x3

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    const/4 v0, 0x1

    iput v0, p1, Lcom/bumptech/glide/gifdecoder/if;->if:I

    :cond_0
    return-object v1
.end method

.method private if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native()V
    .locals 3

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private public()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->try()I

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->native()V

    return-void
.end method

.method private super()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private this()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifdecoder/for;->break(I)V

    return-void
.end method

.method private throw()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->do:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    new-instance v0, Lcom/bumptech/glide/gifdecoder/if;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/if;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    .line 4
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/for;->new:I

    return-void
.end method

.method private try()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    return-void
.end method

.method public for()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->class()V

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifdecoder/for;->break(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public import([B)Lcom/bumptech/glide/gifdecoder/for;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/gifdecoder/for;->while(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/for;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    const/4 v0, 0x2

    iput v0, p1, Lcom/bumptech/glide/gifdecoder/if;->if:I

    :goto_0
    return-object p0
.end method

.method public new()Lcom/bumptech/glide/gifdecoder/if;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->class()V

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->if()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->this()V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/for;->for:Lcom/bumptech/glide/gifdecoder/if;

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public while(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/for;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/for;->throw()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/for;->if:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method
