.class Lcom/wsw/cospa/activity/ComicDetailActivity$if;
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/ComicDetailActivity$if;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->if(I)V

    return-void
.end method

.method private synthetic if(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->d(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method


# virtual methods
.method public for(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800e6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v2, Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-direct {v2, p1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->f(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterGridAdapter;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->s(Lcom/wsw/cospa/activity/ComicDetailActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->n(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v2, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "\uff08\u5171%s\u4e2a\u7ae0\u8282\uff09\uff5c\uff08\u7b2c%s\u7ae0\u8282\uff09"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    new-instance v2, Lcom/wsw/cospa/activity/import;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/import;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity$if;)V

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->refresh(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->g(Lcom/wsw/cospa/activity/ComicDetailActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    const/4 v2, 0x4

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p1, v2, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-static {p1, v3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->h(Lcom/wsw/cospa/activity/ComicDetailActivity;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->s(Lcom/wsw/cospa/activity/ComicDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 18
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->g(Lcom/wsw/cospa/activity/ComicDetailActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->g(Lcom/wsw/cospa/activity/ComicDetailActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->for(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
