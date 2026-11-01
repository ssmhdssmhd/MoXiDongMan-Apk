.class public Landroid/support/v4/jc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Lorg/antlr/v4/runtime/atn/this;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/this;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    return-void
.end method


# virtual methods
.method public break()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->for:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public case()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->native:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public do()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v4/jc1;->if(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public else()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->goto:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public for()[Landroid/support/v4/ix;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    return-object v0
.end method

.method public goto()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->throw:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public if(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    aget-object p1, v0, p1

    .line 2
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method public new()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    iget-wide v3, v3, Landroid/support/v4/ix;->import:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public this()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->new:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public try()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/jc1;->do:Lorg/antlr/v4/runtime/atn/this;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/this;->s()[Landroid/support/v4/ix;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->throw:J

    add-long/2addr v1, v4

    .line 4
    aget-object v4, v0, v3

    iget-wide v4, v4, Landroid/support/v4/ix;->native:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
