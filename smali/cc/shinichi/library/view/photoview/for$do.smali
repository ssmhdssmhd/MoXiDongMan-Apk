.class Lcc/shinichi/library/view/photoview/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/shinichi/library/view/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/shinichi/library/view/photoview/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/photoview/for;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/photoview/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->do(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/if;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/if;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->if(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->if(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcc/shinichi/library/view/photoview/OnViewDragListener;->onDrag(FF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->const(Lcc/shinichi/library/view/photoview/for;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->native(Lcc/shinichi/library/view/photoview/for;)V

    .line 6
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->return(Lcc/shinichi/library/view/photoview/for;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->do(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/if;

    move-result-object v1

    invoke-virtual {v1}, Lcc/shinichi/library/view/photoview/if;->try()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->static(Lcc/shinichi/library/view/photoview/for;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->switch(Lcc/shinichi/library/view/photoview/for;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->switch(Lcc/shinichi/library/view/photoview/for;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    .line 9
    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->switch(Lcc/shinichi/library/view/photoview/for;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    .line 10
    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->throws(Lcc/shinichi/library/view/photoview/for;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    .line 11
    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->throws(Lcc/shinichi/library/view/photoview/for;)I

    move-result p1

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 12
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 13
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    new-instance p2, Lcc/shinichi/library/view/photoview/for$case;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcc/shinichi/library/view/photoview/for$case;-><init>(Lcc/shinichi/library/view/photoview/for;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcc/shinichi/library/view/photoview/for;->extends(Lcc/shinichi/library/view/photoview/for;Lcc/shinichi/library/view/photoview/for$case;)Lcc/shinichi/library/view/photoview/for$case;

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->default(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/for$case;

    move-result-object p1

    iget-object p2, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p2}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcc/shinichi/library/view/photoview/for;->for(Lcc/shinichi/library/view/photoview/for;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcc/shinichi/library/view/photoview/for;->new(Lcc/shinichi/library/view/photoview/for;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lcc/shinichi/library/view/photoview/for$case;->if(IIII)V

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p2}, Lcc/shinichi/library/view/photoview/for;->default(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/for$case;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->a()F

    move-result v0

    iget-object v1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v1}, Lcc/shinichi/library/view/photoview/for;->try(Lcc/shinichi/library/view/photoview/for;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->case(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->case(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcc/shinichi/library/view/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->const(Lcc/shinichi/library/view/photoview/for;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$do;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->native(Lcc/shinichi/library/view/photoview/for;)V

    :cond_2
    return-void
.end method
