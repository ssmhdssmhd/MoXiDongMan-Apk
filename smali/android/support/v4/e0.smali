.class public final synthetic Landroid/support/v4/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

.field public final synthetic new:Lcom/wsw/cospa/bean/ComicShelfGroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iput-object p2, p0, Landroid/support/v4/e0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    iput p3, p0, Landroid/support/v4/e0;->for:I

    iput-object p4, p0, Landroid/support/v4/e0;->new:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/e0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iget-object v1, p0, Landroid/support/v4/e0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    iget v2, p0, Landroid/support/v4/e0;->for:I

    iget-object v3, p0, Landroid/support/v4/e0;->new:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->do(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;ILcom/wsw/cospa/bean/ComicShelfGroupBean;Landroid/view/View;)V

    return-void
.end method
