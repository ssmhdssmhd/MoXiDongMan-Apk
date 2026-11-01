.class public Landroid/support/v4/static;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final catch:I


# instance fields
.field public final break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/y72;",
            ">;"
        }
    .end annotation
.end field

.field public final case:Lorg/antlr/v4/runtime/atn/do;

.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/finally;",
            ">;"
        }
    .end annotation
.end field

.field public final else:I

.field public for:[Landroid/support/v4/xo1;

.field public goto:[I

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/jx;",
            ">;"
        }
    .end annotation
.end field

.field public new:[Landroid/support/v4/yo1;

.field public this:[Lorg/antlr/v4/runtime/atn/LexerAction;

.field public final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/y72;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/do;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/static;->try:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/static;->break:Ljava/util/List;

    .line 6
    iput-object p1, p0, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    .line 7
    iput p2, p0, Landroid/support/v4/static;->else:I

    return-void
.end method


# virtual methods
.method public case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v4/finally;->case:Landroid/support/v4/sn0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/static;->else(Landroid/support/v4/finally;Landroid/support/v4/vo1;)Landroid/support/v4/sn0;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/finally;->case:Landroid/support/v4/sn0;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/sn0;->native(Z)V

    .line 4
    iget-object p1, p1, Landroid/support/v4/finally;->case:Landroid/support/v4/sn0;

    return-object p1
.end method

.method public do(Landroid/support/v4/finally;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p0, p1, Landroid/support/v4/finally;->do:Landroid/support/v4/static;

    .line 2
    iget-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/support/v4/finally;->if:I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public else(Landroid/support/v4/finally;Landroid/support/v4/vo1;)Landroid/support/v4/sn0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/wr0;

    invoke-direct {v0, p0}, Landroid/support/v4/wr0;-><init>(Landroid/support/v4/static;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/wr0;->if(Landroid/support/v4/finally;Landroid/support/v4/vo1;)Landroid/support/v4/sn0;

    move-result-object p1

    return-object p1
.end method

.method public for(I)Landroid/support/v4/jx;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/jx;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public goto(Landroid/support/v4/finally;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    iget p1, p1, Landroid/support/v4/finally;->if:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public if(Landroid/support/v4/jx;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/v4/jx;->switch:I

    return v0
.end method

.method public new(ILandroid/support/v4/vo1;)Landroid/support/v4/sn0;
    .locals 4

    if-ltz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/finally;

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object p1

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Landroid/support/v4/sn0;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Landroid/support/v4/sn0;-><init>([I)V

    .line 6
    invoke-virtual {v1, p1}, Landroid/support/v4/sn0;->for(Lorg/antlr/v4/runtime/misc/IntSet;)Landroid/support/v4/sn0;

    .line 7
    invoke-virtual {v1, v0}, Landroid/support/v4/sn0;->remove(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    iget v3, p2, Landroid/support/v4/vo1;->if:I

    if-ltz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object p1, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    iget v3, p2, Landroid/support/v4/vo1;->if:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/finally;

    .line 10
    invoke-virtual {p1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ap1;

    .line 11
    iget-object p1, p1, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    invoke-virtual {p0, p1}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Landroid/support/v4/sn0;->for(Lorg/antlr/v4/runtime/misc/IntSet;)Landroid/support/v4/sn0;

    .line 13
    invoke-virtual {v1, v0}, Landroid/support/v4/sn0;->remove(I)V

    .line 14
    iget-object p2, p2, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 16
    invoke-virtual {v1, p1}, Landroid/support/v4/sn0;->add(I)V

    :cond_2
    return-object v1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid state number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public try()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
