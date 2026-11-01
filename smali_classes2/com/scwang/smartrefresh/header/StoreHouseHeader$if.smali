.class Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

.field public do:I

.field public for:I

.field public if:I

.field public new:I

.field public try:Z


# direct methods
.method private constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if:I

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->for:I

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->new:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->try:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;Lcom/scwang/smartrefresh/header/StoreHouseHeader$do;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    return-void
.end method

.method public static synthetic do(Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->for()V

    return-void
.end method

.method private for()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->try:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v2, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->final:I

    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v2, v1

    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->new:I

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v3, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->super:I

    div-int/2addr v3, v2

    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if:I

    .line 5
    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->for:I

    .line 6
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->run()V

    return-void
.end method

.method public static synthetic if(Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->new()V

    return-void
.end method

.method private new()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->try:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->for:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 3
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if:I

    mul-int v3, v3, v2

    add-int/2addr v3, v0

    .line 4
    iget v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 6
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/s12;

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    const-wide/16 v4, 0x190

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/s12;->case(FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do:I

    .line 13
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->try:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->case:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->return:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 15
    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->new:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
