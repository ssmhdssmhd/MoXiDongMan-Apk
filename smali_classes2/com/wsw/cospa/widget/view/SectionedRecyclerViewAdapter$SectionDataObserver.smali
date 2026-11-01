.class Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionDataObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;->this$0:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;->this$0:Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->access$000(Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;)V

    return-void
.end method
