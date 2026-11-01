.class public Landroid/support/v4/jt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenSource;


# instance fields
.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field

.field public for:I

.field private final if:Ljava/lang/String;

.field public new:Lorg/antlr/v4/runtime/Token;

.field private try:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/jt0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/support/v4/gp;->if:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Landroid/support/v4/jt0;->try:Lorg/antlr/v4/runtime/TokenFactory;

    const-string v0, "tokens cannot be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    .line 6
    iput-object p2, p0, Landroid/support/v4/jt0;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharPositionInLine()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/jt0;->for:I

    iget-object v1, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    iget v1, p0, Landroid/support/v4/jt0;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 7
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 10
    :cond_2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/jt0;->for:I

    iget-object v1, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    iget v1, p0, Landroid/support/v4/jt0;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v4/jt0;->for:I

    iget-object v1, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    iget v1, p0, Landroid/support/v4/jt0;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 7
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v1

    .line 8
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jt0;->if:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/jt0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "List"

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/jt0;->try:Lorg/antlr/v4/runtime/TokenFactory;

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 12

    .line 1
    iget v0, p0, Landroid/support/v4/jt0;->for:I

    iget-object v1, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v8, -0x1

    :goto_0
    add-int/lit8 v0, v8, -0x1

    .line 5
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6
    iget-object v3, p0, Landroid/support/v4/jt0;->try:Lorg/antlr/v4/runtime/TokenFactory;

    new-instance v4, Landroid/support/v4/ob1;

    invoke-virtual {p0}, Landroid/support/v4/jt0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v4/jt0;->getLine()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v4/jt0;->getCharPositionInLine()I

    move-result v11

    const-string v6, "EOF"

    invoke-interface/range {v3 .. v11}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    iget v1, p0, Landroid/support/v4/jt0;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 9
    iget v1, p0, Landroid/support/v4/jt0;->for:I

    iget-object v3, p0, Landroid/support/v4/jt0;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 10
    iput-object v0, p0, Landroid/support/v4/jt0;->new:Lorg/antlr/v4/runtime/Token;

    .line 11
    :cond_3
    iget v1, p0, Landroid/support/v4/jt0;->for:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/jt0;->for:I

    return-object v0
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/jt0;->try:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method
