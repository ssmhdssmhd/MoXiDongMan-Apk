.class Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/fungame/FunGameView;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic for:Landroid/view/View;

.field public final synthetic if:Landroid/view/View;

.field public final synthetic new:Lcom/scwang/smartrefresh/header/fungame/FunGameView;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/fungame/FunGameView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->new:Lcom/scwang/smartrefresh/header/fungame/FunGameView;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->do:Landroid/view/View;

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->if:Landroid/view/View;

    iput-object p4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->for:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->do:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->if:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->for:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;->new:Lcom/scwang/smartrefresh/header/fungame/FunGameView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->goto(I)V

    return-void
.end method
