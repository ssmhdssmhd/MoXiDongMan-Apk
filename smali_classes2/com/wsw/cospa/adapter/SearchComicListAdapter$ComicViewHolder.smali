.class Lcom/wsw/cospa/adapter/SearchComicListAdapter$ComicViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/SearchComicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComicViewHolder"
.end annotation


# instance fields
.field public ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023a
    .end annotation
.end field

.field public tvComicName:Lcom/wsw/cospa/widget/view/MarqueTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046f
    .end annotation
.end field

.field public tvLastChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090494
    .end annotation
.end field

.field public tvOrigin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a0
    .end annotation
.end field

.field public tvSearch:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904aa
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
