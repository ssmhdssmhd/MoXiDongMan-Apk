.class public Landroid/support/v4/hp;
.super Landroid/support/v4/kc;
.source "SourceFile"


# instance fields
.field public case:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/kc;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/support/v4/hp;->case:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/support/v4/hp;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 4
    iput p2, p0, Landroid/support/v4/hp;->case:I

    return-void
.end method


# virtual methods
.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    neg-int p1, p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/hp;->do(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    .line 4
    invoke-virtual {p0, v2}, Landroid/support/v4/kc;->return(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget v0, p0, Landroid/support/v4/hp;->case:I

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/kc;->throw(II)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method public do(I)Lorg/antlr/v4/runtime/Token;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget v1, p0, Landroid/support/v4/kc;->for:I

    sub-int v2, v1, p1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-gt v2, p1, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 2
    iget v3, p0, Landroid/support/v4/hp;->case:I

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/kc;->while(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    return-object v0

    .line 3
    :cond_2
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public if(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/hp;->case:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/kc;->throw(II)I

    move-result p1

    return p1
.end method

.method public static()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->new()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    .line 4
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v3

    iget v4, p0, Landroid/support/v4/hp;->case:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_0
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
