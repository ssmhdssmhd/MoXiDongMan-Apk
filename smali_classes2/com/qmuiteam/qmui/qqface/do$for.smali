.class public Lcom/qmuiteam/qmui/qqface/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private do:I

.field private for:I

.field private if:I

.field private new:I

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/do$if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/do$for;->do:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/do$for;->if:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/do$for;->try:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->do:I

    return v0
.end method

.method public do(Lcom/qmuiteam/qmui/qqface/do$if;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->case()Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->case()Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/do$for;->try()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    .line 8
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$if;->case()Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/do$for;->new()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->if:I

    return v0
.end method

.method public if()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/do$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->try:Ljava/util/List;

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->new:I

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$for;->for:I

    return v0
.end method
