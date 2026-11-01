.class public Lcom/wsw/cospa/adapter/AddBookShelfAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Z

.field private do:Landroid/content/Context;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/view/LayoutInflater;

.field public new:Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;

.field private try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->do:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->if:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic case(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    iget-object p1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getEnable()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->case(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic else(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    invoke-interface {p1, p2, p4}, Lcom/wsw/cospa/listener/OnCheckedChangeListener;->onCheckedChanged(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->else(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic try(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->new:Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;

    invoke-interface {p2, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public break(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c008f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public catch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->case:Z

    return-void
.end method

.method public class(Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->new:Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public goto(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1
    iget-object v1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->this(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->break(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/wsw/cospa/listener/OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->try:Lcom/wsw/cospa/listener/OnCheckedChangeListener;

    return-void
.end method

.method public this(Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    new-instance v2, Landroid/support/v4/f0;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/f0;-><init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroid/support/v4/e0;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/support/v4/e0;-><init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Landroid/support/v4/g0;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/g0;-><init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-boolean p2, p0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->case:Z

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
