.class public Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public adapter:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter<",
            "***>;"
        }
    .end annotation
.end field

.field public layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter<",
            "***>;",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->adapter:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->adapter:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    .line 5
    iput-object p2, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->adapter:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->adapter:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionFooterPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SectionedSpanSizeLookup;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
