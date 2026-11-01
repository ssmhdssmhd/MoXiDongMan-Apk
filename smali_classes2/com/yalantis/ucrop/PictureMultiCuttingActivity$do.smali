.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/PictureMultiCuttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->for(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->new(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, v1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->try(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;Z)Z

    .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public onLoadFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->default(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->class()V

    return-void
.end method

.method public onRotate(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->do(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V

    return-void
.end method

.method public onScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$do;->do:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->if(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V

    return-void
.end method
