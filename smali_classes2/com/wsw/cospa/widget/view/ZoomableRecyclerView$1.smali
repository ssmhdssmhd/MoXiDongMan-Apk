.class Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->access$000(Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;)Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->access$000(Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;)Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/wsw/cospa/widget/view/OnTapGestureListener;->onLongPress(FF)V

    :cond_0
    return-void
.end method
