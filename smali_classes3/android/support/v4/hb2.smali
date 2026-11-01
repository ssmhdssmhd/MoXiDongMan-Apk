.class public Landroid/support/v4/hb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/antlr/v4/runtime/Token;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/antlr/v4/runtime/TokenStream;"
    }
.end annotation


# static fields
.field public static final synthetic this:Z


# instance fields
.field public case:Lorg/antlr/v4/runtime/Token;

.field public do:Lorg/antlr/v4/runtime/TokenSource;

.field public else:Lorg/antlr/v4/runtime/Token;

.field public for:I

.field public goto:I

.field public if:[Lorg/antlr/v4/runtime/Token;

.field public new:I

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/hb2;-><init>(Lorg/antlr/v4/runtime/TokenSource;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/v4/hb2;->new:I

    .line 4
    iput v0, p0, Landroid/support/v4/hb2;->try:I

    .line 5
    iput v0, p0, Landroid/support/v4/hb2;->goto:I

    .line 6
    iput-object p1, p0, Landroid/support/v4/hb2;->do:Lorg/antlr/v4/runtime/TokenSource;

    .line 7
    new-array p1, p2, [Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    .line 8
    iput v0, p0, Landroid/support/v4/hb2;->for:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/v4/hb2;->if(I)I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/hb2;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/hb2;->new(I)V

    .line 3
    iget v0, p0, Landroid/support/v4/hb2;->new:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 4
    iget p1, p0, Landroid/support/v4/hb2;->for:I

    if-lt v0, p1, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    aget-object p1, p1, v0

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") gives negative index"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/hb2;->LA(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    iget v3, p0, Landroid/support/v4/hb2;->new:I

    aget-object v1, v1, v3

    iput-object v1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    .line 3
    iget v4, p0, Landroid/support/v4/hb2;->for:I

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/support/v4/hb2;->try:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 4
    iput v3, p0, Landroid/support/v4/hb2;->for:I

    .line 5
    iput v2, p0, Landroid/support/v4/hb2;->new:I

    .line 6
    iput-object v1, p0, Landroid/support/v4/hb2;->else:Lorg/antlr/v4/runtime/Token;

    .line 7
    :cond_0
    iget v1, p0, Landroid/support/v4/hb2;->new:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v4/hb2;->new:I

    .line 8
    iget v1, p0, Landroid/support/v4/hb2;->goto:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v4/hb2;->goto:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/support/v4/hb2;->new(I)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do(Lorg/antlr/v4/runtime/Token;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->for:I

    iget-object v1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/WritableToken;

    invoke-virtual {p0}, Landroid/support/v4/hb2;->for()I

    move-result v1

    iget v2, p0, Landroid/support/v4/hb2;->for:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Landroid/support/v4/hb2;->for:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/hb2;->for:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final for()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->goto:I

    iget v1, p0, Landroid/support/v4/hb2;->new:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/hb2;->for()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget v1, p0, Landroid/support/v4/hb2;->for:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") outside buffer: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v4/hb2;->for:I

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hb2;->do:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getText(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 5

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/hb2;->for()I

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 5
    iget v2, p1, Landroid/support/v4/rn0;->do:I

    .line 6
    iget v3, p1, Landroid/support/v4/rn0;->if:I

    if-lt v2, v0, :cond_1

    if-gt v3, v1, :cond_1

    sub-int/2addr v2, v0

    sub-int/2addr v3, v0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt v2, v3, :cond_0

    .line 8
    iget-object v0, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    aget-object v0, v0, v2

    .line 9
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not in token buffer window: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getText(Landroid/support/v4/vo1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vo1;->getSourceInterval()Landroid/support/v4/rn0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/hb2;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-static {p1, p2}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/hb2;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hb2;->do:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public if(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1
    iget v1, p0, Landroid/support/v4/hb2;->for:I

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/hb2;->do:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v4/hb2;->do(Lorg/antlr/v4/runtime/Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->goto:I

    return v0
.end method

.method public mark()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->try:I

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    iput-object v1, p0, Landroid/support/v4/hb2;->else:Lorg/antlr/v4/runtime/Token;

    :cond_0
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Landroid/support/v4/hb2;->try:I

    return v1
.end method

.method public new(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->new:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget p1, p0, Landroid/support/v4/hb2;->for:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/hb2;->if(I)I

    :cond_0
    return-void
.end method

.method public release(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->try:I

    neg-int v1, v0

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/hb2;->try:I

    if-nez v0, :cond_1

    .line 3
    iget p1, p0, Landroid/support/v4/hb2;->new:I

    if-lez p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Landroid/support/v4/hb2;->for:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Landroid/support/v4/hb2;->for:I

    iget v0, p0, Landroid/support/v4/hb2;->new:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/hb2;->for:I

    .line 6
    iput v2, p0, Landroid/support/v4/hb2;->new:I

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Landroid/support/v4/hb2;->else:Lorg/antlr/v4/runtime/Token;

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "release() called with an invalid marker."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/hb2;->goto:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    sub-int v0, p1, v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/hb2;->new(I)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/hb2;->for()I

    move-result v0

    iget v1, p0, Landroid/support/v4/hb2;->for:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hb2;->for()I

    move-result v0

    sub-int v1, p1, v0

    if-ltz v1, :cond_4

    .line 5
    iget v2, p0, Landroid/support/v4/hb2;->for:I

    if-ge v1, v2, :cond_3

    .line 6
    iput v1, p0, Landroid/support/v4/hb2;->new:I

    .line 7
    iput p1, p0, Landroid/support/v4/hb2;->goto:I

    if-nez v1, :cond_2

    .line 8
    iget-object p1, p0, Landroid/support/v4/hb2;->else:Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Landroid/support/v4/hb2;->if:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    iput-object p1, p0, Landroid/support/v4/hb2;->case:Lorg/antlr/v4/runtime/Token;

    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek to index outside buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v4/hb2;->for:I

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

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
