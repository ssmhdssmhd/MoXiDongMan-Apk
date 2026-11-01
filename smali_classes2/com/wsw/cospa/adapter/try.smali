.class public final synthetic Lcom/wsw/cospa/adapter/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

.field public final synthetic new:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/try;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/try;->if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    iput p3, p0, Lcom/wsw/cospa/adapter/try;->for:I

    iput-object p4, p0, Lcom/wsw/cospa/adapter/try;->new:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/wsw/cospa/adapter/try;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/try;->if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    iget v2, p0, Lcom/wsw/cospa/adapter/try;->for:I

    iget-object v3, p0, Lcom/wsw/cospa/adapter/try;->new:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->try(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method
