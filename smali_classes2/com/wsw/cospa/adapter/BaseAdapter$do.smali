.class Lcom/wsw/cospa/adapter/BaseAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/BaseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic if:Lcom/wsw/cospa/adapter/BaseAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/BaseAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->if:Lcom/wsw/cospa/adapter/BaseAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->do:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->if:Lcom/wsw/cospa/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/BaseAdapter;->do(Lcom/wsw/cospa/adapter/BaseAdapter;)Lcom/wsw/cospa/adapter/BaseAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->if:Lcom/wsw/cospa/adapter/BaseAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/BaseAdapter;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->if:Lcom/wsw/cospa/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/BaseAdapter;->do(Lcom/wsw/cospa/adapter/BaseAdapter;)Lcom/wsw/cospa/adapter/BaseAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/BaseAdapter$do;->do:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/wsw/cospa/adapter/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
