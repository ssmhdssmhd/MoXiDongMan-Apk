.class public Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;,
        Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;,
        Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;",
        ">;"
    }
.end annotation


# instance fields
.field private break:Z

.field private case:Landroid/view/LayoutInflater;

.field private catch:Z

.field private class:I

.field private const:Landroid/graphics/drawable/Drawable;

.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final else:Landroid/content/Context;

.field private final:Lcom/wsw/cospa/bean/Node;

.field private for:[Ljava/lang/String;

.field private goto:Z

.field private if:Ljava/util/zip/ZipFile;

.field private new:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private super:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;

.field private this:Z

.field private throw:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;

.field private try:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "png"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "webp"

    const-string v4, "gif"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->for:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->final:Lcom/wsw/cospa/bean/Node;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->try:Ljava/lang/ref/WeakReference;

    .line 5
    iput-boolean p2, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->goto:Z

    .line 6
    iput-boolean p3, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->this:Z

    .line 7
    iput-boolean p4, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->break:Z

    .line 8
    iput-boolean p5, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->catch:Z

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->else:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->case:Landroid/view/LayoutInflater;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->for:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->new:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized break()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->final:Lcom/wsw/cospa/bean/Node;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Node;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lcom/wsw/cospa/bean/Node;->selected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private synthetic case(Lcom/wsw/cospa/bean/Node;ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/wsw/cospa/bean/Node;->isDir:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->super:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p3, p1, p2}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/wsw/cospa/bean/Node;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->super:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p3, p1, p2}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/wsw/cospa/bean/Node;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->case(Lcom/wsw/cospa/bean/Node;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->try(Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic try(Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-boolean p4, p1, Lcom/wsw/cospa/bean/Node;->isDir:Z

    if-nez p4, :cond_0

    invoke-static {p2}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isShown()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p2, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->this:Z

    if-eqz p2, :cond_1

    .line 3
    iget-boolean p2, p1, Lcom/wsw/cospa/bean/Node;->isDir:Z

    if-eqz p2, :cond_2

    .line 4
    iput-boolean p5, p1, Lcom/wsw/cospa/bean/Node;->selected:Z

    .line 5
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->final:Lcom/wsw/cospa/bean/Node;

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p2, p1, Lcom/wsw/cospa/bean/Node;->isDir:Z

    if-eqz p2, :cond_2

    .line 7
    iget-boolean p2, p1, Lcom/wsw/cospa/bean/Node;->selected:Z

    xor-int/lit8 p2, p2, 0x1

    .line 8
    iput-boolean p2, p1, Lcom/wsw/cospa/bean/Node;->selected:Z

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->throw:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2, p1, p5, p3}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;->onItemChecked(Lcom/wsw/cospa/bean/Node;ZI)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized catch(Ljava/util/List;Ljava/util/zip/ZipFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Node;",
            ">;",
            "Ljava/util/zip/ZipFile;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->if:Ljava/util/zip/ZipFile;

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->break()V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public else(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;I)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public for()Lcom/wsw/cospa/bean/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->final:Lcom/wsw/cospa/bean/Node;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public goto(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILjava/util/List;)V
    .locals 9
    .param p1    # Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/Node;

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->if(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p3, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-boolean v1, p3, Lcom/wsw/cospa/bean/Node;->isDir:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "yyyy-MM-dd"

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    .line 6
    :try_start_1
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    const v7, 0x7f0800dd

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->new(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->try(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->case(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->goto:Z

    if-nez v1, :cond_1

    .line 13
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15
    :goto_0
    iget-wide v5, p3, Lcom/wsw/cospa/bean/Node;->time:J

    invoke-static {v5, v6, v4}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->else(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d\u9879 | %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p3, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    aput-object v1, v3, v2

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 17
    :cond_2
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->case(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 19
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060362

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 20
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->catch:Z

    if-eqz v1, :cond_3

    .line 21
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->new(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->try(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v1, p3, Lcom/wsw/cospa/bean/Node;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 25
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->else:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->if:Ljava/util/zip/ZipFile;

    invoke-virtual {v7, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 26
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    iget-object v5, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->try:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->package(Landroid/app/Activity;)Lcom/bumptech/glide/goto;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/goto;->throw(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;

    move-result-object v1

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/else;->E0(F)Lcom/bumptech/glide/else;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->try(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    goto :goto_1

    .line 28
    :cond_3
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->break:Z

    if-eqz v1, :cond_4

    .line 29
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->new(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->try(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    const v6, 0x7f0800be

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 34
    :cond_4
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->new(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->try(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x7f0800dc

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->for(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 39
    :goto_1
    iget-object v1, p3, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/bb0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->case(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-wide v5, p3, Lcom/wsw/cospa/bean/Node;->time:J

    invoke-static {v5, v6, v4}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->else(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%s | %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v7, p3, Lcom/wsw/cospa/bean/Node;->size:J

    invoke-static {v7, v8}, Lcom/wsw/cospa/utils/default;->finally(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    aput-object v1, v3, v2

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_2
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/adapter/final;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/wsw/cospa/adapter/final;-><init>(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/tj2;

    invoke-direct {v0, p0, p3, p2}, Landroid/support/v4/tj2;-><init>(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public declared-synchronized new(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->for:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->else(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->goto(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->this(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemCheckedListener(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->throw:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemCheckedListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->super:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$OnItemClickListener;

    return-void
.end method

.method public this(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->try:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;-><init>(Landroid/view/View;)V

    return-object p2
.end method
