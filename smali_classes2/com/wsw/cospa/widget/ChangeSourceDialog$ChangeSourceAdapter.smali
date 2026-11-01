.class public Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ChangeSourceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeSourceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private sourceBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->lambda$onBindViewHolder$0(Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$400(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$400(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;->onChooseOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;I)V
    .locals 6
    .param p1    # Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getChecked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$300(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$300(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v2}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$300(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/wsw/cospa/utils/finally;->class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 12
    :cond_2
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->tvComicName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    iget-object p1, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;->item_view:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/support/v4/hh;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/hh;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;Lcom/wsw/cospa/bean/SearchComicBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$300(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0054

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter$SourceViewHolder;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$100(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->sourceBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
