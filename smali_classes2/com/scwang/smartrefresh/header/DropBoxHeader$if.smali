.class Lcom/scwang/smartrefresh/header/DropBoxHeader$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/DropBoxHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$if;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$if;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    iget-object v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->native:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    :cond_1
    :goto_0
    return-void
.end method
