.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->break()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->new(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 5
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->if(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->for(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Landroid/support/v4/ms1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ms1;->onHandleReleased()V

    :cond_1
    return v0

    :cond_2
    return p2

    .line 6
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->if(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->for(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Landroid/support/v4/ms1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ms1;->onHandleGrabbed()V

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->new(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 8
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->try(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 10
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$if;->do:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->case(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    return v0
.end method
