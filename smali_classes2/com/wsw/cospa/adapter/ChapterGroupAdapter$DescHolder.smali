.class public Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescHolder"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ChapterGroupAdapter;

.field public tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090468
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterGroupAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->do:Lcom/wsw/cospa/adapter/ChapterGroupAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
