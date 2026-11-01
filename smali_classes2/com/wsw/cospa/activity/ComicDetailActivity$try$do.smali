.class Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do(Lcom/wsw/cospa/bean/ComicSourceBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicSourceBean;

.field public final synthetic if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity$try;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iput-object p2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v3, v3, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v3, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->r(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "chapter_mode_key"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->t(Lcom/wsw/cospa/activity/ComicDetailActivity;I)I

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->s(Lcom/wsw/cospa/activity/ComicDetailActivity;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->q(Lcom/wsw/cospa/activity/ComicDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->t(Lcom/wsw/cospa/activity/ComicDetailActivity;I)I

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->s(Lcom/wsw/cospa/activity/ComicDetailActivity;)I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {v0}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v1, v1, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v2, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-direct {v2, v1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/ListTree;)V

    invoke-static {v1, v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->a(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v1, v1, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v2, v2, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v1, Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-direct {v1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->f(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterGridAdapter;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v1, v1, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;->if:Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    iget-object v2, v2, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    :goto_1
    return-void
.end method
