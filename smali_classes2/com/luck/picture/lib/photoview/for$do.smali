.class Lcom/luck/picture/lib/photoview/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/photoview/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/photoview/for;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/photoview/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->do(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/if;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->if(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->if(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/photoview/OnViewDragListener;->onDrag(FF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->const(Lcom/luck/picture/lib/photoview/for;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    iget-object p2, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p2}, Lcom/luck/picture/lib/photoview/for;->native(Lcom/luck/picture/lib/photoview/for;)V

    .line 6
    iget-object p2, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p2}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->return(Lcom/luck/picture/lib/photoview/for;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->do(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/if;->try()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->static(Lcom/luck/picture/lib/photoview/for;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->switch(Lcom/luck/picture/lib/photoview/for;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    .line 9
    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->switch(Lcom/luck/picture/lib/photoview/for;)I

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    .line 10
    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->switch(Lcom/luck/picture/lib/photoview/for;)I

    move-result v0

    if-ne v0, v1, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 11
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 12
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    new-instance p2, Lcom/luck/picture/lib/photoview/for$case;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/luck/picture/lib/photoview/for$case;-><init>(Lcom/luck/picture/lib/photoview/for;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/luck/picture/lib/photoview/for;->default(Lcom/luck/picture/lib/photoview/for;Lcom/luck/picture/lib/photoview/for$case;)Lcom/luck/picture/lib/photoview/for$case;

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->throws(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/for$case;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p2}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/luck/picture/lib/photoview/for;->extends(Lcom/luck/picture/lib/photoview/for;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    .line 3
    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/photoview/for;->for(Lcom/luck/picture/lib/photoview/for;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 4
    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/luck/picture/lib/photoview/for$case;->if(IIII)V

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p2}, Lcom/luck/picture/lib/photoview/for;->throws(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/for$case;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v1}, Lcom/luck/picture/lib/photoview/for;->new(Lcom/luck/picture/lib/photoview/for;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v1}, Lcom/luck/picture/lib/photoview/for;->try(Lcom/luck/picture/lib/photoview/for;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->case(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->case(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/luck/picture/lib/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->const(Lcom/luck/picture/lib/photoview/for;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$do;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->native(Lcom/luck/picture/lib/photoview/for;)V

    :cond_3
    return-void
.end method
