.class public Lorg/antlr/v4/runtime/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# static fields
.field public static final case:I = 0x400

.field public static final synthetic else:Z = false

.field public static final try:I = 0x400


# instance fields
.field public do:[C

.field public for:I

.field public if:I

.field public new:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {p0, v0, p1}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 11
    invoke-direct {p0, p1, v0, v0}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/if;->if(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/if;->do:[C

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/if;->if:I

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    .line 9
    iput-object p1, p0, Lorg/antlr/v4/runtime/if;->do:[C

    .line 10
    iput p2, p0, Lorg/antlr/v4/runtime/if;->if:I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v1, p0, Lorg/antlr/v4/runtime/if;->for:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    return v0

    .line 2
    :cond_1
    iget v1, p0, Lorg/antlr/v4/runtime/if;->for:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/antlr/v4/runtime/if;->if:I

    if-lt v2, v3, :cond_2

    return v0

    .line 3
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/if;->do:[C

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-char p1, v0, v1

    return p1
.end method

.method public consume()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    iget v1, p0, Lorg/antlr/v4/runtime/if;->if:I

    if-ge v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/if;->LA(I)I

    move-result p1

    return p1
.end method

.method public for()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    return-void
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/if;->new:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/if;->new:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public getText(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Landroid/support/v4/rn0;->do:I

    .line 2
    iget p1, p1, Landroid/support/v4/rn0;->if:I

    .line 3
    iget v1, p0, Lorg/antlr/v4/runtime/if;->if:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, v1, -0x1

    :cond_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    if-lt v0, v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/if;->do:[C

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public if(Ljava/io/Reader;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x400

    if-gtz p2, :cond_1

    const/16 p2, 0x400

    :cond_1
    if-gtz p3, :cond_2

    const/16 p3, 0x400

    .line 1
    :cond_2
    :try_start_0
    new-array p2, p2, [C

    iput-object p2, p0, Lorg/antlr/v4/runtime/if;->do:[C

    const/4 p2, 0x0

    :cond_3
    add-int v0, p2, p3

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/if;->do:[C

    array-length v2, v1

    if-le v0, v2, :cond_4

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/if;->do:[C

    .line 4
    :cond_4
    iget-object v0, p0, Lorg/antlr/v4/runtime/if;->do:[C

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 5
    iput p2, p0, Lorg/antlr/v4/runtime/if;->if:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_1

    :goto_0
    throw p2

    :goto_1
    goto :goto_0
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    return v0
.end method

.method public mark()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public release(I)V
    .locals 0

    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/antlr/v4/runtime/if;->for:I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/if;->if:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    :goto_0
    iget v0, p0, Lorg/antlr/v4/runtime/if;->for:I

    if-ge v0, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/if;->consume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/if;->if:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/antlr/v4/runtime/if;->do:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
