.class public final synthetic Lcom/wsw/cospa/adapter/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicSourceBean;

.field public final synthetic if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/goto;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/goto;->if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    iput-object p3, p0, Lcom/wsw/cospa/adapter/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/wsw/cospa/adapter/goto;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/goto;->if:Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->else(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/adapter/ComicSourceAdapter$SourceViewHolder;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
