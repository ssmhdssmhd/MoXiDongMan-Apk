.class public Lorg/antlr/v4/runtime/catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# instance fields
.field public case:I

.field public do:[I

.field public else:I

.field public for:I

.field public goto:Ljava/io/Reader;

.field public if:I

.field public new:I

.field public this:Ljava/lang/String;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/catch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->for:I

    .line 4
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->new:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    .line 6
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->else:I

    .line 7
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->if:I

    .line 8
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x100

    .line 9
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/catch;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/catch;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/catch;-><init>(I)V

    .line 13
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object p2, p0, Lorg/antlr/v4/runtime/catch;->goto:Ljava/io/Reader;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/catch;->if(I)I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x100

    .line 10
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/catch;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/catch;-><init>(I)V

    .line 16
    iput-object p1, p0, Lorg/antlr/v4/runtime/catch;->goto:Ljava/io/Reader;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/catch;->if(I)I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/catch;->try(I)V

    .line 3
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->for:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 4
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    if-lt v1, p1, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    aget p1, p1, v1

    return p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public consume()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/catch;->LA(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    iget v3, p0, Lorg/antlr/v4/runtime/catch;->for:I

    aget v1, v1, v3

    iput v1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    .line 3
    iget v4, p0, Lorg/antlr/v4/runtime/catch;->if:I

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/antlr/v4/runtime/catch;->new:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 4
    iput v3, p0, Lorg/antlr/v4/runtime/catch;->if:I

    .line 5
    iput v2, p0, Lorg/antlr/v4/runtime/catch;->for:I

    .line 6
    iput v1, p0, Lorg/antlr/v4/runtime/catch;->case:I

    .line 7
    :cond_0
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->for:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/catch;->for:I

    .line 8
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->else:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/catch;->else:I

    .line 9
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/catch;->try(I)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->if:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/antlr/v4/runtime/catch;->if:I

    aput p1, v0, v1

    return-void
.end method

.method public final for()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->else:I

    iget v1, p0, Lorg/antlr/v4/runtime/catch;->for:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/catch;->this:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/catch;->this:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public getText(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p1, Landroid/support/v4/rn0;->do:I

    if-ltz v0, :cond_3

    iget v1, p1, Landroid/support/v4/rn0;->if:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->for()I

    move-result v0

    .line 3
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    const v2, 0xffff

    if-ne v1, v2, :cond_1

    .line 4
    iget v1, p1, Landroid/support/v4/rn0;->do:I

    invoke-virtual {p1}, Landroid/support/v4/rn0;->try()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the interval extends past the end of the stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget v1, p1, Landroid/support/v4/rn0;->do:I

    if-lt v1, v0, :cond_2

    iget v2, p1, Landroid/support/v4/rn0;->if:I

    iget v3, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_2

    sub-int/2addr v1, v0

    .line 7
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    invoke-virtual {p1}, Landroid/support/v4/rn0;->try()I

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " outside buffer: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid interval"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(I)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_8

    .line 1
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    const/4 v2, -0x1

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    if-ne v1, v2, :cond_0

    return v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->new()I

    move-result v1

    const v3, 0xffff

    if-gt v1, v3, :cond_7

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v4, v1

    .line 3
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->new()I

    move-result v1

    if-gt v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    int-to-char v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v4, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/catch;->do(I)V

    goto :goto_2

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UTF-16 (dangling high surrogate"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UTF-16 (dangling high surrogate at end of file)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UTF-16 (high surrogate followed by code point > U+FFFF"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/catch;->do(I)V

    goto :goto_2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UTF-16 (low surrogate with no preceding high surrogate)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/catch;->do(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    return p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->else:I

    return v0
.end method

.method public mark()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->new:I

    if-nez v0, :cond_0

    .line 2
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    iput v1, p0, Lorg/antlr/v4/runtime/catch;->case:I

    :cond_0
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->new:I

    return v1
.end method

.method public new()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/catch;->goto:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public release(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->new:I

    neg-int v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->new:I

    if-nez v0, :cond_0

    .line 3
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->for:I

    if-lez p1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    iget v0, p0, Lorg/antlr/v4/runtime/catch;->for:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    .line 6
    iput v2, p0, Lorg/antlr/v4/runtime/catch;->for:I

    .line 7
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    iput p1, p0, Lorg/antlr/v4/runtime/catch;->case:I

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "release() called with an invalid marker."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->else:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    sub-int v0, p1, v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/catch;->try(I)V

    .line 3
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->for()I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->for()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_4

    .line 5
    iget v1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    if-ge v0, v1, :cond_3

    .line 6
    iput v0, p0, Lorg/antlr/v4/runtime/catch;->for:I

    .line 7
    iput p1, p0, Lorg/antlr/v4/runtime/catch;->else:I

    if-nez v0, :cond_2

    .line 8
    iget p1, p0, Lorg/antlr/v4/runtime/catch;->case:I

    iput p1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lorg/antlr/v4/runtime/catch;->do:[I

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    iput p1, p0, Lorg/antlr/v4/runtime/catch;->try:I

    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to index outside buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->for()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/catch;->for()I

    move-result p1

    iget v2, p0, Lorg/antlr/v4/runtime/catch;->if:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot seek to negative index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unbuffered stream cannot know its size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public try(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/catch;->for:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget p1, p0, Lorg/antlr/v4/runtime/catch;->if:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/catch;->if(I)I

    :cond_0
    return-void
.end method
