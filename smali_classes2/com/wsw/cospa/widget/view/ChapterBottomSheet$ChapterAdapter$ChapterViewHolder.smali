.class Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChapterViewHolder"
.end annotation


# instance fields
.field public selectLine:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090398
    .end annotation
.end field

.field public final synthetic this$1:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

.field public tvChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090468
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter$ChapterViewHolder;->this$1:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
