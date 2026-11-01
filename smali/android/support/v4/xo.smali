.class public final synthetic Landroid/support/v4/xo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xo;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iput-object p2, p0, Landroid/support/v4/xo;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/xo;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iget-object v1, p0, Landroid/support/v4/xo;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->case(Lcom/wsw/cospa/adapter/ComicSourceAdapter;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method
