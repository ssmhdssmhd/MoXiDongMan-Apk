.class Lcc/shinichi/library/view/photoview/for$if;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/photoview/for;-><init>(Landroid/widget/ImageView;)V
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
    iput-object p1, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->goto(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->a()F

    move-result v0

    invoke-static {}, Lcc/shinichi/library/view/photoview/for;->this()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcc/shinichi/library/view/photoview/for;->break()I

    move-result v2

    if-gt v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcc/shinichi/library/view/photoview/for;->break()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->goto(Lcc/shinichi/library/view/photoview/for;)Lcc/shinichi/library/view/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcc/shinichi/library/view/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->else(Lcc/shinichi/library/view/photoview/for;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {p1}, Lcc/shinichi/library/view/photoview/for;->else(Lcc/shinichi/library/view/photoview/for;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcc/shinichi/library/view/photoview/for$if;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-static {v0}, Lcc/shinichi/library/view/photoview/for;->public(Lcc/shinichi/library/view/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
