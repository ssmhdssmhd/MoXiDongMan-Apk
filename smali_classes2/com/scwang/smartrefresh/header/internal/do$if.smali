.class Lcom/scwang/smartrefresh/header/internal/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/internal/do;->catch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/internal/do$new;

.field public final synthetic if:Lcom/scwang/smartrefresh/header/internal/do;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/internal/do;Lcom/scwang/smartrefresh/header/internal/do$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->if:Lcom/scwang/smartrefresh/header/internal/do;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->break()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->case()V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->try:F

    iput v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->new:F

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->if:Lcom/scwang/smartrefresh/header/internal/do;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/internal/do;->this:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/header/internal/do;->this:Z

    const-wide/16 v2, 0x534

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->if:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/header/internal/do;->class(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lcom/scwang/smartrefresh/header/internal/do;->case:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do;->case:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do$if;->if:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 v0, 0x0

    iput v0, p1, Lcom/scwang/smartrefresh/header/internal/do;->case:F

    return-void
.end method
