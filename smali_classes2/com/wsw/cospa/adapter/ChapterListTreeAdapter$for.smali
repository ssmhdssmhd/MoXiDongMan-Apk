.class Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;
.super Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

.field public if:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V

    const p1, 0x7f090468

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    .line 4
    new-instance p2, Lcom/wsw/cospa/adapter/for;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/adapter/for;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if(Landroid/view/View;)V

    return-void
.end method

.method private synthetic if(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->if(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->if()Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->new(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    move-result-object v2

    invoke-interface {v2, v1, p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;->tvChapterOnClick(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V

    return-void
.end method
