.class public Lcom/wsw/cospa/adapter/FileSelectorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;,
        Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;,
        Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;",
        ">;",
        "Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;"
    }
.end annotation


# instance fields
.field private break:Z

.field private final case:Landroid/content/Context;

.field private catch:I

.field private class:Landroid/graphics/drawable/Drawable;

.field private const:Lcom/wsw/cospa/bean/RipeFile;

.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation
.end field

.field private else:Z

.field private final:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;

.field private for:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Z

.field private if:[Ljava/lang/String;

.field private new:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private super:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;

.field private this:Z

.field private try:Landroid/view/LayoutInflater;


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

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->if:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->const:Lcom/wsw/cospa/bean/RipeFile;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->new:Ljava/lang/ref/WeakReference;

    .line 5
    iput-boolean p2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else:Z

    .line 6
    iput-boolean p3, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->goto:Z

    .line 7
    iput-boolean p4, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->this:Z

    .line 8
    iput-boolean p5, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->break:Z

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->case:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->try:Landroid/view/LayoutInflater;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->if:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->for:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic break(Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p4

    invoke-direct {p0, p1, p4}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->new(Lcom/wsw/cospa/bean/RipeFile;I)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {p2}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isShown()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->goto:Z

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1, p5}, Lcom/wsw/cospa/bean/RipeFile;->setSelected(Z)V

    .line 6
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->const:Lcom/wsw/cospa/bean/RipeFile;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isSelected()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/RipeFile;->setSelected(Z)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->super:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {p2, p1, p5, p3}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;->onItemChecked(Lcom/wsw/cospa/bean/RipeFile;ZI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic catch(Lcom/wsw/cospa/bean/RipeFile;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->this(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {p2}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 6
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getRootPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/RipeFile;->setRootPath(Ljava/lang/String;)V

    .line 8
    iget-object p3, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->try(Lcom/wsw/cospa/bean/RipeFile;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C0(Landroid/content/Context;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/bb0;->new(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->final:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p3, p1, p2}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/wsw/cospa/bean/RipeFile;I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->final:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, p3, p1, p2}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/wsw/cospa/bean/RipeFile;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->break(Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private declared-synchronized goto(Ljava/io/File;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->this:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->interface(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->catch(Lcom/wsw/cospa/bean/RipeFile;ILandroid/view/View;)V

    return-void
.end method

.method private declared-synchronized new(Lcom/wsw/cospa/bean/RipeFile;I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 2
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized super()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->const:Lcom/wsw/cospa/bean/RipeFile;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/RipeFile;->setSelected(Z)V
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


# virtual methods
.method public case()Lcom/wsw/cospa/bean/RipeFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->const:Lcom/wsw/cospa/bean/RipeFile;

    return-object v0
.end method

.method public class(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;I)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public const(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILjava/util/List;)V
    .locals 10
    .param p1    # Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;
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
            "Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/RipeFile;

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->if(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v1

    const v2, 0x7f0600f4

    const v3, 0x7f0800dd

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else:Z

    if-nez v1, :cond_1

    .line 13
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->else(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%d\u9879 | %s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 16
    :cond_2
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/bb0;->new(Ljava/lang/String;)Z

    move-result v1

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onBindViewHolder: compressFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "%s | %s"

    if-eqz v1, :cond_3

    .line 18
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 20
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 25
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->else(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSize()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 27
    :cond_3
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 29
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 30
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->break:Z

    if-eqz v1, :cond_4

    .line 31
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->package(Landroid/app/Activity;)Lcom/bumptech/glide/goto;

    move-result-object v1

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/else;->E0(F)Lcom/bumptech/glide/else;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    goto :goto_1

    .line 35
    :cond_4
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->this:Z

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->goto(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 41
    :cond_5
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    .line 46
    :goto_1
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 48
    :cond_6
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_2
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: Suffix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->else(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getSize()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->getDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_3
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/RipeFile;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 54
    invoke-static {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/adapter/catch;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/wsw/cospa/adapter/catch;-><init>(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/xa0;

    invoke-direct {v0, p0, p3, p2}, Landroid/support/v4/xa0;-><init>(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method public declared-synchronized else()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->catch:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/RipeFile;

    .line 4
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget v3, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->catch:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->catch:I

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized for()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/RipeFile;

    .line 4
    new-instance v3, Landroid/support/v4/tl0;

    invoke-direct {v3}, Landroid/support/v4/tl0;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->for:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/tl0;->setThumbnailUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/tl0;->setOriginUrl(Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSectionText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized import(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->class(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;I)V

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
    check-cast p1, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->const(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILjava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->final(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemCheckedListener(Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->super:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->final:Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;

    return-void
.end method

.method public declared-synchronized this(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->if:[Ljava/lang/String;

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

.method public declared-synchronized throw()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->catch:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/RipeFile;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/RipeFile;->setSelected(Z)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized try(Lcom/wsw/cospa/bean/RipeFile;)Ljava/lang/Integer;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/RipeFile;

    .line 5
    new-instance v5, Landroid/support/v4/tl0;

    invoke-direct {v5}, Landroid/support/v4/tl0;-><init>()V

    .line 6
    iget-object v6, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->for:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/tl0;->setThumbnailUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/tl0;->setOriginUrl(Ljava/lang/String;)V

    .line 10
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/tl0;

    .line 13
    invoke-virtual {v3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized while(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->super()V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
