.class Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/RecyclerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalLayoutListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;Lcom/wsw/cospa/widget/view/RecyclerViewPager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;-><init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$300(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$300(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$400(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$500(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$500(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->access$600(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I

    move-result v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;->this$0:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v2}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;->OnPageChanged(II)V

    :cond_0
    return-void
.end method
