.class Lcom/wsw/cospa/activity/ComicDetailActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/ComicDetailActivity$do;Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->if(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic if(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p2, p1, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->d(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method


# virtual methods
.method public for(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800e8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p1}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-direct {v1, v0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/ListTree;)V

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->a(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->n(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\uff08\u5171%s\u4e2a\u7ae0\u8282\uff09\uff5c\uff08\u7b2c%s\u7ae0\u8282\uff09"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v0, Lcom/wsw/cospa/activity/while;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/while;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity$do;)V

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->c(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->b(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->this(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->refresh(Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->for(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
