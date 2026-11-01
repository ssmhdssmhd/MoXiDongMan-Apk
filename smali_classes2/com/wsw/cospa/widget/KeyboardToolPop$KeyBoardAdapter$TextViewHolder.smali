.class public Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090492
    .end annotation
.end field

.field public final synthetic this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;->this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
