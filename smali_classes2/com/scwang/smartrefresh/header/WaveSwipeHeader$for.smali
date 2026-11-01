.class Lcom/scwang/smartrefresh/header/WaveSwipeHeader$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$for;->do:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$for;->do:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->case:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/internal/do;->stop()V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$for;->do:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->case:Lcom/scwang/smartrefresh/header/internal/do;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/header/internal/do;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$for;->do:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->new:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->this()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
