.class public Lcom/wsw/cospa/adapter/ComicSourceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;",
        ">;",
        "Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;"
    }
.end annotation


# instance fields
.field private case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field

.field private for:Landroid/content/Context;

.field private goto:Landroidx/recyclerview/widget/RecyclerView;

.field private if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

.field private new:Lcom/wsw/cospa/activity/ComicManagerActivity;

.field private try:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->for:Landroid/content/Context;

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/wsw/cospa/activity/ComicManagerActivity;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    const-string v0, "layout_inflater"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->try:Landroid/view/LayoutInflater;

    return-void
.end method

.method private declared-synchronized abstract(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->finally()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->private(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 8
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getWeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setWeight(I)V

    .line 10
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSerialNumber()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSerialNumber(I)V

    .line 12
    new-instance p1, Landroid/support/v4/xo;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/xo;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->goto:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic break(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->static(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->throws(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->throw(ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->switch(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->import(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic final(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->for:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const-string v0, "\u7f16\u8f91\u56fe\u6e90"

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->public(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->final(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->return(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic import(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-interface {p1, p2, p4}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V

    :cond_0
    return-void
.end method

.method private synthetic native(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->abstract(I)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->super(ILandroid/view/View;)V

    return-void
.end method

.method private declared-synchronized private(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic public(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->for:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const-string v0, "\u7f16\u8f91\u56fe\u6e90"

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method private synthetic return(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic static(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V

    return-void
.end method

.method private synthetic super(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic switch(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-interface {p1, p2, p4}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->native(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic throw(ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getWeight()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->setWeight(I)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/dao/DatabaseHelper;->abstract(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 3
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic throws(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->s(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->s(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->while(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic while(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V

    return-void
.end method


# virtual methods
.method public class(I)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p1
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    return-object v0
.end method

.method public continue(ILcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public default(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->tvSourceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->ivEdit:Landroid/widget/ImageView;

    new-instance v2, Landroid/support/v4/wo;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/wo;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->iv_delete:Landroid/widget/ImageView;

    new-instance v2, Landroid/support/v4/so;

    invoke-direct {v2, p0, p2}, Landroid/support/v4/so;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/wsw/cospa/adapter/try;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/wsw/cospa/adapter/try;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/wsw/cospa/adapter/goto;

    invoke-direct {v2, p0, p1, v0}, Lcom/wsw/cospa/adapter/goto;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->ivTop:Landroid/widget/ImageView;

    new-instance v0, Landroid/support/v4/to;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/to;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public extends(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;
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
            "Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->tvSourceName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->ivEdit:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/vo;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/vo;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->iv_delete:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/ro;

    invoke-direct {v1, p0, p2}, Landroid/support/v4/ro;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/wsw/cospa/adapter/case;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/case;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/wsw/cospa/adapter/else;

    invoke-direct {v1, p0, p1, p3}, Lcom/wsw/cospa/adapter/else;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;->ivTop:Landroid/widget/ImageView;

    new-instance v0, Landroid/support/v4/uo;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/uo;-><init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public finally(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->try:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0061

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->goto:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->default(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;I)V

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
    check-cast p1, Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->extends(Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILjava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->finally(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized package(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->B()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->new:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->D(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

.method public setOnCheckedChangeListener(Lcom/wsw/cospa/listener/OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->if:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method
