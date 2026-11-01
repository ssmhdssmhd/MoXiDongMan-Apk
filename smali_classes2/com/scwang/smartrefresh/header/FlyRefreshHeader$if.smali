.class Lcom/scwang/smartrefresh/header/FlyRefreshHeader$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->if(Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/FlyRefreshHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$if;->do:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$if;->do:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->try:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    :cond_0
    return-void
.end method
