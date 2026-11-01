.class public Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/ChapterBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChapterAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;"
    }
.end annotation


# instance fields
.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectIndex:I

.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$100(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$100(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$100(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_chapter"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_shelf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {v3}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$100(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$000(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v1, v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->selectIndex:I

    if-ne v0, p2, :cond_0

    .line 5
    iget-object v0, p1, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;->selectLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;->selectLine:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/lh;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/lh;-><init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->this$0:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-static {p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->access$000(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;-><init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->selectIndex:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
