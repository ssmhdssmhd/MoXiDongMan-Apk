.class Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceViewHolder"
.end annotation


# instance fields
.field public checkbox:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field public item_view:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090231
    .end annotation
.end field

.field public ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023a
    .end annotation
.end field

.field public final synthetic this$1:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

.field public tvComicName:Landroid/widget/TextView;
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


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->this$1:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
