.class Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/OriginChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private originList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/wsw/cospa/widget/OriginChooseDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/OriginChooseDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->this$0:Lcom/wsw/cospa/widget/OriginChooseDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->mContext:Landroid/content/Context;

    const-string p1, "layout_inflater"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->lambda$onBindViewHolder$0(Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->this$0:Lcom/wsw/cospa/widget/OriginChooseDialog;

    invoke-static {p2}, Lcom/wsw/cospa/widget/OriginChooseDialog;->access$000(Lcom/wsw/cospa/widget/OriginChooseDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->this$0:Lcom/wsw/cospa/widget/OriginChooseDialog;

    invoke-static {p2}, Lcom/wsw/cospa/widget/OriginChooseDialog;->access$000(Lcom/wsw/cospa/widget/OriginChooseDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;->onChooseOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

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
    iget-object v0, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->checkbox:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->checkbox:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->tvOriginName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->tvLastChapter:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u7ae0\u8282\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object p1, p1, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;->llOrigin:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/wsw/cospa/widget/do;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/widget/do;-><init>(Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;Lcom/wsw/cospa/bean/SearchComicBean;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c009c

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->originList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
