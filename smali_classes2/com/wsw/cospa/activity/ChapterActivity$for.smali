.class Lcom/wsw/cospa/activity/ChapterActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ChapterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Lcom/wsw/cospa/activity/ChapterActivity;

.field private if:Z


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->if:Z

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/ChapterActivity$for;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterActivity$for;->if()V

    return-void
.end method

.method private for(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterActivity;->return(Lcom/wsw/cospa/activity/ChapterActivity;)Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new(I)Lcom/wsw/cospa/bean/Switcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Switcher;->switchEnable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterActivity;->return(Lcom/wsw/cospa/activity/ChapterActivity;)Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic if()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->if:Z

    .line 2
    iget v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/ChapterActivity$for;->for(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->if:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget p2, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    if-eq p2, p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterActivity;->public(Lcom/wsw/cospa/activity/ChapterActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterActivity;->public(Lcom/wsw/cospa/activity/ChapterActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eq p1, v0, :cond_4

    .line 7
    iget p2, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    if-ne p2, p1, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity$for;->for(I)V

    goto :goto_0

    .line 9
    :cond_3
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    if-eq p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->for:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterActivity;->public(Lcom/wsw/cospa/activity/ChapterActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/activity/else;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/else;-><init>(Lcom/wsw/cospa/activity/ChapterActivity$for;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3
    iget p2, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->do:I

    if-eq p2, p1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity$for;->for(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$for;->if:Z

    :cond_2
    :goto_0
    return-void
.end method
