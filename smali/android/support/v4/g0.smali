.class public final synthetic Landroid/support/v4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field public final synthetic if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iput-object p2, p0, Landroid/support/v4/g0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    iput-object p3, p0, Landroid/support/v4/g0;->for:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/g0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iget-object v1, p0, Landroid/support/v4/g0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    iget-object v2, p0, Landroid/support/v4/g0;->for:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->if(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
