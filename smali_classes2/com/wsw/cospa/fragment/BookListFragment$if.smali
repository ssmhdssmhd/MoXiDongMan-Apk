.class Lcom/wsw/cospa/fragment/BookListFragment$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flyco/tablayout/listener/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/BookListFragment;->break()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookListFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/BookListFragment;->goto(Lcom/wsw/cospa/fragment/BookListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "show_all_category"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/BookListFragment;->goto(Lcom/wsw/cospa/fragment/BookListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/fragment/BookShelfFragment;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->interface()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->transient(Landroidx/fragment/app/Fragment;ZJ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/BookListFragment;->goto(Lcom/wsw/cospa/fragment/BookListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/fragment/BookShelfFragment;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->interface()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->transient(Landroidx/fragment/app/Fragment;ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment$if;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "book_shelf_current_item"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 0

    return-void
.end method
