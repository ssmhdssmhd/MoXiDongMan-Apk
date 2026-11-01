.class Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/LocalComicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFileViewHolder"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/LocalComicAdapter;

.field public ivFileIcon:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090241
    .end annotation
.end field

.field public tvFileName:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090486
    .end annotation
.end field

.field public tvFilePath:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090487
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/LocalComicAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->do:Lcom/wsw/cospa/adapter/LocalComicAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
